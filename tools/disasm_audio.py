import sys
import argparse

# =====================================================================
# WLA-DX Engine Definitions (Included in output)
# =====================================================================
WLA_CONSTANTS = """
.EQU CMD_SET_TEMPO      $e0
.EQU CMD_SET_VOLUME     $e1
.EQU CMD_END_TRACK      $e2
.EQU CMD_PSG_NOISE      $e3
.EQU CMD_SET_INSTRUMENT $e4
.EQU CMD_GOTO           $e5
.EQU CMD_STOP_ALT       $e6
.EQU CMD_STOP_ALL       $e7
.EQU CMD_CALL           $ea
.EQU CMD_RETURN         $eb
.EQU CMD_LOOP           $ec
.EQU CMD_EFFECT         $ed
.EQU CMD_ADD_TRANSPOSE  $ee
.EQU CMD_STOP_SFX       $ef

.MACRO CHANNEL_HEADER ARGS status, map, tempo, seq_ptr, trans, fx, env, vol
    .DB status, map, tempo
    .DW seq_ptr
    .DB trans, fx, env, vol
.ENDM

.MACRO AUDIO_LOOP ARGS loop_id, count, destination
    .DB CMD_LOOP, loop_id, count
    .DW destination
.ENDM

.MACRO AUDIO_CALL ARGS destination
    .DB CMD_CALL
    .DW destination
.ENDM

.MACRO AUDIO_GOTO ARGS destination
    .DB CMD_GOTO
    .DW destination
.ENDM

.MACRO AUDIO_RETRIGGER ARGS count
\t.DB count
.ENDM

.MACRO AUDIO_RAW_FREQ ARGS freq_high, freq_low, duration
\t.DB freq_high, freq_low, duration
.ENDM

.MACRO AUDIO_RAW_FREQ_SLIDE ARGS freq_high, freq_low, slide_high, slide_low, duration
\t.DB freq_high, freq_low, slide_high, slide_low, duration
.ENDM

.MACRO AUDIO_NOTE_SLIDE ARGS note, slide_target, duration
\t.DB note, slide_target, duration
.ENDM
""".strip()

def get_note_name(val):
    if val == 0x80: return "note.rest"
    idx = val - 0x81
    octave = (idx // 12) + 1
    notes = ["A", "AS", "B", "C", "CS", "D", "DS", "E", "F", "FS", "G", "GS"]
    return f"note.{notes[idx % 12].lower()}{octave}"

def main():
    parser = argparse.ArgumentParser(description="Z80 Audio Engine to WLA-DX Disassembler")
    parser.add_argument("rom_file", help="Path to the binary ROM file")
    parser.add_argument("track_offset", help="Hex offset of the track data (e.g. 7149)")
    parser.add_argument("--rom-base", default="0000", help="Hex base address of the ROM (default: 0000)")
    parser.add_argument("--count", type=int, default=1, help="Number of sequential tracks to parse (default: 1)")
    args = parser.parse_args()

    track_addr = int(args.track_offset, 16)
    rom_base = int(args.rom_base, 16)

    try:
        with open(args.rom_file, 'rb') as f:
            data = f.read()
    except Exception as e:
        print(f"Error reading ROM: {e}")
        sys.exit(1)

    print(WLA_CONSTANTS)

    global_max_pc = track_addr - 1
    pc = track_addr

    for track_idx in range(args.count):
        if track_idx > 0:
            pc = global_max_pc + 1

        start_addr = pc
        queue = []
        labels = set()
        instructions = {}
        visited = set()
        seq_labels = {}

        def read_byte():
            nonlocal pc, global_max_pc
            if (pc - rom_base) >= len(data): return 0
            b = data[pc - rom_base]
            visited.add(pc)
            global_max_pc = max(global_max_pc, pc)
            pc += 1
            return b

        def read_word():
            low = read_byte()
            high = read_byte()
            return low | (high << 8)

        print(f"\naudio_track_{start_addr:04x}:")
        num_channels = read_byte()
        print(f"\t.DB {num_channels}")

        for i in range(num_channels):
            status = read_byte()
            psg_map = read_byte()
            tempo = read_byte()
            seq_ptr = read_word()
            transpose = read_byte()
            fx = read_byte()
            env = read_byte()
            vol = read_byte()

            seq_label = f"@channel_{i + 1}"
            print(f"\tCHANNEL_HEADER ${status:02x}, ${psg_map:02x}, {tempo}, {seq_label}, ${transpose:02x}, ${fx:02x}, ${env:02x}, ${vol:02x}")
            seq_labels[seq_ptr] = seq_label

            queue.append((seq_ptr, status))
            labels.add(seq_ptr)

        while queue:
            start_pc, current_status = queue.pop(0)
            pc = start_pc

            bit3_raw_freq = (current_status & 0x08) != 0
            bit5_slide    = (current_status & 0x20) != 0

            while (pc - rom_base) < len(data):
                if pc in instructions:
                    break

                instr_pc = pc
                b = read_byte()

                if b >= 0xE0:
                    if b == 0xE0:
                        val = read_byte()
                        instructions[instr_pc] = f"\t.DB CMD_SET_TEMPO, ${val:02x}"
                    elif b == 0xE1:
                        val = read_byte()
                        instructions[instr_pc] = f"\t.DB CMD_SET_VOLUME, ${val:02x}"
                    elif b == 0xE2:
                        instructions[instr_pc] = f"\t.DB CMD_END_TRACK"
                        break
                    elif b == 0xE3:
                        val = read_byte()
                        instructions[instr_pc] = f"\t.DB CMD_PSG_NOISE, ${val:02x}"
                    elif b == 0xE4:
                        val = read_byte()
                        instructions[instr_pc] = f"\t.DB CMD_SET_INSTRUMENT, ${val:02x}"
                    elif b == 0xE5:
                        dest = read_word()
                        if dest not in seq_labels: seq_labels[dest] = f"@goto_{dest:04x}"
                        instructions[instr_pc] = f"\tAUDIO_GOTO {seq_labels[dest]}"
                        labels.add(dest)
                        if dest not in visited: queue.append((dest, current_status))
                        break
                    elif b in (0xE6, 0xE7, 0xE8, 0xE9, 0xEF):
                        if b == 0xE6: cmd_name = "CMD_STOP_ALT"
                        elif b == 0xEF: cmd_name = "CMD_STOP_SFX"
                        else: cmd_name = "CMD_STOP_ALL"
                        instructions[instr_pc] = f"\t.DB {cmd_name}"
                        break
                    elif b == 0xEA:
                        dest = read_word()
                        if dest not in seq_labels: seq_labels[dest] = f"@sub_{dest:04x}"
                        instructions[instr_pc] = f"\tAUDIO_CALL {seq_labels[dest]}"
                        labels.add(dest)
                        if dest not in visited: queue.append((dest, current_status))
                    elif b == 0xEB:
                        instructions[instr_pc] = f"\t.DB CMD_RETURN"
                        break
                    elif b == 0xEC:
                        loop_id = read_byte()
                        count = read_byte()
                        dest = read_word()
                        if dest not in seq_labels: seq_labels[dest] = f"@loop_{dest:04x}"
                        instructions[instr_pc] = f"\tAUDIO_LOOP ${loop_id:02x}, ${count:02x}, {seq_labels[dest]}"
                        labels.add(dest)
                        if dest not in visited: queue.append((dest, current_status))
                    elif b == 0xED:
                        val = read_byte()
                        instructions[instr_pc] = f"\t.DB CMD_EFFECT, ${val:02x}"
                    elif b == 0xEE:
                        val = read_byte()
                        instructions[instr_pc] = f"\t.DB CMD_ADD_TRANSPOSE, ${val:02x}"
                    else:
                        instructions[instr_pc] = f"\t.DB ${b:02x} ; ERROR: Unmapped command"

                else:
                    if bit3_raw_freq:
                        freq_high = b
                        freq_low = read_byte()
                        if bit5_slide:
                            slide_high = read_byte()
                            slide_low = read_byte()
                            duration = read_byte()
                            instructions[instr_pc] = f"\tAUDIO_RAW_FREQ_SLIDE ${freq_high:02x}, ${freq_low:02x}, ${slide_high:02x}, ${slide_low:02x}, {duration}"
                        else:
                            duration = read_byte()
                            instructions[instr_pc] = f"\tAUDIO_RAW_FREQ ${freq_high:02x}, ${freq_low:02x}, {duration}"
                    else:
                        if b < 0x80:
                            instructions[instr_pc] = f"\tAUDIO_RETRIGGER {b}"
                        else:
                            note = get_note_name(b)
                            if bit5_slide:
                                slide_target = get_note_name(read_byte())
                                duration = read_byte()
                                instructions[instr_pc] = f"\tAUDIO_NOTE_SLIDE {note}, {slide_target}, {duration}"
                            else:
                                next_offset = pc - rom_base
                                next_b = data[next_offset] if next_offset < len(data) else 0x80
                                if next_b < 0x80:
                                    duration = read_byte()
                                    instructions[instr_pc] = f"\t.DB {note}, {duration}"
                                else:
                                    instructions[instr_pc] = f"\t.DB {note}"

        sorted_pcs = sorted(instructions.keys())
        for addr in sorted_pcs:
            if addr in labels:
                print(f"{seq_labels[addr]}:")
            print(instructions[addr])

if __name__ == "__main__":
    main()

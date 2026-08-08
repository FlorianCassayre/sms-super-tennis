.equ AUDIO_TRACK_BASE $81

.EQU CMD_MASK 0b11100000

.EQU CMD_SET_TEMPO      CMD_MASK | audio_command_routines_t.set_tempo
.EQU CMD_SET_VOLUME     CMD_MASK | audio_command_routines_t.set_volume
.EQU CMD_END_TRACK      CMD_MASK | audio_command_routines_t.end_track
.EQU CMD_PSG_NOISE      CMD_MASK | audio_command_routines_t.psg_noise
.EQU CMD_SET_INSTRUMENT CMD_MASK | audio_command_routines_t.set_instrument
.EQU CMD_GOTO           CMD_MASK | audio_command_routines_t.goto
.EQU CMD_STOP_ALT       CMD_MASK | audio_command_routines_t.stop_alt
.EQU CMD_STOP_ALL       CMD_MASK | audio_command_routines_t.stop_sfx_1
.EQU CMD_CALL           CMD_MASK | audio_command_routines_t.stop_sfx_2
.EQU CMD_RETURN         CMD_MASK | audio_command_routines_t.stop_sfx_3
.EQU CMD_LOOP           CMD_MASK | audio_command_routines_t.loop
.EQU CMD_EFFECT         CMD_MASK | audio_command_routines_t.set_effect
.EQU CMD_ADD_TRANSPOSE  CMD_MASK | audio_command_routines_t.add_transpose
.EQU CMD_STOP_SFX       CMD_MASK | audio_command_routines_t.stop_sfx

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
	.DB count
.ENDM

.MACRO AUDIO_RAW_FREQ ARGS freq_high, freq_low, duration
	.DB freq_high, freq_low, duration
.ENDM

.MACRO AUDIO_RAW_FREQ_SLIDE ARGS freq_high, freq_low, slide_high, slide_low, duration
	.DB freq_high, freq_low, slide_high, slide_low, duration
.ENDM

.MACRO AUDIO_NOTE_SLIDE ARGS note, slide_target, duration
	.DB note, slide_target, duration
.ENDM

audio_command_routine_stop_alt:
	ld a,080h
	ld (psg_engine.maybe_end_track),a
	jp audio_command_routine_end_track

audio_command_routine_add_transpose:
	ld a,(de)
	add a,(ix + audio_psg_channel_t.transpose_offset)
	ld (ix + audio_psg_channel_t.transpose_offset),a
	ret

audio_command_routine_set_tempo:
	ld a,(de)
	ld (ix + audio_psg_channel_t.note_length_multiplier),a
	ret

audio_command_routine_set_volume:
	ld a,(de)
	ld (ix + audio_psg_channel_t.base_volume),a
	ret

audio_command_routine_psg_noise:
	ld a,(de)
	or 0e0h
	push af
	call sub_audio_psg_write
	pop af
	or 0fch
	inc a
	jr nz,l7d3ah
	res 6,(ix + audio_psg_channel_t.status_flags)
	ret

l7d3ah:
	set 6,(ix + audio_psg_channel_t.status_flags)
	ret

audio_command_routine_set_instrument:
	ld a,(de)
	ld (ix + audio_psg_channel_t.envelope_id_pointer),a
	ret

audio_command_routine_set_effect:
	ld a,(de)
	ld (ix + audio_psg_channel_t.effect_timer),a
	ret

audio_command_routine_goto:
	ex de,hl
	ld e,(hl)
	inc hl
	ld d,(hl)
	dec de
	ret

audio_command_routine_stop_sfx:
ld hl,psg_channel.1
	res 2,(hl)
	ld hl,psg_channel.2
	res 2,(hl)
	ld hl,psg_channel.3
	res 2,(hl)

audio_command_routine_end_track:
	xor a
	ld (psg_engine.priority_flag),a
	ld (ix + audio_psg_channel_t.status_flags),a
	call sub_audio_channel_mute
	pop hl
	pop hl
	ret

audio_command_routine_call:
	ld a,(de)
	ld c,a
	inc de
	ld a,(de)
	ld b,a
	push bc
	push ix

l7d73h:
	pop hl
	dec (ix + audio_psg_channel_t.call_stack_ptr)
	ld c,(ix + audio_psg_channel_t.call_stack_ptr)
	dec (ix + audio_psg_channel_t.call_stack_ptr)
	ld b,000h
	add hl,bc
	ld (hl),d
	dec hl
	ld (hl),e
	pop de
	dec de
	ret

audio_command_routine_return:
	push ix
	pop hl
	ld c,(ix + audio_psg_channel_t.call_stack_ptr)
	ld b,000h
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc (ix + audio_psg_channel_t.call_stack_ptr)
	inc (ix + audio_psg_channel_t.call_stack_ptr)
	ret

audio_command_routine_loop:
	ld a,(de)
	inc de
	add a,017h
	ld c,a
	ld b,000h
	push ix
	pop hl
	add hl,bc
	ld a,(hl)
	or a
	jr nz,l7daah
	ld a,(de)
	ld (hl),a

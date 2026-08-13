audio_command_routine_stop_alt:
	ld a,080h		;7d0e
	ld (psg_engine.maybe_end_track),a		;7d10
	jp audio_command_routine_end_track		;7d13

audio_command_routine_add_transpose:
	ld a,(de)			;7d16
	add a,(ix + audio_psg_channel_t.transpose_offset)		;7d17
	ld (ix + audio_psg_channel_t.transpose_offset),a		;7d1a
	ret			;7d1d

audio_command_routine_set_tempo:
	ld a,(de)			;7d1e
	ld (ix + audio_psg_channel_t.note_length_multiplier),a		;7d1f
	ret			;7d22

audio_command_routine_set_volume:
	ld a,(de)			;7d23
	ld (ix + audio_psg_channel_t.base_volume),a		;7d24
	ret			;7d27

audio_command_routine_psg_noise:
	ld a,(de)			;7d28
	or 0e0h		;7d29
	push af			;7d2b
	call sub_audio_psg_write		;7d2c
	pop af			;7d2f
	or 0fch		;7d30
	inc a			;7d32
	jr nz,l7d3ah		;7d33
	res 6,(ix + audio_psg_channel_t.status_flags)		;7d35
	ret			;7d39

l7d3ah:
	set 6,(ix + audio_psg_channel_t.status_flags)		;7d3a
	ret			;7d3e

audio_command_routine_set_instrument:
	ld a,(de)			;7d3f
	ld (ix + audio_psg_channel_t.envelope_id_pointer),a		;7d40
	ret			;7d43

audio_command_routine_set_effect:
	ld a,(de)			;7d44
	ld (ix + audio_psg_channel_t.effect_timer),a		;7d45
	ret			;7d48

audio_command_routine_goto:
	ex de,hl			;7d49
	ld e,(hl)			;7d4a
	inc hl			;7d4b
	ld d,(hl)			;7d4c
	dec de			;7d4d
	ret			;7d4e

audio_command_routine_stop_sfx:
ld hl,psg_channel.1		;7d4f
	res 2,(hl)		;7d52
	ld hl,psg_channel.2		;7d54
	res 2,(hl)		;7d57
	ld hl,psg_channel.3		;7d59
	res 2,(hl)		;7d5c

audio_command_routine_end_track:
	xor a			;7d5e
	ld (psg_engine.priority_flag),a		;7d5f
	ld (ix + audio_psg_channel_t.status_flags),a		;7d62
	call sub_7db1h		;7d65
	pop hl			;7d68
	pop hl			;7d69
	ret			;7d6a

audio_command_routine_call:
	ld a,(de)			;7d6b
	ld c,a			;7d6c
	inc de			;7d6d
	ld a,(de)			;7d6e
	ld b,a			;7d6f
	push bc			;7d70
	push ix		;7d71

l7d73h:
	pop hl			;7d73
	dec (ix + audio_psg_channel_t.call_stack_ptr)		;7d74
	ld c,(ix + audio_psg_channel_t.call_stack_ptr)		;7d77
	dec (ix + audio_psg_channel_t.call_stack_ptr)		;7d7a
	ld b,000h		;7d7d
	add hl,bc			;7d7f
	ld (hl),d			;7d80
	dec hl			;7d81
	ld (hl),e			;7d82
	pop de			;7d83
	dec de			;7d84
	ret			;7d85

audio_command_routine_return:
	push ix		;7d86
	pop hl			;7d88
	ld c,(ix + audio_psg_channel_t.call_stack_ptr)		;7d89
	ld b,000h		;7d8c
	add hl,bc			;7d8e
	ld e,(hl)			;7d8f
	inc hl			;7d90
	ld d,(hl)			;7d91
	inc (ix + audio_psg_channel_t.call_stack_ptr)		;7d92
	inc (ix + audio_psg_channel_t.call_stack_ptr)		;7d95
	ret			;7d98

audio_command_routine_loop:
	ld a,(de)			;7d99
	inc de			;7d9a
	add a,017h		;7d9b
	ld c,a			;7d9d
	ld b,000h		;7d9e
	push ix		;7da0
	pop hl			;7da2
	add hl,bc			;7da3
	ld a,(hl)			;7da4
	or a			;7da5
	jr nz,l7daah		;7da6
	ld a,(de)			;7da8
	ld (hl),a			;7da9

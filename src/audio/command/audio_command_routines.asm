audio_command_routine_stop_alt:
	ld a,080h		; 3e 80 ;7d0e
	ld (psg_engine._unknown),a		; 32 04 de ;7d10
	jp audio_command_routine_end_track		; c3 5e 7d ;7d13

audio_command_routine_add_transpose:
	ld a,(de)			; 1a ;7d16
	add a,(ix + audio_psg_channel_t.transpose_offset)		; dd 86 05 ;7d17
	ld (ix + audio_psg_channel_t.transpose_offset),a		; dd 77 05 ;7d1a
	ret			; c9 ;7d1d

audio_command_routine_set_tempo:
	ld a,(de)			; 1a ;7d1e
	ld (ix + audio_psg_channel_t.note_length_multiplier),a		; dd 77 02 ;7d1f
	ret			; c9 ;7d22

audio_command_routine_set_volume:
	ld a,(de)			; 1a ;7d23
	ld (ix + audio_psg_channel_t.base_volume),a		; dd 77 08 ;7d24
	ret			; c9 ;7d27

audio_command_routine_psg_noise:
	ld a,(de)			; 1a ;7d28
	or 0e0h		; f6 e0 ;7d29
	push af			; f5 ;7d2b
	call sub_audio_psg_write		; cd c0 7d ;7d2c
	pop af			; f1 ;7d2f
	or 0fch		; f6 fc ;7d30
	inc a			; 3c ;7d32
	jr nz,l7d3ah		; 20 05 ;7d33
	res 6,(ix + audio_psg_channel_t.status_flags)		; dd cb 00 b6 ;7d35
	ret			; c9 ;7d39

l7d3ah:
	set 6,(ix + audio_psg_channel_t.status_flags)		; dd cb 00 f6 ;7d3a
	ret			; c9 ;7d3e

audio_command_routine_set_instrument:
	ld a,(de)			; 1a ;7d3f
	ld (ix + audio_psg_channel_t.envelope_id_pointer),a		; dd 77 07 ;7d40
	ret			; c9 ;7d43

audio_command_routine_set_effect:
	ld a,(de)			; 1a ;7d44
	ld (ix + audio_psg_channel_t.effect_timer),a		; dd 77 06 ;7d45
	ret			; c9 ;7d48

audio_command_routine_goto:
	ex de,hl			; eb ;7d49
	ld e,(hl)			; 5e ;7d4a
	inc hl			; 23 ;7d4b
	ld d,(hl)			; 56 ;7d4c
	dec de			; 1b ;7d4d
	ret			; c9 ;7d4e

audio_command_routine_stop_sfx:
ld hl,psg_channel.1		; 21 05 de ;7d4f
	res 2,(hl)		; cb 96 ;7d52
	ld hl,psg_channel.2		; 21 25 de ;7d54
	res 2,(hl)		; cb 96 ;7d57
	ld hl,psg_channel.3		; 21 45 de ;7d59
	res 2,(hl)		; cb 96 ;7d5c

audio_command_routine_end_track:
	xor a			; af ;7d5e
	ld (psg_engine.priority_flag),a		; 32 03 de ;7d5f
	ld (ix + audio_psg_channel_t.status_flags),a		; dd 77 00 ;7d62
	call sub_7db1h		; cd b1 7d ;7d65
	pop hl			; e1 ;7d68
	pop hl			; e1 ;7d69
	ret			; c9 ;7d6a

audio_command_routine_call:
	ld a,(de)			; 1a ;7d6b
	ld c,a			; 4f ;7d6c
	inc de			; 13 ;7d6d
	ld a,(de)			; 1a ;7d6e
	ld b,a			; 47 ;7d6f
	push bc			; c5 ;7d70
	push ix		; dd e5 ;7d71

l7d73h:
	pop hl			; e1 ;7d73
	dec (ix + audio_psg_channel_t.call_stack_ptr)		; dd 35 09 ;7d74
	ld c,(ix + audio_psg_channel_t.call_stack_ptr)		; dd 4e 09 ;7d77
	dec (ix + audio_psg_channel_t.call_stack_ptr)		; dd 35 09 ;7d7a
	ld b,000h		; 06 00 ;7d7d
	add hl,bc			; 09 ;7d7f
	ld (hl),d			; 72 ;7d80
	dec hl			; 2b ;7d81
	ld (hl),e			; 73 ;7d82
	pop de			; d1 ;7d83
	dec de			; 1b ;7d84
	ret			; c9 ;7d85

audio_command_routine_return:
	push ix		; dd e5 ;7d86
	pop hl			; e1 ;7d88
	ld c,(ix + audio_psg_channel_t.call_stack_ptr)		; dd 4e 09 ;7d89
	ld b,000h		; 06 00 ;7d8c
	add hl,bc			; 09 ;7d8e
	ld e,(hl)			; 5e ;7d8f
	inc hl			; 23 ;7d90
	ld d,(hl)			; 56 ;7d91
	inc (ix + audio_psg_channel_t.call_stack_ptr)		; dd 34 09 ;7d92
	inc (ix + audio_psg_channel_t.call_stack_ptr)		; dd 34 09 ;7d95
	ret			; c9 ;7d98

audio_command_routine_loop:
	ld a,(de)			; 1a ;7d99
	inc de			; 13 ;7d9a
	add a,017h		; c6 17 ;7d9b
	ld c,a			; 4f ;7d9d
	ld b,000h		; 06 00 ;7d9e
	push ix		; dd e5 ;7da0
	pop hl			; e1 ;7da2
	add hl,bc			; 09 ;7da3
	ld a,(hl)			; 7e ;7da4
	or a			; b7 ;7da5
	jr nz,l7daah		; 20 02 ;7da6
	ld a,(de)			; 1a ;7da8
	ld (hl),a			; 77 ;7da9

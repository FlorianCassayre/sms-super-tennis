sub_audio_track_parse_data:
	ld a,(de)			;7c49
	inc de			;7c4a
	cp 0e0h		;7c4b
	jp nc,l7cd7h		;7c4d
	bit 3,(ix + audio_psg_channel_t.status_flags)		;7c50
	jr nz,l7cb6h		;7c54
	or a			;7c56
	jp p,l7c92h		;7c57
	sub 080h		;7c5a
	jr z,l7c61h		;7c5c
	add a,(ix + audio_psg_channel_t.transpose_offset)		;7c5e
l7c61h:
	ld hl,table_note_frequencies		;7c61
	ld c,a			;7c64
	ld b,000h		;7c65
	add hl,bc			;7c67
	add hl,bc			;7c68
	ld a,(hl)			;7c69
	ld (ix + audio_psg_channel_t.base_frequency),a		;7c6a
	inc hl			;7c6d
	ld a,(hl)			;7c6e
	ld (ix + audio_psg_channel_t.base_frequency + 1),a		;7c6f
	bit 5,(ix + audio_psg_channel_t.status_flags)		;7c72
	jr z,l7cd0h		;7c76
	ld a,(de)			;7c78
	inc de			;7c79
	sub 080h		;7c7a
	add a,(ix + audio_psg_channel_t.transpose_offset)		;7c7c
	ld hl,table_note_frequencies		;7c7f
	ld c,a			;7c82
	ld b,000h		;7c83
	add hl,bc			;7c85
	add hl,bc			;7c86
	ld a,(hl)			;7c87
	ld (ix + audio_psg_channel_t.slide_target_frequency_low),a		;7c88
	inc hl			;7c8b
	ld a,(hl)			;7c8c
	ld (ix + audio_psg_channel_t.slide_target_frequency_high),a		;7c8d
l7c90h:
	ld a,(de)			;7c90
l7c91h:
	inc de			;7c91
l7c92h:
	push de			;7c92
	ld h,a			;7c93
	ld e,(ix + audio_psg_channel_t.note_length_multiplier)		;7c94
	call sub_mul_h_e		;7c97
	pop de			;7c9a
	ld (ix + audio_psg_channel_t.target_duration),l		;7c9b
	ld (ix + audio_psg_channel_t.target_duration + 1),h		;7c9e
l7ca1h:
	xor a			;7ca1
	ld (ix + audio_psg_channel_t.volume_envelope_index),a		;7ca2
	ld (ix + audio_psg_channel_t.pitch_envelope_index),a		;7ca5
	ld (ix + audio_psg_channel_t.track_data_pointer),e		;7ca8
	ld (ix + audio_psg_channel_t.track_data_pointer + 1),d		;7cab
	xor a			;7cae
	ld (ix + audio_psg_channel_t.current_tick),a		;7caf
	ld (ix + audio_psg_channel_t.current_tick + 1),a		;7cb2
	ret			;7cb5
l7cb6h:
	ld (ix + audio_psg_channel_t.base_frequency + 1),a		;7cb6
	ld a,(de)			;7cb9
	inc de			;7cba
	ld (ix + audio_psg_channel_t.base_frequency),a		;7cbb
	bit 5,(ix + audio_psg_channel_t.status_flags)		;7cbe
	jr z,l7c90h		;7cc2
	ld a,(de)			;7cc4
	inc de			;7cc5
	ld (ix + audio_psg_channel_t.slide_target_frequency_high),a		;7cc6
	ld a,(de)			;7cc9
	inc de			;7cca
	ld (ix + audio_psg_channel_t.slide_target_frequency_low),a		;7ccb
	jr l7c90h		;7cce
l7cd0h:
	ld a,(de)			;7cd0
	or a			;7cd1
	jp p,l7c91h		;7cd2
	jr l7ca1h		;7cd5
l7cd7h:
	ld hl,l7ceah		;7cd7
	push hl			;7cda
	and 01fh		;7cdb
	ld hl,audio_command_routine		;7cdd
	ld c,a			;7ce0
	ld b,000h		;7ce1
	add hl,bc			;7ce3
	add hl,bc			;7ce4
	ld a,(hl)			;7ce5
	inc hl			;7ce6
	ld h,(hl)			;7ce7
	ld l,a			;7ce8
	jp (hl)			;7ce9

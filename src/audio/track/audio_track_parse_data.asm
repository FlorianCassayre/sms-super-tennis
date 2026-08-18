sub_audio_track_parse_data:
	ld a,(de)
	inc de
	cp 0e0h
	jp nc,l7cd7h
	bit 3,(ix + audio_psg_channel_t.status_flags)
	jr nz,l7cb6h
	or a
	jp p,l7c92h
	sub 080h
	jr z,l7c61h
	add a,(ix + audio_psg_channel_t.transpose_offset)
l7c61h:
	ld hl,table_note_frequencies
	ld c,a
	ld b,000h
	add hl,bc
	add hl,bc
	ld a,(hl)
	ld (ix + audio_psg_channel_t.base_frequency),a
	inc hl
	ld a,(hl)
	ld (ix + audio_psg_channel_t.base_frequency + 1),a
	bit 5,(ix + audio_psg_channel_t.status_flags)
	jr z,l7cd0h
	ld a,(de)
	inc de
	sub 080h
	add a,(ix + audio_psg_channel_t.transpose_offset)
	ld hl,table_note_frequencies
	ld c,a
	ld b,000h
	add hl,bc
	add hl,bc
	ld a,(hl)
	ld (ix + audio_psg_channel_t.slide_target_frequency_low),a
	inc hl
	ld a,(hl)
	ld (ix + audio_psg_channel_t.slide_target_frequency_high),a
l7c90h:
	ld a,(de)
l7c91h:
	inc de
l7c92h:
	push de
	ld h,a
	ld e,(ix + audio_psg_channel_t.note_length_multiplier)
	call sub_mul_h_e
	pop de
	ld (ix + audio_psg_channel_t.target_duration),l
	ld (ix + audio_psg_channel_t.target_duration + 1),h
l7ca1h:
	xor a
	ld (ix + audio_psg_channel_t.volume_envelope_index),a
	ld (ix + audio_psg_channel_t.pitch_envelope_index),a
	ld (ix + audio_psg_channel_t.track_data_pointer),e
	ld (ix + audio_psg_channel_t.track_data_pointer + 1),d
	xor a
	ld (ix + audio_psg_channel_t.current_tick),a
	ld (ix + audio_psg_channel_t.current_tick + 1),a
	ret
l7cb6h:
	ld (ix + audio_psg_channel_t.base_frequency + 1),a
	ld a,(de)
	inc de
	ld (ix + audio_psg_channel_t.base_frequency),a
	bit 5,(ix + audio_psg_channel_t.status_flags)
	jr z,l7c90h
	ld a,(de)
	inc de
	ld (ix + audio_psg_channel_t.slide_target_frequency_high),a
	ld a,(de)
	inc de
	ld (ix + audio_psg_channel_t.slide_target_frequency_low),a
	jr l7c90h
l7cd0h:
	ld a,(de)
	or a
	jp p,l7c91h
	jr l7ca1h
l7cd7h:
	ld hl,l7ceah
	push hl
	and 01fh
	ld hl,audio_command_routine
	ld c,a
	ld b,000h
	add hl,bc
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)

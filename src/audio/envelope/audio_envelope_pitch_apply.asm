-:
	ld (ix + audio_psg_channel_t.pitch_envelope_index),a
sub_audio_envelope_pitch_apply:
	push hl
	ld a,(ix + audio_psg_channel_t.pitch_envelope_index)
	srl a
	push af
	ld c,a
	ld b,000h
	add hl,bc
	pop af
	ld a,(hl)
	pop hl
	jr c,@apply_pitch_offset
	rrca
	rrca
	rrca
	rrca
	or a
	jp z,-
	cp 010h
	jr nz,@apply_pitch_offset
	dec (ix + audio_psg_channel_t.pitch_envelope_index)
	jr sub_audio_envelope_pitch_apply
	cp 020h
	ret z
@apply_pitch_offset:
	inc (ix + audio_psg_channel_t.pitch_envelope_index)
	cpl
	and 00fh
	ld l,a
	ld h,000h
	ex de,hl
	add hl,de
	ld (ix + audio_psg_channel_t.final_frequency),l
	ld (ix + audio_psg_channel_t.final_frequency + 1),h
	ret

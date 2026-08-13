-:
	ld (ix + audio_psg_channel_t.pitch_envelope_index),a		;7c0a
sub_audio_envelope_pitch_apply:
	push hl			;7c0d
	ld a,(ix + audio_psg_channel_t.pitch_envelope_index)		;7c0e
	srl a		;7c11
	push af			;7c13
	ld c,a			;7c14
	ld b,000h		;7c15
	add hl,bc			;7c17
	pop af			;7c18
	ld a,(hl)			;7c19
	pop hl			;7c1a
	jr c,@apply_pitch_offset		;7c1b
	rrca			;7c1d
	rrca			;7c1e
	rrca			;7c1f
	rrca			;7c20
	or a			;7c21
	jp z,-		;7c22
	cp 010h		;7c25
	jr nz,@apply_pitch_offset		;7c27
	dec (ix + audio_psg_channel_t.pitch_envelope_index)		;7c29
	jr sub_audio_envelope_pitch_apply		;7c2c
	cp 020h		;7c2e
	ret z			;7c30
@apply_pitch_offset:
	inc (ix + audio_psg_channel_t.pitch_envelope_index)		;7c31
	cpl			;7c34
	and 00fh		;7c35
	ld l,a			;7c37
	ld h,000h		;7c38
	ex de,hl			;7c3a
	add hl,de			;7c3b
	ld (ix + audio_psg_channel_t.final_frequency),l		;7c3c
	ld (ix + audio_psg_channel_t.final_frequency + 1),h		;7c3f
	ret			;7c42

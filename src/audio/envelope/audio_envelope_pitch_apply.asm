-:
	ld (ix + audio_psg_channel_t.pitch_envelope_index),a		; dd 77 0f ;7c0a
sub_audio_envelope_pitch_apply:
	push hl			; e5 ;7c0d
	ld a,(ix + audio_psg_channel_t.pitch_envelope_index)		; dd 7e 0f ;7c0e
	srl a		; cb 3f ;7c11
	push af			; f5 ;7c13
	ld c,a			; 4f ;7c14
	ld b,000h		; 06 00 ;7c15
	add hl,bc			; 09 ;7c17
	pop af			; f1 ;7c18
	ld a,(hl)			; 7e ;7c19
	pop hl			; e1 ;7c1a
	jr c,@apply_pitch_offset		; 38 14 ;7c1b
	rrca			; 0f ;7c1d
	rrca			; 0f ;7c1e
	rrca			; 0f ;7c1f
	rrca			; 0f ;7c20
	or a			; b7 ;7c21
	jp z,-		; ca 0a 7c ;7c22
	cp 010h		; fe 10 ;7c25
	jr nz,@apply_pitch_offset		; 20 08 ;7c27
	dec (ix + audio_psg_channel_t.pitch_envelope_index)		; dd 35 0f ;7c29
	jr sub_audio_envelope_pitch_apply		; 18 df ;7c2c
	cp 020h		; fe 20 ;7c2e
	ret z			; c8 ;7c30
@apply_pitch_offset:
	inc (ix + audio_psg_channel_t.pitch_envelope_index)		; dd 34 0f ;7c31
	cpl			; 2f ;7c34
	and 00fh		; e6 0f ;7c35
	ld l,a			; 6f ;7c37
	ld h,000h		; 26 00 ;7c38
	ex de,hl			; eb ;7c3a
	add hl,de			; 19 ;7c3b
	ld (ix + audio_psg_channel_t.final_frequency),l		; dd 75 12 ;7c3c
	ld (ix + audio_psg_channel_t.final_frequency + 1),h		; dd 74 13 ;7c3f
	ret			; c9 ;7c42

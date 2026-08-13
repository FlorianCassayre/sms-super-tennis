-:
	ld (ix + audio_psg_channel_t.volume_envelope_index),a		;7bd0
sub_audio_envelope_volume_apply:
	push hl			;7bd3
	ld a,(ix + audio_psg_channel_t.volume_envelope_index)		;7bd4
	srl a		;7bd7
	push af			;7bd9
	ld c,a			;7bda
	ld b,000h		;7bdb
	add hl,bc			;7bdd
	pop af			;7bde
	ld a,(hl)			;7bdf
	pop hl			;7be0
	jr c,l7bf7h		;7be1
	rrca			;7be3
	rrca			;7be4
	rrca			;7be5
	rrca			;7be6
	or a			;7be7
	jr z,-		;7be8
	cp 010h		;7bea
	jr nz,l7bf3h		;7bec
	dec (ix + audio_psg_channel_t.volume_envelope_index)		;7bee
	jr sub_audio_envelope_volume_apply		;7bf1
l7bf3h:
	cp 020h		;7bf3
	jr z,l7c02h		;7bf5
l7bf7h:
	inc (ix + audio_psg_channel_t.volume_envelope_index)		;7bf7
	or 0f0h		;7bfa
	add a,(ix + audio_psg_channel_t.base_volume)		;7bfc
	inc a			;7bff
	jr c,l7c03h		;7c00
l7c02h:
	xor a			;7c02
l7c03h:
	cpl			;7c03
	and 00fh		;7c04
	ld (ix + audio_psg_channel_t.current_volume),a		;7c06
	ret			;7c09

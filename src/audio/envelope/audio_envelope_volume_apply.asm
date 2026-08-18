-:
	ld (ix + audio_psg_channel_t.volume_envelope_index),a
sub_audio_envelope_volume_apply:
	push hl
	ld a,(ix + audio_psg_channel_t.volume_envelope_index)
	srl a
	push af
	ld c,a
	ld b,000h
	add hl,bc
	pop af
	ld a,(hl)
	pop hl
	jr c,l7bf7h
	rrca
	rrca
	rrca
	rrca
	or a
	jr z,-
	cp 010h
	jr nz,l7bf3h
	dec (ix + audio_psg_channel_t.volume_envelope_index)
	jr sub_audio_envelope_volume_apply
l7bf3h:
	cp 020h
	jr z,l7c02h
l7bf7h:
	inc (ix + audio_psg_channel_t.volume_envelope_index)
	or 0f0h
	add a,(ix + audio_psg_channel_t.base_volume)
	inc a
	jr c,l7c03h
l7c02h:
	xor a
l7c03h:
	cpl
	and 00fh
	ld (ix + audio_psg_channel_t.current_volume),a
	ret

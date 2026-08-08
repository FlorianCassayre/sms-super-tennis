-:
	ld (ix + psg_channel_t.volume_envelope_index),a		; dd 77 0e ;7bd0
sub_audio_envelope_volume_apply:
	push hl			; e5 ;7bd3
	ld a,(ix + psg_channel_t.volume_envelope_index)		; dd 7e 0e ;7bd4
	srl a		; cb 3f ;7bd7
	push af			; f5 ;7bd9
	ld c,a			; 4f ;7bda
	ld b,000h		; 06 00 ;7bdb
	add hl,bc			; 09 ;7bdd
	pop af			; f1 ;7bde
	ld a,(hl)			; 7e ;7bdf
	pop hl			; e1 ;7be0
	jr c,l7bf7h		; 38 14 ;7be1
	rrca			; 0f ;7be3
	rrca			; 0f ;7be4
	rrca			; 0f ;7be5
	rrca			; 0f ;7be6
	or a			; b7 ;7be7
	jr z,-		; 28 e6 ;7be8
	cp 010h		; fe 10 ;7bea
	jr nz,l7bf3h		; 20 05 ;7bec
	dec (ix + psg_channel_t.volume_envelope_index)		; dd 35 0e ;7bee
	jr sub_audio_envelope_volume_apply		; 18 e0 ;7bf1
l7bf3h:
	cp 020h		; fe 20 ;7bf3
	jr z,l7c02h		; 28 0b ;7bf5
l7bf7h:
	inc (ix + psg_channel_t.volume_envelope_index)		; dd 34 0e ;7bf7
	or 0f0h		; f6 f0 ;7bfa
	add a,(ix + psg_channel_t.base_volume)		; dd 86 08 ;7bfc
	inc a			; 3c ;7bff
	jr c,l7c03h		; 38 01 ;7c00
l7c02h:
	xor a			; af ;7c02
l7c03h:
	cpl			; 2f ;7c03
	and 00fh		; e6 0f ;7c04
	ld (ix + psg_channel_t.current_volume),a		; dd 77 16 ;7c06
	ret			; c9 ;7c09

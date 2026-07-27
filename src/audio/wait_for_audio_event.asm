sub_wait_for_audio_event:
	ld a,(0c004h)		; 3a 04 c0 ;036a
	or a			; b7 ;036d
	call nz,sub_wait_for_audio_idle		; c4 7b 03 ;036e
	ld hl,0c001h		; 21 01 c0 ;0371
	ld a,(hl)			; 7e ;0374
	or a			; b7 ;0375
	jr z,sub_wait_for_audio_event		; 28 f2 ;0376
	ld (hl),000h		; 36 00 ;0378
	ret			; c9 ;037a

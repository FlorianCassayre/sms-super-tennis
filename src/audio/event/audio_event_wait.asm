sub_audio_event_wait:
	ld a,(0c004h)		; 3a 04 c0 ;036a
	or a			; b7 ;036d
	call nz,sub_audio_idle_wait		; c4 7b 03 ;036e
	ld hl,0c001h		; 21 01 c0 ;0371
	ld a,(hl)			; 7e ;0374
	or a			; b7 ;0375
	jr z,sub_audio_event_wait		; 28 f2 ;0376
	ld (hl),000h		; 36 00 ;0378
	ret			; c9 ;037a

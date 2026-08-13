sub_audio_event_wait:
	ld a,(0c004h)		;036a
	or a			;036d
	call nz,sub_audio_idle_wait		;036e
	ld hl,0c001h		;0371
	ld a,(hl)			;0374
	or a			;0375
	jr z,sub_audio_event_wait		;0376
	ld (hl),000h		;0378
	ret			;037a

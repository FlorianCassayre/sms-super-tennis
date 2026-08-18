sub_audio_event_wait:
	ld a,(0c004h)
	or a
	call nz,sub_audio_idle_wait
	ld hl,0c001h
	ld a,(hl)
	or a
	jr z,sub_audio_event_wait
	ld (hl),000h
	ret

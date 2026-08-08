sub_audio_idle_wait:
	call sub_audio_silence		; cd d7 7d ;037b
-:
	ld a,(0c004h)		; 3a 04 c0 ;037e
	or a			; b7 ;0381
	jr nz,-		; 20 fa ;0382
	ret			; c9 ;0384

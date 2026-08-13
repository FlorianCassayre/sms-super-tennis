sub_audio_idle_wait:
	call sub_audio_silence		;037b
-:
	ld a,(0c004h)		;037e
	or a			;0381
	jr nz,-		;0382
	ret			;0384

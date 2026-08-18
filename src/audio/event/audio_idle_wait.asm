sub_audio_idle_wait:
	call sub_audio_silence
-:
	ld a,(0c004h)
	or a
	jr nz,-
	ret

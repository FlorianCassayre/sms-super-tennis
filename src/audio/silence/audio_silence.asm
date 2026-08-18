sub_audio_silence:
	exx
	ld hl,audio_silence_data
	ld c,PORT_PSG
	ld b,4
	otir
	exx
	ret

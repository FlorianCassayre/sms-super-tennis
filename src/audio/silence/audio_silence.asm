sub_audio_silence:
	exx			;7dd7
	ld hl,audio_silence_data		;7dd8
	ld c,PORT_PSG		;7ddb
	ld b,4		;7ddd
	otir		;7ddf
	exx			;7de1
	ret			;7de2

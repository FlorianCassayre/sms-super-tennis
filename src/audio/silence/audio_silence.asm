sub_audio_silence:
	exx			; d9 ;7dd7
	ld hl,audio_silence_data		; 21 ee 7d ;7dd8
	ld c,PORT_PSG		; 0e 7f ;7ddb
	ld b,4		; 06 04 ;7ddd
	otir		; ed b3 ;7ddf
	exx			; d9 ;7de1
	ret			; c9 ;7de2

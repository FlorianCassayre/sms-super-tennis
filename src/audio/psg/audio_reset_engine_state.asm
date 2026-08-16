l7dc8h:
	exx			;7dc8
	ld hl,psg_engine.state		;7dc9
	ld de,psg_engine.tempo_countdown		;7dcc
	ld bc,000dfh		;7dcf
	ld (hl),000h		;7dd2
	ldir		;7dd4
	exx			;7dd6
	.INCLUDE "audio/silence/audio_silence.asm"

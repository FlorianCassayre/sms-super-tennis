l7dc8h:
	exx
	ld hl,psg_engine.state
	ld de,psg_engine.tempo_countdown
	ld bc,000dfh
	ld (hl),000h
	ldir
	exx
	.INCLUDE "audio/silence/audio_silence.asm"

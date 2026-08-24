l7dc8h:
	exx
	ld hl,psg_engine.state
	ld de,psg_engine.state + 1
	ld bc,_sizeof_audio_psg_channel_t * PSG_CHANNELS - 1
	ld (hl),$00
	ldir
	exx
	.INCLUDE "audio/silence/audio_silence.asm"

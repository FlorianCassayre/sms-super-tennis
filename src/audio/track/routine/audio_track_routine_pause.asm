sub_audio_track_routine_pause:
	ld hl,psg_engine.state		;7a3f
	ld (hl),c			;7a42
	inc hl			;7a43
	ld (hl),b			;7a44
	xor a			;7a45
	ld (psg_channel.4),a		;7a46
	dec a			;7a49
	out (O_PSG_ALT),a		;7a4a
	jp l7ad7h		;7a4c

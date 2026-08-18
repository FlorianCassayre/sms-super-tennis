sub_audio_track_routine_pause:
	ld hl,psg_engine.state
	ld (hl),c
	inc hl
	ld (hl),b
	xor a
	ld (psg_channel.4),a
	dec a
	out (O_PSG_ALT),a
	jp l7ad7h

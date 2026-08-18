sub_audio_track_routine_stop_all:
	xor a
	ld (psg_channel.2),a
	ld (psg_channel.3),a
	ld a,0bfh
	out (O_PSG_ALT),a
	ld a,0dfh
	out (O_PSG_ALT),a
	jp l7ad7h

sub_audio_track_routine_stop_all:
	xor a			;7a4f
	ld (psg_channel.2),a		;7a50
	ld (psg_channel.3),a		;7a53
	ld a,0bfh		;7a56
	out (O_PSG_ALT),a		;7a58
	ld a,0dfh		;7a5a
	out (O_PSG_ALT),a		;7a5c
	jp l7ad7h		;7a5e

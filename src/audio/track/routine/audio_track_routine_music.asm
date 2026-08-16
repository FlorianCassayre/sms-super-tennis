sub_audio_track_routine_music:
	call l7dc8h		;7a61
	ld a,080h		;7a64
	ld (psg_engine.priority_flag),a		;7a66
	ld de,psg_channel.1		;7a69
	jr l7aafh		;7a6c

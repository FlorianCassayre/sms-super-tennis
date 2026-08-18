sub_audio_track_routine_music:
	call l7dc8h
	ld a,080h
	ld (psg_engine.priority_flag),a
	ld de,psg_channel.1
	jr l7aafh

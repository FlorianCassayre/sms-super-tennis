sub_audio_track_routine_sound_group_b:
	or a
	jr nz,l7ad7h
	ld (psg_engine.priority_flag),a
	ld de,psg_channel.5
	.IFDEF _J
		ld a, $df
		out (O_PSG_ALT), a
	.ENDIF
	ld hl,psg_channel.1
	set 2,(hl)
	ld hl,psg_channel.2
	set 2,(hl)
	ld hl,psg_channel.3
	set 2,(hl)
	jp l7aafh

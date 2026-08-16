sub_audio_track_routine_sound_group_b:
	or a			;7a72
	jr nz,l7ad7h		;7a73
	ld (psg_engine.priority_flag),a		;7a75
	ld de,psg_channel.5		;7a78
	.IFDEF _J
		ld a, $df
		out (O_PSG_ALT), a
	.ENDIF
	ld hl,psg_channel.1		;7a7b
	set 2,(hl)		;7a7e
	ld hl,psg_channel.2		;7a80
	set 2,(hl)		;7a83
	ld hl,psg_channel.3		;7a85
	set 2,(hl)		;7a88
	jp l7aafh		;7a8a

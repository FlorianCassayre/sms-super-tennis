audio_track_data:
	.DW audio_track_data_theme_game_start	; 81
	.DW audio_track_data_theme_game_wonn	; 82
	.DW audio_track_data_theme_game_lost	; 83
	.DW audio_track_data_theme_set_won	; 84
	.DW audio_track_data_theme_set_lost	; 85
	.DW audio_track_data_theme_match_won	; 86
	.DW audio_track_data_theme_match_lost	; 87
	.DW audio_track_data_theme_splash_screen	; 88
	.DW audio_track_data_sound_ball_wall	; 89
	.DW audio_track_data_sound_racket_hit	; 8a
	.DW audio_track_data_sound_ball_high	; 8b
	.IFDEF _J
		.DW audio_track_data_sound_racket_hit_legacy	; 8c
	.ENDIF
	.IFDEF _UE
		.DW audio_track_data_sound_racket_hit	; 8c
	.ENDIF
	.DW l75ech	; 8d
	.DW audio_track_data_sound_ball_net	; 8e
	.DW audio_track_data_sound_ball_bounce	; 8f
	.DW l7668h	; 90
	.DW l7689h	; 91
	.DW l76bch	; 92
	.DW l76c9h	; 93
	.DW l76d7h	; 94
	.DW l76d7h	; 95
	.DW audio_track_data_sound_ball_in	; 96
	.DW audio_track_data_ball_out	; 97
	.DW audio_track_data_sound_fault	; 98
	.DW l785dh	; 99
	.DW l78a9h	; 9a
	.DW l7ad7h	; 9b
	.DW 0200bh	; 9c

audio_track_routine:
	.DW sub_audio_track_routine_music	; 81
    .DW sub_audio_track_routine_music	; 82
    .DW sub_audio_track_routine_music	; 83
    .DW sub_audio_track_routine_music	; 84
    .DW sub_audio_track_routine_music	; 85
    .DW sub_audio_track_routine_music	; 86
    .DW sub_audio_track_routine_music	; 87
	.DW sub_audio_track_routine_music	; 88
	.DW sub_audio_track_routine_sound	; 89
    .DW sub_audio_track_routine_sound	; 8a
    .DW sub_audio_track_routine_sound	; 8b
	.IFDEF _J
    	.DW sub_audio_track_routine_sound_alt	; 8c
	.ENDIF
	.IFDEF _UE
		.DW sub_audio_track_routine_sound	; 8c
	.ENDIF
	.DW sub_audio_track_routine_sound_group_b	; 8d
	.DW sub_audio_track_routine_sound	; 8e
	.IFDEF _J
    	.DW sub_audio_track_routine_sound	; 8f
	.ENDIF
	.IFDEF _UE
		.DW sub_audio_track_routine_sound_alt	; 8f
	.ENDIF
	.DW sub_audio_track_routine_sound	; 90
	.DW sub_audio_track_routine_sound	; 91
	.DW sub_audio_track_routine_sound_unknown	; 92
	.DW sub_audio_track_routine_sound_unknown	; 93
	.DW sub_audio_track_routine_sound	; 94
	.DW sub_audio_track_routine_sound	; 95
	.DW sub_audio_track_routine_sound_group_a	; 96
	.DW sub_audio_track_routine_sound_group_a	; 97
	.DW sub_audio_track_routine_sound_group_a	; 98
	.DW sub_audio_track_routine_sound_group_a	; 99
	.DW sub_audio_track_routine_sound_group_a	; 9a
	.DW sub_audio_track_routine_stop_all	; 9b
	.DW sub_audio_track_routine_pause	; 9c

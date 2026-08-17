sub_game_frame_update:
	call sub_check_player_location		;0b1e
	call sub_game_ball_update_physics		;0b21
	call sub_game_entity_update_all		;0b24
	ret			;0b27

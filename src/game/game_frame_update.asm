sub_game_frame_update:
	call sub_check_player_location
	call sub_game_ball_update_physics
	call sub_game_entity_update_all
	ret

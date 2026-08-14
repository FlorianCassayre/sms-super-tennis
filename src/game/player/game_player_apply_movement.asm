sub_game_player_apply_movement:
	call sub_game_player_joypad_poll		;26a1
	call sub_player_movement		;26a4
	call sub_apply_player_movement		;26a7
	ret			;26aa

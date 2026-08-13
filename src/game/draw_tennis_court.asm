sub_draw_tennis_court:
	ld a,(0c518h)		;0b18
	or a			;0b1b
	jr nz,sub_0b28h		;0b1c
l0b1eh_update_ball:
	call sub_check_player_location		;0b1e
	call sub_game_ball_update_physics		;0b21
	call sub_0711h_entity_action_dispatch		;0b24
	ret			;0b27

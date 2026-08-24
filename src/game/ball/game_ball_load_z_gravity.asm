sub_game_ball_load_z_gravity:
	ld a,(state.ball_hit_type)
	add a,a
	ld e,a
	ld d,0
	ld hl,table_ball_gravities
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ball.z_gravity),de
	ret

table_ball_gravities:
	.DW $0003
	.DW $0005
	.DW $000b

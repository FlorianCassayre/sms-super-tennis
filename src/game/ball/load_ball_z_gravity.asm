sub_load_ball_z_gravity:
	ld a,(state.ball_hit_type)		;138f
	add a,a			;1392
	ld e,a			;1393
	ld d,0		;1394
	ld hl,table_ball_gravities		;1396
	add hl,de			;1399
	ld e,(hl)			;139a
	inc hl			;139b
	ld d,(hl)			;139c
	ld (ball.z_gravity),de		;139d
	ret			;13a1

table_ball_gravities:
	.DW $0003		;13a2
	.DW $0005		;13a4
	.DW $000b		;13a6

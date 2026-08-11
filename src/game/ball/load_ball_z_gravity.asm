sub_load_ball_z_gravity:
	ld a,(state.ball_hit_type)		; 3a 46 c0 ;138f
	add a,a			; 87 ;1392
	ld e,a			; 5f ;1393
	ld d,0		; 16 00 ;1394
	ld hl,table_ball_gravities		; 21 a2 13 ;1396
	add hl,de			; 19 ;1399
	ld e,(hl)			; 5e ;139a
	inc hl			; 23 ;139b
	ld d,(hl)			; 56 ;139c
	ld (ball.z_gravity),de		; ed 53 02 c5 ;139d
	ret			; c9 ;13a1

table_ball_gravities:
	.DW $0003		;13a2
	.DW $0005		;13a4
	.DW $000b		;13a6

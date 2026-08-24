sub_game_ball_compute_x_velocity:
	ld a,c
	add a,a
	ld c,a
	ld b,0
	ld hl,table_ball_x_vel_pointers
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)

	ld a,(state.ball_hit_type)
	add a,a ; x2
	ld c,a
	add a,a ; x4
	ld b,a
	add a,a ; x 8
	add a,a ; x16
	add a,c ; x18
	add a,b ; x22
	ld c,a

	ld a,(ix + entity_t.render_facing_dir)
	sub 11
	jr nc,@lt_11
		add a,11
	@lt_11:

	add a,a
	add a,c
	ld c,a
	ld b,0
	ex de,hl
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)

	ld a,(state.last_hitter)
	and $01
	jr z,@store_vel
		xor a
		ld hl,0
		sbc hl,de
		ex de,hl
	@store_vel:
	ld (ball.x_vel),de
	ret

; game_ball_shot_type_t
table_ball_x_vel_pointers:
	.DW table_ball_x_vel_pointers_groundstroke
	.DW table_ball_x_vel_pointers_lob
	.DW table_ball_x_vel_pointers_volley
	.DW table_ball_x_vel_pointers_groundstroke

; Weak, medium, strong

table_ball_x_vel_pointers_groundstroke:
    .DW 130, 102, 76, 50, 24, 0, -24, -50, -76, -102, -130
    .DW 175, 137, 102, 67, 32, 0, -32, -67, -102, -137, -175
    .DW 260, 204, 152, 100, 48, 0, -48, -100, -152, -204, -260

table_ball_x_vel_pointers_lob:
    .DW 81, 63, 47, 31, 15, 0, -15, -31, -47, -63, -81
    .DW 110, 86, 64, 42, 20, 0, -20, -42, -64, -86, -110
    .DW 162, 127, 95, 62, 30, 0, -30, -62, -95, -127, -162

; Bug?! The first two values of each row appear to be inverted
table_ball_x_vel_pointers_volley:
    .DW 229, 292, 171, 112, 54, 0, -54, -112, -171, -229, -292
    .DW 306, 390, 228, 150, 72, 0, -72, -150, -228, -306, -390
    .DW 459, 585, 342, 225, 108, 0, -108, -225, -342, -459, -585

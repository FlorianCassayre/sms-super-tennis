sub_game_ball_update_velocity_bounce:
	ld de,(ball.z_vel)		;159c
	ld bc,BOUNCE_COEF		;15a0
	call sub_mul_de_bc		;15a3
	ld d,e			;15a6
	ld e,h			;15a7
	xor a			;15a8
	ld hl,0		;15a9
	sbc hl,de		;15ac
	ld (ball.z_vel),hl		;15ae
	ld a,(ball.bounces_count)		;15b1
	cp STATE_FROZEN		;15b4
	ret nc			;15b6
	ld de,(ball.x_vel)		;15b7
	bit 7,d		;15bb
	jr z,+		;15bd
	xor a			;15bf
	ld hl,0		;15c0
	sbc hl,de		;15c3
	ex de,hl			;15c5
+:
	ld bc,FRICTION_COEF		;15c6
	call sub_mul_de_bc		;15c9
	ld d,e			;15cc
	ld e,h			;15cd
	ld a,(ball.x_vel + 1)		;15ce
	bit 7,a		;15d1
	jr z,+		;15d3
	xor a			;15d5
	ld hl,0		;15d6
	sbc hl,de		;15d9
	ex de,hl			;15db
+:
	ld (ball.x_vel),de		;15dc
	ld de,(ball.y_vel)		;15e0
	bit 7,d		;15e4
	jr z,+		;15e6
	xor a			;15e8
	ld hl,0		;15e9
	sbc hl,de		;15ec
	ex de,hl			;15ee
+:
	ld bc,FRICTION_COEF		;15ef
	call sub_mul_de_bc		;15f2
	ld d,e			;15f5
	ld e,h			;15f6
	ld a,(ball.y_vel + 1)		;15f7
	bit 7,a		;15fa
	jr z,+		;15fc
	xor a			;15fe
	ld hl,0		;15ff
	sbc hl,de		;1602
	ex de,hl			;1604
+:
	ld (ball.y_vel),de		;1605
	ret			;1609

sub_game_ball_update_velocity_bounce:
	ld de,(ball.z_vel)
	ld bc,BOUNCE_COEF
	call sub_mul_de_bc
	ld d,e
	ld e,h
	xor a
	ld hl,0
	sbc hl,de
	ld (ball.z_vel),hl
	ld a,(ball.bounces_count)
	cp STATE_FROZEN
	ret nc
	ld de,(ball.x_vel)
	bit 7,d
	jr z,+
	xor a
	ld hl,0
	sbc hl,de
	ex de,hl
+:
	ld bc,FRICTION_COEF
	call sub_mul_de_bc
	ld d,e
	ld e,h
	ld a,(ball.x_vel + 1)
	bit 7,a
	jr z,+
	xor a
	ld hl,0
	sbc hl,de
	ex de,hl
+:
	ld (ball.x_vel),de
	ld de,(ball.y_vel)
	bit 7,d
	jr z,+
	xor a
	ld hl,0
	sbc hl,de
	ex de,hl
+:
	ld bc,FRICTION_COEF
	call sub_mul_de_bc
	ld d,e
	ld e,h
	ld a,(ball.y_vel + 1)
	bit 7,a
	jr z,+
	xor a
	ld hl,0
	sbc hl,de
	ex de,hl
+:
	ld (ball.y_vel),de
	ret

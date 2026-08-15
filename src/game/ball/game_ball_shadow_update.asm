sub_game_ball_shadow_update:
	ld a,(entities.ball.x_pos + 1)		;0f1d
	ld (ix+00dh),a		;0f20
	ld a,(entities.ball.y_pos + 1)		;0f23
	inc a			;0f26
	ld (ix+014h),a		;0f27
	ld l,a			;0f2a
	ld h,000h		;0f2b
	add hl,hl			;0f2d
	ld de,0cee6h		;0f2e
	add hl,de			;0f31
	ld c,(hl)			;0f32
	inc hl			;0f33
	ld b,(hl)			;0f34
	ld de,(0c500h)		;0f35
	call sub_mul_de_bc		;0f39
	ld d,e			;0f3c
	ld e,h			;0f3d
	xor a			;0f3e
	ld hl,(entities.ball.y_pos)		;0f3f
	sbc hl,de		;0f42
	ld (ix+00ah),l		;0f44
	ld (ix+00bh),h		;0f47
	jp sub_game_ball_shadow_update_sizes		;0f4a

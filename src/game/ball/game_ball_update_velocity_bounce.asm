sub_game_ball_update_velocity_bounce:
	ld de,(ball.z_vel)		; ed 5b 06 c5 ;159c
	ld bc,BOUNCE_COEF		; 01 a0 00 ;15a0
	call sub_mul_de_bc		; cd f7 03 ;15a3
	ld d,e			; 53 ;15a6
	ld e,h			; 5c ;15a7
	xor a			; af ;15a8
	ld hl,0		; 21 00 00 ;15a9
	sbc hl,de		; ed 52 ;15ac
	ld (ball.z_vel),hl		; 22 06 c5 ;15ae
	ld a,(ball.bounces_count)		; 3a 17 c5 ;15b1
	cp STATE_FROZEN		; fe 02 ;15b4
	ret nc			; d0 ;15b6
	ld de,(ball.x_vel)		; ed 5b 0e c5 ;15b7
	bit 7,d		; cb 7a ;15bb
	jr z,+		; 28 07 ;15bd
	xor a			; af ;15bf
	ld hl,0		; 21 00 00 ;15c0
	sbc hl,de		; ed 52 ;15c3
	ex de,hl			; eb ;15c5
+:
	ld bc,FRICTION_COEF		; 01 80 00 ;15c6
	call sub_mul_de_bc		; cd f7 03 ;15c9
	ld d,e			; 53 ;15cc
	ld e,h			; 5c ;15cd
	ld a,(ball.x_vel + 1)		; 3a 0f c5 ;15ce
	bit 7,a		; cb 7f ;15d1
	jr z,+		; 28 07 ;15d3
	xor a			; af ;15d5
	ld hl,0		; 21 00 00 ;15d6
	sbc hl,de		; ed 52 ;15d9
	ex de,hl			; eb ;15db
+:
	ld (ball.x_vel),de		; ed 53 0e c5 ;15dc
	ld de,(ball.y_vel)		; ed 5b 0c c5 ;15e0
	bit 7,d		; cb 7a ;15e4
	jr z,+		; 28 07 ;15e6
	xor a			; af ;15e8
	ld hl,0		; 21 00 00 ;15e9
	sbc hl,de		; ed 52 ;15ec
	ex de,hl			; eb ;15ee
+:
	ld bc,FRICTION_COEF		; 01 80 00 ;15ef
	call sub_mul_de_bc		; cd f7 03 ;15f2
	ld d,e			; 53 ;15f5
	ld e,h			; 5c ;15f6
	ld a,(ball.y_vel + 1)		; 3a 0d c5 ;15f7
	bit 7,a		; cb 7f ;15fa
	jr z,+		; 28 07 ;15fc
	xor a			; af ;15fe
	ld hl,0		; 21 00 00 ;15ff
	sbc hl,de		; ed 52 ;1602
	ex de,hl			; eb ;1604
+:
	ld (ball.y_vel),de		; ed 53 0c c5 ;1605
	ret			; c9 ;1609

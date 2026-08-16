sub_game_racket_process_swing_contact:
	ld a,(ix + entity_t.time_before_serve)		;2c40
	and a			;2c43
	jr nz,+		;2c44
	res 7,(ix + entity_t.state_flags)		;2c46
	bit 7,(ix + entity_t.racket_contact_flag)		;2c4a
	ret z			;2c4e
+:
	ld b,a			;2c4f
	ld a,(0c519h)		;2c50
	cp 001h		;2c53
	ret z			;2c55
	bit 7,(ix + entity_t.racket_contact_flag)		;2c56
	ret z			;2c5a
	ld a,(ix + entity_t.state_index)		;2c5b
	and 07fh		;2c5e
	cp 005h		;2c60
	jr z,+		;2c62
	ld a,(game.match_flags)		;2c64
	bit 0,a		;2c67
	jr z,+		;2c69
	ld a,(game.current_player)		;2c6b
	cp (ix + entity_t.id)		;2c6e
	jr nz,+		;2c71
	ld hl,0c000h		;2c73
	res 0,(hl)		;2c76
	ret			;2c78
+:
	res 7,(ix + entity_t.racket_contact_flag)		;2c79
	ld a,(ix + entity_t.swing_type_id)		;2c7d
	ld (entities.ball.state_index),a		;2c80
	ld (0c401h),a		;2c83
	ld a,b			;2c86
	ld b,(ix + entity_t.swing_duration)		;2c87
	call sub_div_a_b_c		;2c8a
	ld e,c			;2c8d
	ld a,(ix + entity_t.x_div_pos)		;2c8e
	rrca			;2c91
	rrca			;2c92
	rrca			;2c93
	bit 0,(ix + entity_t.id)		;2c94
	jr z,+		;2c98
	cpl			;2c9a
+:
	and 0e0h		;2c9b
	or e			;2c9d
	ld e,a			;2c9e
	ld a,(ix + entity_t.y_div_pos)		;2c9f
	rla			;2ca2
	rla			;2ca3
	bit 0,(ix + entity_t.id)		;2ca4
	jr z,+		;2ca8
	cpl			;2caa
+:
	and 01ch		;2cab
	or e			;2cad
	ld e,a			;2cae
	ld d,000h		;2caf
	ld hl,game_ball_trajectory_data_bounce_magnitude		;2cb1
	add hl,de			;2cb4
	ld a,(hl)			;2cb5
	bit 0,(ix + entity_t.id)		;2cb6
	jr z,+		;2cba
	bit 0,(ix + entity_t.render_facing_dir)		;2cbc
	jr nz,++		;2cc0
	call sub_abs10		;2cc2
	jr ++		;2cc5
+:
	bit 0,(ix + entity_t.render_facing_dir)		;2cc7
	jr z,++		;2ccb
	call sub_abs10		;2ccd
++:
	and 01fh		;2cd0
	ld de,0c320h		;2cd2
	bit 0,(ix + entity_t.id)		;2cd5
	jr z,+		;2cd9
	ld b,00bh		;2cdb
	add a,b			;2cdd
+:
	ld (de),a			;2cde
	ld a,(0c4b0h)		;2cdf
	ld e,000h		;2ce2
	bit 0,(ix + entity_t.id)		;2ce4
	jr z,+		;2ce8
	ld a,(0c4b1h)		;2cea
	ld e,010h		;2ced
+:
	ld hl,game_ball_trajectory_data_axis_a		;2cef
	call sub_2d0eh_movement		;2cf2
	ld a,(0c4b2h)		;2cf5
	ld e,000h		;2cf8
	bit 0,(ix + entity_t.id)		;2cfa
	jr z,+		;2cfe
	ld a,(0c4b3h)		;2d00
	ld e,010h		;2d03
+:
	ld hl,game_ball_trajectory_data_axis_b		;2d05
	call sub_2d0eh_movement		;2d08
	jp l2d35h		;2d0b
	.INCLUDE "game/racket/2d0eh_movement.asm"
l2d35h:
	ld a,(ix + entity_t.id)		;2d35
	and 001h		;2d38
	ld a,000h		;2d3a
	ld b,001h		;2d3c
	jr z,+		;2d3e
	ld a,001h		;2d40
	ld b,000h		;2d42
+:
	ld de,040h		;2d44
	ld hl,entities.player.1.bottom.ball_incoming		;2d47
	ld (hl),a			;2d4a
	add hl,de			;2d4b
	ld (hl),b			;2d4c
	add hl,de			;2d4d
	ld (hl),a			;2d4e
	add hl,de			;2d4f
	ld (hl),b			;2d50
	ret			;2d51

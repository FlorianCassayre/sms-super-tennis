sub_update_ball_out_of_bounds:
	ld hl,court_bounds_table		;0e7f
	ld a,(ball.y_pos + 1)		;0e82
	cp (hl)			;0e85
	jr c,@ball_is_out		;0e86
	inc hl			;0e88
	cp (hl)			;0e89
	jr nc,@ball_is_out		;0e8a
	inc hl			;0e8c
	ld a,(state.match_state_flags)		;0e8d
	bit 7,a		;0e90
	jr z,@check_x_bounds		;0e92
	inc hl			;0e94
	inc hl			;0e95
@check_x_bounds:
	ld a,(ball.x_pos + 1)		;0e96
	cp (hl)			;0e99
	jr c,@ball_is_out		;0e9a
	inc hl			;0e9c
	cp (hl)			;0e9d
	jr nc,@ball_is_out		;0e9e
	ld a,000h		;0ea0
	jr @store_result		;0ea2
@ball_is_out:
	ld a,001h		;0ea4
@store_result:
	ld (ball.out_flag),a		;0ea6
	ret			;0ea9

court_bounds_table:
	.DB $29, $d3		;0eaa
	.DB $52, $ae		;0eac
	.DB $44, $bc		;0eae

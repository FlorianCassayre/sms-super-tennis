sub_update_ball_out_of_bounds:
	ld hl,court_bounds_table
	ld a,(ball.y_pos + 1)
	cp (hl)
	jr c,@ball_is_out
	inc hl
	cp (hl)
	jr nc,@ball_is_out
	inc hl
	ld a,(state.match_state_flags)
	bit 7,a
	jr z,@check_x_bounds
	inc hl
	inc hl
@check_x_bounds:
	ld a,(ball.x_pos + 1)
	cp (hl)
	jr c,@ball_is_out
	inc hl
	cp (hl)
	jr nc,@ball_is_out
	ld a,000h
	jr @store_result
@ball_is_out:
	ld a,001h
@store_result:
	ld (ball.out_flag),a
	ret

court_bounds_table:
	.DB $29, $d3
	.DB $52, $ae
	.DB $44, $bc

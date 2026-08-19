sub_game_cpu_update:
	ld a,(ix + entity_t.id)
	and 003h
	ld e,a
	ld d,000h
	ld hl,partner_offset_table
	add hl,de
	ld e,(hl)
	ld hl,entities.player
	add hl,de
	push hl
	pop iy
	ld a,(ix + entity_t.cpu_state)
	and 00fh
	ld hl,cpu_state_table
	jp game_fsm

cpu_state_table:
	.DW sub_cpu_state_track_ball
	.DW sub_cpu_state_serve_wait
	.DW sub_cpu_state_net
	.DW sub_cpu_state_baseline_attack
	.DW sub_cpu_state_return_center
	.DW sub_cpu_state_wait
	.DW sub_cpu_state_baseline_defense
	.DW sub_cpu_state_idle_wander
	.DW sub_cpu_state_smash
	.DW sub_cpu_state_doubles_cover_1
	.DW sub_cpu_state_doubles_cover_2

partner_offset_table:
	.DB entities.player.2.bottom - entities.player
	.DB entities.player.2.top - entities.player
	.DB entities.player.1.bottom - entities.player
	.DB entities.player.1.top - entities.player

sub_cpu_state_track_ball:
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr nz,@l1e83h
	ld (ix + entity_t.shot_button),a
	ld (ix + entity_t.input_dirs),a
	ld a,(iy + entity_t.cpu_sub_state)
	cp 004h
	jr nz,@l1e75h
	ld (iy + entity_t.cpu_sub_state),003h
@l1e75h:
	ld a,(ix + entity_t.cpu_state_timer)
	and 007h
	cp 007h
	ret nz
	ld (ix + entity_t.cpu_state),004h
	jr @l1ef0h
@l1e83h:
	ld a,(0c401h)
	cp 019h
	jr z,@l1ee8h
	cp 01ch
	jr nz,@l1e9bh
	ld a,(state.match_state_flags)
	bit 7,a
	jr nz,@l1edfh
	ld (ix + entity_t.cpu_state),006h
	jr @l1ef0h
@l1e9bh:
	bit 0,(ix + entity_t.id)
	jr nz,@l1eb3h
	ld a,(entities.ball.y_pos + 1)
	add a,008h
	ld e,(ix + entity_t.y_pos + 1)
	sub e
	jr c,@l1ec2h
	cp 006h
	jr c,@l1ee8h
	jp @l1ec2h
@l1eb3h:
	ld a,(entities.ball.y_pos + 1)
	sub 008h
	ld e,(ix + entity_t.y_pos + 1)
	sub e
	jr nc,@l1ec2h
	cp 0fah
	jr c,@l1ee8h	; Bug?!
@l1ec2h:
	ld a,(0c401h)
	cp 01ch
	jr z,@l1ef5h
	ld a,(state.match_state_flags)
	bit 7,a
	jr z,@l1edfh
	call sub_game_ball_compute_horizontal_deflection
	ld h,(ix + entity_t.x_pos + 1)
	sub h
	jr nc,@l1edbh
	neg
@l1edbh:
	cp 020h
	jr nc,@l1ef5h
@l1edfh:
	ld (iy + entity_t.cpu_sub_state),003h
	ld (ix + entity_t.cpu_state),002h
	ret
@l1ee8h:
	xor a
	ld (ix + entity_t.shot_button),a
	ld (ix + entity_t.input_dirs),a
	ret
@l1ef0h:
	ld (iy + entity_t.cpu_sub_state),002h
	ret
@l1ef5h:
	ld (iy + entity_t.cpu_sub_state),001h
	ld (ix + entity_t.cpu_state),00ah
	ret
sub_cpu_state_serve_wait:
	ld a,(0c400h)
	and a
	ret nz
	ld a,(ix + entity_t.cpu_sub_state)
	cp 002h
	jr z,@l1f3ch
	cp 005h
	jr z,@l1f3ch
	cp 003h
	jr nz,@l1f22h
	ld a,(state.match_state_flags)
	bit 7,a
	jr z,@l1f22h
	ld (ix + entity_t.cpu_state),009h
	ld (ix + entity_t.cpu_sub_state),004h
	ret
@l1f22h:
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr nz,@l1f41h
	ld (ix + entity_t.shot_button),a
	ld (ix + entity_t.input_dirs),a
	ld a,(ix + entity_t.cpu_state_timer)
	and 003h
	cp 003h
	ret nz
	ld a,(state.match_state_flags)
	and 080h
	ret nz
@l1f3ch:
	ld (ix + entity_t.cpu_state),005h
	ret
@l1f41h:
	ld a,(state.match_state_flags)
	ld b,003h
	bit 7,a
	jr z,@l1f68h
	ld a,(0c401h)
	cp 019h
	jr z,@l1f68h
	ld a,(ix + entity_t.cpu_sub_state)
	and a
	ret z
	ld b,003h
	cp 001h
	jr z,@l1f68h
	ld b,005h
	cp 002h
	jr z,@l1f68h
	ld b,009h
	cp 003h
	jr z,@l1f68h
@l1f68h:
	ld (ix + entity_t.cpu_state),b
	ret
sub_cpu_state_net:
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr nz,@l1f7fh
	ld (ix + entity_t.cpu_state),000h
	ld (ix + entity_t.cpu_sub_state),000h
	ld (ix + entity_t.shot_button),000h
	ret
@l1f7fh:
	bit 0,(ix + entity_t.id)
	jr nz,@l1f97h
	ld a,(entities.ball.y_pos + 1)
	add a,008h
	ld e,(ix + entity_t.y_pos + 1)
	sub e
	jr c,@l1fe0h
	cp 006h
	jr nc,@l1fe0h
	jp @l1fa6h
@l1f97h:
	ld a,(entities.ball.y_pos + 1)
	sub 008h
	ld e,(ix + entity_t.y_pos + 1)
	sub e
	jr nc,@l1fc0h
	cp 0fah
	jr nc,@l1fc0h
@l1fa6h:
	ld a,(state.match_state_flags)
	bit 7,a
	ld a,004h
	ld b,002h
	jr z,@l1fb5h
	ld a,00ah
	ld b,001h
@l1fb5h:
	ld (ix + entity_t.cpu_state),a
	ld (iy + entity_t.cpu_sub_state),b
	ld (ix + entity_t.shot_button),000h
	ret
@l1fc0h:
	ld e,04ch
	call sub_game_ball_compute_horizontal_deflection
	ld l,000h
	ld h,a
	ld de,04c00h
	call sub_game_cpu_calculate_intercept_direction_1
	ld (ix + entity_t.input_dirs),a
	call sub_game_cpu_evaluate_y_dist_1
	ld a,(ix + entity_t.hit_readiness)
	and a
	ld (ix + entity_t.shot_button),a
	ret z
	inc (ix + entity_t.cpu_state_timer)
	ret
@l1fe0h:
	ld e,080h
	call sub_game_ball_compute_horizontal_deflection
	ld l,000h
	ld h,a
	ld de,08000h
	call sub_game_cpu_calculate_intercept_direction_2
	ld (ix + entity_t.input_dirs),a
	call sub_game_cpu_evaluate_y_dist_2
	ld a,(ix + entity_t.hit_readiness)
	and a
	ld (ix + entity_t.shot_button),a
	ret z
@l1ffch:
	inc (ix + entity_t.cpu_state_timer)
	ret
sub_cpu_state_baseline_attack:
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr nz,@l2013h
	ld (ix + entity_t.cpu_state),009h
	ld (ix + entity_t.cpu_sub_state),000h
	ld (ix + entity_t.shot_button),000h
	ret
@l2013h:
	bit 0,(ix + entity_t.id)
	jr z,@l2037h
	ld e,028h
	call sub_game_ball_compute_horizontal_deflection
	ld l,000h
	ld h,a
	ld de,02800h
	call sub_game_cpu_calculate_intercept_direction_1
	ld (ix + entity_t.input_dirs),a
	call sub_game_cpu_evaluate_y_dist_1
	ld a,(ix + entity_t.hit_readiness)
	ld (ix + entity_t.shot_button),a
	inc (ix + entity_t.cpu_state_timer)
	ret
@l2037h:
	ld e,0b0h
	call sub_game_ball_compute_horizontal_deflection
	ld l,000h
	ld h,a
	ld de,0b000h
	call sub_game_cpu_calculate_intercept_direction_2
	ld (ix + entity_t.input_dirs),a
	call sub_game_cpu_evaluate_y_dist_2
	ld a,(ix + entity_t.hit_readiness)
	ld (ix + entity_t.shot_button),a
	inc (ix + entity_t.cpu_state_timer)
	ret
sub_cpu_state_return_center:
	bit 0,(ix + entity_t.ball_incoming)
	jr nz,@l207eh
	ld a,(ix + entity_t.y_div_pos)
	bit 0,(ix + entity_t.id)
	jr z,@l2075h
	cp 002h
	jr c,@l207eh
	ld (ix + entity_t.input_dirs),001h
	ld (ix + entity_t.shot_button),000h
	ld (iy + entity_t.cpu_sub_state),005h
	ret
@l2075h:
	cp 0b0h
	jr nc,@l207eh
	ld (ix + entity_t.input_dirs),002h
	ret
@l207eh:
	xor a
	ld (ix + entity_t.input_dirs),a
	ld (ix + entity_t.cpu_state_timer),a
	ld (ix + entity_t.cpu_state),003h
	ld (iy + entity_t.cpu_sub_state),005h
	ret
sub_cpu_state_wait:
	ld a,(0c400h)
	and a
	ret nz
	bit 0,(ix + entity_t.ball_incoming)
	jr nz,@l20b2h
@l2099h:
	ld a,(state.match_state_flags)
	bit 7,a
	ld a,002h
	jr z,@l20a5h
	call sub_game_cpu_return_center_intercept
@l20a5h:
	ld (ix + entity_t.input_dirs),a
	ld a,(ix + entity_t.y_div_pos)
	cp 006h
	ret c
	ld (ix + entity_t.cpu_sub_state),000h
@l20b2h:
	ld a,(state.match_state_flags)
	bit 7,a
	jr z,@l20c0h
	ld a,(ix + entity_t.cpu_sub_state)
	cp 005h
	jr z,@l2099h
@l20c0h:
	xor a
	ld (ix + entity_t.input_dirs),a
	ld (ix + entity_t.cpu_state_timer),a
	ld (ix + entity_t.cpu_state),000h
	ret
sub_cpu_state_baseline_defense:
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr nz,@l20dfh
	ld (ix + entity_t.cpu_state),004h
	ld (ix + entity_t.shot_button),000h
	ld (iy + entity_t.cpu_sub_state),005h
	ret
@l20dfh:
	bit 0,(ix + entity_t.id)
	jr z,@l2106h
	ld e,028h
	call sub_game_ball_compute_horizontal_deflection
	ld l,000h
	ld h,a
	ld de,02800h
	call sub_game_cpu_calculate_intercept_direction_1
	ld (ix + entity_t.input_dirs),a
	call sub_game_cpu_evaluate_y_dist_1
	ld a,(ix + entity_t.hit_readiness)
	and a
	ret z
	ld (ix + entity_t.shot_button),a
	ld (iy + entity_t.cpu_sub_state),005h
	ret
@l2106h:
	ld e,0b0h
	call sub_game_ball_compute_horizontal_deflection
	ld l,000h
	ld h,a
	ld de,000b0h
	call sub_game_cpu_calculate_intercept_direction_2
	ld (ix + entity_t.input_dirs),a
	call sub_game_cpu_evaluate_y_dist_2
	ld a,(ix + entity_t.hit_readiness)
	and a
	ret z
	ld (ix + entity_t.shot_button),a
	ret
sub_cpu_state_doubles_cover_1:
	bit 7,(ix + entity_t.cpu_state)
	jr nz,@l2132h
	set 7,(ix + entity_t.cpu_state)
	ld (ix + entity_t.shot_button),000h
	ret
@l2132h:
	ld a,(ix + entity_t.cpu_sub_state)
	cp 002h
	jr z,@l2146h
	cp 005h
	jr z,@l2146h
	cp 001h
	jr nz,@l214bh
	ld (ix + entity_t.cpu_state),003h
	ret
@l2146h:
	ld (ix + entity_t.cpu_state),005h
	ret
@l214bh:
	ld b,(ix + entity_t.x_div_pos)
	ld a,(iy + entity_t.input_dirs)
	and 00ch
	jr nz,@l2162h
	ld a,(iy + entity_t.x_div_pos)
	cp 004h
	ld b,008h
	jr c,@l217ah
	ld b,004h
	jr @l217ah
@l2162h:
	bit 3,a
	jr z,@l216fh
	ld a,b
	cp 003h
	ld b,004h
	jr c,@l217ah
	jr @l2176h
@l216fh:
	ld a,b
	cp 005h
	jr nc,@l217ah
	ld b,008h
@l2176h:
	ld (ix + entity_t.input_dirs),b
	ret
@l217ah:
	xor a
	ld (ix + entity_t.input_dirs),a
	ld (ix + entity_t.cpu_state),001h
	ret
sub_cpu_state_doubles_cover_2:
	ld b,(ix + entity_t.x_div_pos)
	ld a,(iy + entity_t.input_dirs)
	and 00ch
	jr nz,@l219ah
	ld a,(iy + entity_t.x_div_pos)
	cp 004h
	ld b,008h
	jr c,@l21b2h
	ld b,004h
	jr @l21b2h
@l219ah:
	bit 3,a
	jr z,@l21a7h
	ld a,b
	cp 003h
	ld b,004h
	jr c,@l21b2h
	jr @l21aeh
@l21a7h:
	ld a,b
	cp 005h
	jr nc,@l21b2h
	ld b,008h
@l21aeh:
	ld (ix + entity_t.input_dirs),b
	ret
@l21b2h:
	xor a
	ld (ix + entity_t.input_dirs),a
	ld (ix + entity_t.cpu_state),000h
	ret
sub_cpu_state_idle_wander:
	bit 7,(ix + entity_t.cpu_state)
	jr nz,@l21cdh
	set 7,(ix + entity_t.cpu_state)
	ld a,r
	and 01fh
	inc a
	ld (ix + entity_t.cpu_state_timer),a
@l21cdh:
	dec (ix + entity_t.cpu_state_timer)
	ret nz
	ld a,(state.match_state_flags)
	bit 3,a
	ld a,000h
	jr nz,@l21e6h
	ld a,r
	cp 03fh
	jr nc,@l21e4h
	and 008h
	jr @l21e6h
@l21e4h:
	and 004h
@l21e6h:
	ld (ix + entity_t.input_dirs),a
	res 7,(ix + entity_t.cpu_state)
	ret
sub_cpu_state_smash:
	bit 7,(ix + entity_t.cpu_state)
	jr nz,@l21fch
	set 7,(ix + entity_t.cpu_state)
	ld (ix + entity_t.cpu_state_timer),000h
@l21fch:
	ld a,(ball.z_pos + 1)
	cp 02ah
	jr c,@l2207h
	set 0,(ix + entity_t.cpu_state_timer)
@l2207h:
	bit 0,(ix + entity_t.cpu_state_timer)
	ret z
	cp 028h
	ret nc
	cp 01ah
	ret c
	ld a,r
	ld a,r
	and 001h
	ret nz
	ld (ix + entity_t.shot_button),001h
	ret

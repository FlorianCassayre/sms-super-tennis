sub_game_cpu_evaluate_y_dist_1:
	ld a,(ball.foul_type)
	and a
	ld b,000h
	jr nz,@store_dir
	ld a,(ball.foul_triggered_flag)
	and a
	jr nz,@evaluate
	ld a,(0c51dh)
	and a
	jr nz,@store_dir
@evaluate:
	ld e,(ix + entity_t.y_pos + 1)
	ld a,(0c401h)
	cp 01ch
	jr nz,@check_y_dist
	ld a,(state.settings.computer_level)
	rra
	and 003h
	sub 002h
	add a,e
	ld e,a
@check_y_dist:
	ld a,(entities.ball.y_pos + 1)
	sub e
	jr nc,@check_cpu_state
	neg
@check_cpu_state:
	ld b,a
	ld a,(ix + entity_t.y_div_pos)
	ld e,a
	ld c,00ch
	cp 006h
	ld a,b
	ld b,000h
	jr nc,@compare_dist
	ld c,006h
@compare_dist:
	cp c
	jr nc,@store_dir
	ld b,001h
	ld a,e
	cp 002h
	jr nc,@store_dir
	ld a,(0c401h)
	cp 01ah
	jr nz,@random_dir
	; Randomness
	ld a,r
	cp 020h
	ld b,002h
	jr c,@store_dir
	ld b,001h
	jr @store_dir
@random_dir:
	ld a,r
	ld a,r
	ld b,001h
	cp 06fh
	jr c,@store_dir
	ld b,002h
@store_dir:
	ld (ix + entity_t.hit_readiness),b
	ret

sub_game_cpu_evaluate_y_dist_1:
	ld a,(ball.foul_type)		;2320
	and a			;2323
	ld b,000h		;2324
	jr nz,@store_dir		;2326
	ld a,(ball.foul_triggered_flag)		;2328
	and a			;232b
	jr nz,@evaluate		;232c
	ld a,(0c51dh)		;232e
	and a			;2331
	jr nz,@store_dir		;2332
@evaluate:
	ld e,(ix + entity_t.y_pos + 1)		;2334
	ld a,(0c401h)		;2337
	cp 01ch		;233a
	jr nz,@check_y_dist		;233c
	ld a,(state.settings.computer_level)		;233e
	rra			;2341
	and 003h		;2342
	sub 002h		;2344
	add a,e			;2346
	ld e,a			;2347
@check_y_dist:
	ld a,(entities.ball.y_pos + 1)		;2348
	sub e			;234b
	jr nc,@check_cpu_state		;234c
	neg		;234e
@check_cpu_state:
	ld b,a			;2350
	ld a,(ix + entity_t.y_div_pos)		;2351
	ld e,a			;2354
	ld c,00ch		;2355
	cp 006h		;2357
	ld a,b			;2359
	ld b,000h		;235a
	jr nc,@compare_dist		;235c
	ld c,006h		;235e
@compare_dist:
	cp c			;2360
	jr nc,@store_dir		;2361
	ld b,001h		;2363
	ld a,e			;2365
	cp 002h		;2366
	jr nc,@store_dir		;2368
	ld a,(0c401h)		;236a
	cp 01ah		;236d
	jr nz,@random_dir		;236f
	; Randomness
	ld a,r		;2371
	cp 020h		;2373
	ld b,002h		;2375
	jr c,@store_dir		;2377
	ld b,001h		;2379
	jr @store_dir		;237b
@random_dir:
	ld a,r		;237d
	ld a,r		;237f
	ld b,001h		;2381
	cp 06fh		;2383
	jr c,@store_dir		;2385
	ld b,002h		;2387
@store_dir:
	ld (ix + entity_t.hit_readiness),b		;2389
	ret			;238c

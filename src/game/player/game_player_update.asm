sub_game_player_update:
	call sub_game_entity_calculate_court_perspective		;247c
	ld a,(0c000h)		;247f
	bit 3,a		;2482
	call nz,sub_game_cpu_update		;2484
	bit 7,(ix + entity_t.state_index)		;2487
	jr nz,l2495h		;248b
	set 7,(ix + entity_t.state_index)		;248d
	ld (ix + entity_t.action_state),000h		;2491
l2495h:
	ld a,(ix + entity_t.action_state)		;2495
	and 00fh		;2498
	ld hl,player_action_state_table		;249a
	jp l0807h_game_fsm		;249d
player_action_state_table:
	.DW player_action_state_idle		;24a0
	.DW player_action_state_start_move		;24a2
	.DW player_action_state_start_swing		;24a4
	.DW player_action_state_moving		;24a6
	.DW player_action_state_swinging		;24a8
	.DW player_action_state_turn_around		;24aa
player_action_state_idle:
	call sub_game_player_read_input		;24ac
	jr nz,l24c8h		;24af
	ld a,c			;24b1
	rra			;24b2
	rra			;24b3
	rra			;24b4
	rra			;24b5
	and 003h		;24b6
	jr z,l24c8h		;24b8
	ld (ix + entity_t.shot_button),a		;24ba
	ld a,c			;24bd
	and 00fh		;24be
	ld (ix + entity_t.input_dirs),a		;24c0
	ld (ix + entity_t.action_state),002h		;24c3
	ret			;24c7
l24c8h:
	ld a,c			;24c8
	and 00fh		;24c9
	ld (ix + entity_t.input_dirs),a		;24cb
	jr nz,l24f3h		;24ce
	ld a,(ix + entity_t.ball_incoming)		;24d0
	and a			;24d3
	jr nz,l24f3h		;24d4
	ld a,(ix + entity_t.animation_flags_or_frame)		;24d6
	and a			;24d9
	jr nz,l24f0h		;24da
	ld (ix + entity_t.animation_id),000h		;24dc
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;24e0
	call sub_game_racket_update_hitbox		;24e4
	ld a,(ix + entity_t.facing_dir)		;24e7
	ld (ix + entity_t.prev_facing_dir),a		;24ea
	ld (ix + entity_t.render_facing_dir),a		;24ed
l24f0h:
	jp sub_game_player_update_animation		;24f0
l24f3h:
	ld (ix + entity_t.action_state),001h		;24f3
	ret			;24f7
player_action_state_moving:
	call sub_game_player_read_input		;24f8
	jr nz,l2514h		;24fb
	ld a,c			;24fd
	rra			;24fe
	rra			;24ff
	rra			;2500
	rra			;2501
	and 003h		;2502
	jr z,l2514h		;2504
	ld (ix + entity_t.shot_button),a		;2506
	ld a,c			;2509
	and 00fh		;250a
	ld (ix + entity_t.input_dirs),a		;250c
	ld (ix + entity_t.action_state),004h		;250f
	ret			;2513
l2514h:
	ld a,c			;2514
	and 00fh		;2515
	ld (ix + entity_t.input_dirs),a		;2517
	and 00ch		;251a
	jr nz,l2539h		;251c
	ld a,(ix + entity_t.ball_incoming)		;251e
	and a			;2521
	jr z,l2532h		;2522
	push bc			;2524
	call sub_game_racket_update_hitbox		;2525
	pop bc			;2528
	ld a,(ix + entity_t.facing_dir)		;2529
	ld b,(ix + entity_t.prev_facing_dir)		;252c
	cp b			;252f
	jr nz,l255ch		;2530
l2532h:
	ld a,c			;2532
	and 003h		;2533
	jr nz,l2548h		;2535
	jr l2556h		;2537
l2539h:
	call sub_game_racket_update_hitbox		;2539
	ld a,(ix + entity_t.facing_dir)		;253c
	ld b,(ix + entity_t.prev_facing_dir)		;253f
	cp b			;2542
	jr nz,l255ch		;2543
	ld (ix + entity_t.render_facing_dir),a		;2545
l2548h:
	ld a,(ix + entity_t.animation_flags_or_frame)		;2548
	and a			;254b
	jr nz,l2556h		;254c
	ld (ix + entity_t.animation_id),002h		;254e
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;2552
l2556h:
	call sub_game_player_apply_movement		;2556
	jp sub_game_player_update_animation		;2559
l255ch:
	ld (ix + entity_t.action_state),005h		;255c
	ret			;2560
player_action_state_start_move:
	ld a,(ix + entity_t.action_state)		;2561
	bit 7,a		;2564
	jr nz,l2581h		;2566
	set 7,a		;2568
	ld (ix + entity_t.action_state),a		;256a
	ld (ix + entity_t.animation_id),00ah		;256d
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;2571
	call sub_game_racket_update_hitbox		;2575
	ld a,(ix + entity_t.facing_dir)		;2578
	ld (ix + entity_t.prev_facing_dir),a		;257b
	ld (ix + entity_t.render_facing_dir),a		;257e
l2581h:
	call sub_game_player_apply_movement		;2581
	call sub_game_player_update_animation		;2584
	ld a,(ix + entity_t.animation_flags_or_frame)		;2587
	and a			;258a
	ret nz			;258b
	ld (ix + entity_t.action_state),003h		;258c
	ret			;2590
player_action_state_start_swing:
	ld a,(ix + entity_t.action_state)		;2591
	bit 7,a		;2594
	jr nz,l25b1h		;2596
	set 7,a		;2598
	ld (ix + entity_t.action_state),a		;259a
	ld (ix + entity_t.animation_id),00ah		;259d
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;25a1
	call sub_game_racket_update_hitbox		;25a5
	ld a,(ix + entity_t.facing_dir)		;25a8
	ld (ix + entity_t.prev_facing_dir),a		;25ab
	ld (ix + entity_t.render_facing_dir),a		;25ae
l25b1h:
	call sub_game_player_apply_movement		;25b1
	call sub_game_player_update_animation		;25b4
	ld a,(ix + entity_t.animation_flags_or_frame)		;25b7
	and a			;25ba
	ret nz			;25bb
	ld (ix + entity_t.action_state),004h		;25bc
	ret			;25c0
player_action_state_turn_around:
	ld a,(ix + entity_t.action_state)		;25c1
	bit 7,a		;25c4
	jr nz,l25ddh		;25c6
	set 7,(ix + entity_t.action_state)		;25c8
	call sub_game_racket_update_hitbox		;25cc
	ld a,(ix + entity_t.facing_dir)		;25cf
	ld (ix + entity_t.render_facing_dir),a		;25d2
	ld (ix + entity_t.animation_id),00bh		;25d5
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;25d9
l25ddh:
	call sub_game_player_apply_movement		;25dd
	call sub_game_player_update_animation		;25e0
	ld a,(ix + entity_t.animation_flags_or_frame)		;25e3
	and a			;25e6
	ret nz			;25e7
	ld a,(ix + entity_t.facing_dir)		;25e8
	ld (ix + entity_t.prev_facing_dir),a		;25eb
	ld (ix + entity_t.action_state),003h		;25ee
	ret			;25f2
player_action_state_swinging:
	ld a,(ix + entity_t.action_state)		;25f3
	bit 7,a		;25f6
	jr nz,l2638h		;25f8
	set 7,a		;25fa
	ld (ix + entity_t.action_state),a		;25fc
	call sub_game_racket_evaluate_swing_type		;25ff
	ld b,004h		;2602
	ld c,01ch		;2604
	cp 003h		;2606
	jr z,l2628h		;2608
	ld b,a			;260a
	ld a,(ix + entity_t.y_div_pos)		;260b
	cp 003h		;260e
	jr c,l2614h		;2610
	ld b,002h		;2612
l2614h:
	ld a,b			;2614
	ld b,009h		;2615
	ld c,01ah		;2617
	and a			;2619
	jr z,l2628h		;261a
	ld b,005h		;261c
	ld c,01bh		;261e
	cp 001h		;2620
	jr z,l2628h		;2622
	ld b,003h		;2624
	ld c,01dh		;2626
l2628h:
	ld (ix + entity_t.animation_id),b		;2628
	ld (ix + entity_t.swing_type_id),c		;262b
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;262e
	ld a,(ix + entity_t.facing_dir)		;2632
	ld (ix + entity_t.render_facing_dir),a		;2635
l2638h:
	call sub_game_player_apply_movement		;2638
	call sub_game_racket_process_swing_contact		;263b
	ld a,(ix + entity_t.animation_flags_or_frame)		;263e
	and a			;2641
	jr z,l2648h		;2642
	call sub_game_player_update_animation		;2644
	ret			;2647
l2648h:
	ld a,(ix + entity_t.ball_incoming)		;2648
	and a			;264b
	ld a,000h		;264c
	jr z,l2652h		;264e
	ld a,001h		;2650
l2652h:
	ld (ix + entity_t.action_state),a		;2652
	ld (ix + entity_t.state_flags),000h		;2655
	ld (ix + entity_t.racket_contact_flag),000h		;2659
	ret			;265d

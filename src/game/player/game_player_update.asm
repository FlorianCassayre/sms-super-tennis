sub_game_player_update:
	call sub_2e98h_2d_scale_clamp		; cd 98 2e ;247c
	ld a,(0c000h)		; 3a 00 c0 ;247f
	bit 3,a		; cb 5f ;2482
	call nz,sub_game_cpu_update		; c4 25 1e ;2484
	bit 7,(ix + entity_t.type)		; dd cb 02 7e ;2487
	jr nz,l2495h		; 20 08 ;248b
	set 7,(ix + entity_t.type)		; dd cb 02 fe ;248d
	ld (ix + entity_t.action_state),000h		; dd 36 25 00 ;2491
l2495h:
	ld a,(ix + entity_t.action_state)		; dd 7e 25 ;2495
	and 00fh		; e6 0f ;2498
	ld hl,player_action_state_table		; 21 a0 24 ;249a
	jp l0807h_game_fsm		; c3 07 08 ;249d
player_action_state_table:
	.DW player_action_state_idle		;24a0
	.DW player_action_state_start_move		;24a2
	.DW player_action_state_start_swing		;24a4
	.DW player_action_state_moving		;24a6
	.DW player_action_state_swinging		;24a8
	.DW player_action_state_turn_around		;24aa
player_action_state_idle:
	call sub_game_player_read_input		; cd 5e 26 ;24ac
	jr nz,l24c8h		; 20 17 ;24af
	ld a,c			; 79 ;24b1
	rra			; 1f ;24b2
	rra			; 1f ;24b3
	rra			; 1f ;24b4
	rra			; 1f ;24b5
	and 003h		; e6 03 ;24b6
	jr z,l24c8h		; 28 0e ;24b8
	ld (ix + entity_t.shot_button),a		; dd 77 28 ;24ba
	ld a,c			; 79 ;24bd
	and 00fh		; e6 0f ;24be
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;24c0
	ld (ix + entity_t.action_state),002h		; dd 36 25 02 ;24c3
	ret			; c9 ;24c7
l24c8h:
	ld a,c			; 79 ;24c8
	and 00fh		; e6 0f ;24c9
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;24cb
	jr nz,l24f3h		; 20 23 ;24ce
	ld a,(ix + entity_t.ball_incoming)		; dd 7e 27 ;24d0
	and a			; a7 ;24d3
	jr nz,l24f3h		; 20 1d ;24d4
	ld a,(ix + entity_t.animation_flags_or_frame)		; dd 7e 23 ;24d6
	and a			; a7 ;24d9
	jr nz,l24f0h		; 20 14 ;24da
	ld (ix + entity_t.animation_id),000h		; dd 36 22 00 ;24dc
	ld (ix + entity_t.animation_flags_or_frame),0ffh		; dd 36 23 ff ;24e0
	call sub_game_racket_update_hitbox		; cd bf 2b ;24e4
	ld a,(ix + entity_t.facing_dir)		; dd 7e 16 ;24e7
	ld (ix + entity_t.prev_facing_dir),a		; dd 77 17 ;24ea
	ld (ix + entity_t.render_facing_dir),a		; dd 77 20 ;24ed
l24f0h:
	jp sub_game_player_update_animation		; c3 69 2a ;24f0
l24f3h:
	ld (ix + entity_t.action_state),001h		; dd 36 25 01 ;24f3
	ret			; c9 ;24f7
player_action_state_moving:
	call sub_game_player_read_input		; cd 5e 26 ;24f8
	jr nz,l2514h		; 20 17 ;24fb
	ld a,c			; 79 ;24fd
	rra			; 1f ;24fe
	rra			; 1f ;24ff
	rra			; 1f ;2500
	rra			; 1f ;2501
	and 003h		; e6 03 ;2502
	jr z,l2514h		; 28 0e ;2504
	ld (ix + entity_t.shot_button),a		; dd 77 28 ;2506
	ld a,c			; 79 ;2509
	and 00fh		; e6 0f ;250a
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;250c
	ld (ix + entity_t.action_state),004h		; dd 36 25 04 ;250f
	ret			; c9 ;2513
l2514h:
	ld a,c			; 79 ;2514
	and 00fh		; e6 0f ;2515
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;2517
	and 00ch		; e6 0c ;251a
	jr nz,l2539h		; 20 1b ;251c
	ld a,(ix + entity_t.ball_incoming)		; dd 7e 27 ;251e
	and a			; a7 ;2521
	jr z,l2532h		; 28 0e ;2522
	push bc			; c5 ;2524
	call sub_game_racket_update_hitbox		; cd bf 2b ;2525
	pop bc			; c1 ;2528
	ld a,(ix + entity_t.facing_dir)		; dd 7e 16 ;2529
	ld b,(ix + entity_t.prev_facing_dir)		; dd 46 17 ;252c
	cp b			; b8 ;252f
	jr nz,l255ch		; 20 2a ;2530
l2532h:
	ld a,c			; 79 ;2532
	and 003h		; e6 03 ;2533
	jr nz,l2548h		; 20 11 ;2535
	jr l2556h		; 18 1d ;2537
l2539h:
	call sub_game_racket_update_hitbox		; cd bf 2b ;2539
	ld a,(ix + entity_t.facing_dir)		; dd 7e 16 ;253c
	ld b,(ix + entity_t.prev_facing_dir)		; dd 46 17 ;253f
	cp b			; b8 ;2542
	jr nz,l255ch		; 20 17 ;2543
	ld (ix + entity_t.render_facing_dir),a		; dd 77 20 ;2545
l2548h:
	ld a,(ix + entity_t.animation_flags_or_frame)		; dd 7e 23 ;2548
	and a			; a7 ;254b
	jr nz,l2556h		; 20 08 ;254c
	ld (ix + entity_t.animation_id),002h		; dd 36 22 02 ;254e
	ld (ix + entity_t.animation_flags_or_frame),0ffh		; dd 36 23 ff ;2552
l2556h:
	call sub_game_player_apply_movement		; cd a1 26 ;2556
	jp sub_game_player_update_animation		; c3 69 2a ;2559
l255ch:
	ld (ix + entity_t.action_state),005h		; dd 36 25 05 ;255c
	ret			; c9 ;2560
player_action_state_start_move:
	ld a,(ix + entity_t.action_state)		; dd 7e 25 ;2561
	bit 7,a		; cb 7f ;2564
	jr nz,l2581h		; 20 19 ;2566
	set 7,a		; cb ff ;2568
	ld (ix + entity_t.action_state),a		; dd 77 25 ;256a
	ld (ix + entity_t.animation_id),00ah		; dd 36 22 0a ;256d
	ld (ix + entity_t.animation_flags_or_frame),0ffh		; dd 36 23 ff ;2571
	call sub_game_racket_update_hitbox		; cd bf 2b ;2575
	ld a,(ix + entity_t.facing_dir)		; dd 7e 16 ;2578
	ld (ix + entity_t.prev_facing_dir),a		; dd 77 17 ;257b
	ld (ix + entity_t.render_facing_dir),a		; dd 77 20 ;257e
l2581h:
	call sub_game_player_apply_movement		; cd a1 26 ;2581
	call sub_game_player_update_animation		; cd 69 2a ;2584
	ld a,(ix + entity_t.animation_flags_or_frame)		; dd 7e 23 ;2587
	and a			; a7 ;258a
	ret nz			; c0 ;258b
	ld (ix + entity_t.action_state),003h		; dd 36 25 03 ;258c
	ret			; c9 ;2590
player_action_state_start_swing:
	ld a,(ix + entity_t.action_state)		; dd 7e 25 ;2591
	bit 7,a		; cb 7f ;2594
	jr nz,l25b1h		; 20 19 ;2596
	set 7,a		; cb ff ;2598
	ld (ix + entity_t.action_state),a		; dd 77 25 ;259a
	ld (ix + entity_t.animation_id),00ah		; dd 36 22 0a ;259d
	ld (ix + entity_t.animation_flags_or_frame),0ffh		; dd 36 23 ff ;25a1
	call sub_game_racket_update_hitbox		; cd bf 2b ;25a5
	ld a,(ix + entity_t.facing_dir)		; dd 7e 16 ;25a8
	ld (ix + entity_t.prev_facing_dir),a		; dd 77 17 ;25ab
	ld (ix + entity_t.render_facing_dir),a		; dd 77 20 ;25ae
l25b1h:
	call sub_game_player_apply_movement		; cd a1 26 ;25b1
	call sub_game_player_update_animation		; cd 69 2a ;25b4
	ld a,(ix + entity_t.animation_flags_or_frame)		; dd 7e 23 ;25b7
	and a			; a7 ;25ba
	ret nz			; c0 ;25bb
	ld (ix + entity_t.action_state),004h		; dd 36 25 04 ;25bc
	ret			; c9 ;25c0
player_action_state_turn_around:
	ld a,(ix + entity_t.action_state)		; dd 7e 25 ;25c1
	bit 7,a		; cb 7f ;25c4
	jr nz,l25ddh		; 20 15 ;25c6
	set 7,(ix + entity_t.action_state)		; dd cb 25 fe ;25c8
	call sub_game_racket_update_hitbox		; cd bf 2b ;25cc
	ld a,(ix + entity_t.facing_dir)		; dd 7e 16 ;25cf
	ld (ix + entity_t.render_facing_dir),a		; dd 77 20 ;25d2
	ld (ix + entity_t.animation_id),00bh		; dd 36 22 0b ;25d5
	ld (ix + entity_t.animation_flags_or_frame),0ffh		; dd 36 23 ff ;25d9
l25ddh:
	call sub_game_player_apply_movement		; cd a1 26 ;25dd
	call sub_game_player_update_animation		; cd 69 2a ;25e0
	ld a,(ix + entity_t.animation_flags_or_frame)		; dd 7e 23 ;25e3
	and a			; a7 ;25e6
	ret nz			; c0 ;25e7
	ld a,(ix + entity_t.facing_dir)		; dd 7e 16 ;25e8
	ld (ix + entity_t.prev_facing_dir),a		; dd 77 17 ;25eb
	ld (ix + entity_t.action_state),003h		; dd 36 25 03 ;25ee
	ret			; c9 ;25f2
player_action_state_swinging:
	ld a,(ix + entity_t.action_state)		; dd 7e 25 ;25f3
	bit 7,a		; cb 7f ;25f6
	jr nz,l2638h		; 20 3e ;25f8
	set 7,a		; cb ff ;25fa
	ld (ix + entity_t.action_state),a		; dd 77 25 ;25fc
	call sub_game_racket_evaluate_swing_type		; cd 13 2c ;25ff
	ld b,004h		; 06 04 ;2602
	ld c,01ch		; 0e 1c ;2604
	cp 003h		; fe 03 ;2606
	jr z,l2628h		; 28 1e ;2608
	ld b,a			; 47 ;260a
	ld a,(ix + entity_t.y_div_pos)		; dd 7e 2e ;260b
	cp 003h		; fe 03 ;260e
	jr c,l2614h		; 38 02 ;2610
	ld b,002h		; 06 02 ;2612
l2614h:
	ld a,b			; 78 ;2614
	ld b,009h		; 06 09 ;2615
	ld c,01ah		; 0e 1a ;2617
	and a			; a7 ;2619
	jr z,l2628h		; 28 0c ;261a
	ld b,005h		; 06 05 ;261c
	ld c,01bh		; 0e 1b ;261e
	cp 001h		; fe 01 ;2620
	jr z,l2628h		; 28 04 ;2622
	ld b,003h		; 06 03 ;2624
	ld c,01dh		; 0e 1d ;2626
l2628h:
	ld (ix + entity_t.animation_id),b		; dd 70 22 ;2628
	ld (ix + entity_t.swing_type_id),c		; dd 71 1f ;262b
	ld (ix + entity_t.animation_flags_or_frame),0ffh		; dd 36 23 ff ;262e
	ld a,(ix + entity_t.facing_dir)		; dd 7e 16 ;2632
	ld (ix + entity_t.render_facing_dir),a		; dd 77 20 ;2635
l2638h:
	call sub_game_player_apply_movement		; cd a1 26 ;2638
	call sub_game_racket_process_swing_contact		; cd 40 2c ;263b
	ld a,(ix + entity_t.animation_flags_or_frame)		; dd 7e 23 ;263e
	and a			; a7 ;2641
	jr z,l2648h		; 28 04 ;2642
	call sub_game_player_update_animation		; cd 69 2a ;2644
	ret			; c9 ;2647
l2648h:
	ld a,(ix + entity_t.ball_incoming)		; dd 7e 27 ;2648
	and a			; a7 ;264b
	ld a,000h		; 3e 00 ;264c
	jr z,l2652h		; 28 02 ;264e
	ld a,001h		; 3e 01 ;2650
l2652h:
	ld (ix + entity_t.action_state),a		; dd 77 25 ;2652
	ld (ix + entity_t.state_flags),000h		; dd 36 19 00 ;2655
	ld (ix + entity_t.racket_contact_flag),000h		; dd 36 1d 00 ;2659
	ret			; c9 ;265d

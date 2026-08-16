sub_game_player_read_input:
	ld a,(state.match_state_flags)		;265e
	bit 3,a		;2661
	jr z,l2678h		;2663
	ld a,(ix + entity_t.shot_button)		;2665
	rla			;2668
	rla			;2669
	rla			;266a
	rla			;266b
	and 030h		;266c
	ld e,(ix + entity_t.input_dirs)		;266e
	or e			;2671
	and 03fh		;2672
	ld c,a			;2674
	ret z			;2675
	xor a			;2676
	ret			;2677
l2678h:
	ld a,(joy.1.pressed)		;2678
	ld b,a			;267b
	ld a,(joy.1.current)		;267c
	ld c,a			;267f
	ld a,(ix + entity_t.id)		;2680
	and 002h		;2683
	jr z,l268fh		;2685
	ld a,(joy.2.pressed)		;2687
	ld b,a			;268a
	ld a,(joy.2.current)		;268b
	ld c,a			;268e
l268fh:
	ld a,b			;268f
	and 020h		;2690
	ld e,a			;2692
	ld a,c			;2693
	and 020h		;2694
	and e			;2696
	ret nz			;2697
	ld a,b			;2698
	and 010h		;2699
	ld e,a			;269b
	ld a,c			;269c
	and 010h		;269d
	and e			;269f
	ret			;26a0

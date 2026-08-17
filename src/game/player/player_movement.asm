sub_player_movement:
	xor a			;26cb
	ex af,af'			;26cc
	ld hl,BOUND_X_MIN_NEAR_STD		;26cd
	ld b,TYPE_HORIZ_ONLY_1		;26d0
	ld c,TYPE_HORIZ_ONLY_2		;26d2
	ld a,(ix + entity_t.state_index)		;26d4
	and ENT_TYPE_MASK		;26d7
	cp b			;26d9
	jr z,+		;26da
	cp c			;26dc
	jr nz,l2704h		;26dd
+:
	ld hl,BOUND_X_MIN_NEAR_LEFT		;26df
	ld a,(ix + entity_t.id)		;26e2
	and 1		;26e5
	jr nz,+		;26e7
	ld a,(state.match_state_flag)		;26e9
	and 1		;26ec
	jr nz,++		;26ee
	ld hl,BOUND_X_MIN_NEAR_RIGHT		;26f0
	jr ++		;26f3
+:
	ld hl,BOUND_X_MIN_FAR_LEFT		;26f5
	ld a,(state.match_state_flag)		;26f8
	and 1		;26fb
	jr z,++		;26fd
	ld hl,BOUND_X_MIN_FAR_RIGHT		;26ff
	jr ++		;2702
l2704h:
	ld a,(ix + entity_t.id)		;2704
	and 1		;2707
	jr z,++		;2709
	ld hl,BOUND_X_MIN_FAR_STD		;270b
++:
	ld (ix + entity_t.cache_x_min),l		;270e
	ld (ix + entity_t.cache_x_min + 1),h		;2711
	ld d,(ix + entity_t.x_pos + 1)		;2714
	ld a,(ix + entity_t.x_pos)		;2717
	ld b,DIR_LEFT		;271a
	sub l			;271c
	jr nc,+		;271d
	ld a,d			;271f
	sub 1		;2720
	ld d,a			;2722
	jr c,l2785h		;2723
+:
	ld a,d			;2725
	sub h			;2726
	jr c,l2785h		;2727
	ld hl,BOUND_X_MAX_NEAR_STD		;2729
	ld b,TYPE_HORIZ_ONLY_1		;272c
	ld c,TYPE_HORIZ_ONLY_2		;272e
	ld a,(ix + entity_t.state_index)		;2730
	and ENT_TYPE_MASK		;2733
	cp b			;2735
	jr z,+		;2736
	cp c			;2738
	jr nz,l2760h		;2739
+:
	ld hl,BOUND_X_MAX_NEAR_RIGHT		;273b
	ld a,(ix + entity_t.id)		;273e
	and 1		;2741
	jr nz,+		;2743
	ld a,(state.match_state_flag)		;2745
	and 1		;2748
	jr z,++		;274a
	ld hl,BOUND_X_MAX_NEAR_LEFT		;274c
	jr ++		;274f
+:
	ld hl,BOUND_X_MAX_FAR_RIGHT		;2751
	ld a,(state.match_state_flag)		;2754
	and 1		;2757
	jr nz,++		;2759
	ld hl,BOUND_X_MAX_FAR_LEFT		;275b
	jr ++		;275e
l2760h:
	ld a,(ix + entity_t.id)		;2760
	and 1		;2763
	jr z,++		;2765
	ld hl,BOUND_X_MAX_FAR_STD		;2767
++:
	ld (ix + entity_t.cache_x_max),l		;276a
	ld (ix + entity_t.cache_x_max + 1),h		;276d
	ld d,(ix + entity_t.x_pos + 1)		;2770
	ld a,(ix + entity_t.x_pos)		;2773
	sub l			;2776
	; Bug ?! (should probably be `jr nc` instead)
	jr c,+		;2777
	ld a,d			;2779
	sub 1		;277a
	ld d,a			;277c
	jr c,++		;277d
+:
	ld a,d			;277f
	sub h			;2780
	jr c,++		;2781
	ld b,DIR_RIGHT		;2783
l2785h:
	ex af,af'			;2785
	or b			;2786
	ex af,af'			;2787
++:
	ld hl,BOUND_Y_MIN_NEAR		;2788
	ld b,TYPE_HORIZ_ONLY_1		;278b
	ld c,TYPE_HORIZ_ONLY_2		;278d
	ld a,(ix + entity_t.state_index)		;278f
	and ENT_TYPE_MASK		;2792
	cp b			;2794
	jr z,l27e0h		;2795
	cp c			;2797
	jr z,l27e0h		;2798
	ld a,(ix + entity_t.id)		;279a
	and 1		;279d
	jr z,+		;279f
	ld hl,BOUND_Y_MIN_FAR		;27a1
+:
	ld d,(ix + entity_t.y_pos + 1)		;27a4
	ld a,(ix + entity_t.y_pos)		;27a7
	ld b,DIR_UP		;27aa
	sub l			;27ac
	jr nc,+		;27ad
	ld a,d			;27af
	sub 1		;27b0
	ld d,a			;27b2
	jr c,l27dbh		;27b3
+:
	ld a,d			;27b5
	sub h			;27b6
	jr c,l27dbh		;27b7
	ld hl,BOUND_Y_MAX_NEAR		;27b9
	ld a,(ix + entity_t.id)		;27bc
	and 1		;27bf
	jr z,+		;27c1
	ld hl,BOUND_Y_MAX_FAR		;27c3
+:
	ld d,(ix + entity_t.y_pos + 1)		;27c6
	ld a,(ix + entity_t.y_pos)		;27c9
	sub l			;27cc
	jr nc,+		;27cd
	ld a,d			;27cf
	sub 1		;27d0
	ld d,a			;27d2
	jr c,l27e4h		;27d3
+:
	ld a,d			;27d5
	sub h			;27d6
	jr c,l27e4h		;27d7
	ld b,DIR_DOWN		;27d9
l27dbh:
	ex af,af'			;27db
	or b			;27dc
	ex af,af'			;27dd
	jr l27e4h		;27de
l27e0h:
	ld b,DIR_UP | DIR_DOWN		;27e0
	jr l27dbh		;27e2
l27e4h:
	ld a,(ix + entity_t.tile_collision)		;27e4
	and DIR_MASK		;27e7
	ld b,a			;27e9
	ex af,af'			;27ea
	or b			;27eb
	cpl			;27ec
	ld b,(ix + entity_t.input_dirs)		;27ed
	and b			;27f0
	ld (ix + entity_t.allowed_dirs),a		;27f1
	ret			;27f4

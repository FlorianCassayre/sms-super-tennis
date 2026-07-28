sub_player_movement:
	xor a			; af ;26cb
	ex af,af'			; 08 ;26cc
	ld hl,BOUND_Y_MIN_VERT_OBJ		; 21 00 08 ;26cd
	ld b,TYPE_VERT_ONLY_1		; 06 03 ;26d0
	ld c,TYPE_VERT_ONLY_2		; 0e 09 ;26d2
	ld a,(ix + ENT_TYPE)		; dd 7e 02 ;26d4
	and ENT_TYPE_MASK		; e6 7f ;26d7
	cp b			; b8 ;26d9
	jr z,+		; 28 03 ;26da
	cp c			; b9 ;26dc
	jr nz,l2704h		; 20 25 ;26dd
+:
	ld hl,BOUND_Y_MIN_QUAD_A1		; 21 00 41 ;26df
	ld a,(ix + ENT_SIDE_STATE)		; dd 7e 01 ;26e2
	and 1		; e6 01 ;26e5
	jr nz,+		; 20 0c ;26e7
	ld a,(MATCH_STATE_FLAG)		; 3a 44 c0 ;26e9
	and 1		; e6 01 ;26ec
	jr nz,++		; 20 1e ;26ee
	ld hl,BOUND_Y_MIN_QUAD_A2		; 21 00 8d ;26f0
	jr ++		; 18 19 ;26f3
+:
	ld hl,BOUND_Y_MIN_QUAD_B1		; 21 00 60 ;26f5
	ld a,(MATCH_STATE_FLAG)		; 3a 44 c0 ;26f8
	and 1		; e6 01 ;26fb
	jr z,++		; 28 0f ;26fd
	ld hl,BOUND_Y_MIN_QUAD_B2		; 21 00 88 ;26ff
	jr ++		; 18 0a ;2702
l2704h:
	ld a,(ix + ENT_SIDE_STATE)		; dd 7e 01 ;2704
	and 1		; e6 01 ;2707
	jr z,++		; 28 03 ;2709
	ld hl,BOUND_Y_MIN_DEFAULT		; 21 80 36 ;270b
++:
	ld (ix + ENT_CACHE_Y_MIN),l		; dd 75 3c ;270e
	ld (ix + ENT_CACHE_Y_MIN + 1),h		; dd 74 3d ;2711
	ld d,(ix + ENT_Y_POS + 1)		; dd 56 0d ;2714
	ld a,(ix + ENT_Y_POS)		; dd 7e 0c ;2717
	ld b,DIR_UP		; 06 04 ;271a
	sub l			; 95 ;271c
	jr nc,+		; 30 06 ;271d
	ld a,d			; 7a ;271f
	sub 1		; d6 01 ;2720
	ld d,a			; 57 ;2722
	jr c,l2785h		; 38 60 ;2723
+:
	ld a,d			; 7a ;2725
	sub h			; 94 ;2726
	jr c,l2785h		; 38 5c ;2727
	ld hl,BOUND_Y_MAX_VERT_OBJ		; 21 00 f8 ;2729
	ld b,TYPE_VERT_ONLY_1		; 06 03 ;272c
	ld c,TYPE_VERT_ONLY_2		; 0e 09 ;272e
	ld a,(ix + ENT_TYPE)		; dd 7e 02 ;2730
	and ENT_TYPE_MASK		; e6 7f ;2733
	cp b			; b8 ;2735
	jr z,+		; 28 03 ;2736
	cp c			; b9 ;2738
	jr nz,l2760h		; 20 25 ;2739
+:
	ld hl,BOUND_Y_MAX_QUAD_A1		; 21 00 c0 ;273b
	ld a,(ix + ENT_SIDE_STATE)		; dd 7e 01 ;273e
	and 1		; e6 01 ;2741
	jr nz,+		; 20 0c ;2743
	ld a,(MATCH_STATE_FLAG)		; 3a 44 c0 ;2745
	and 1		; e6 01 ;2748
	jr z,++		; 28 1e ;274a
	ld hl,BOUND_Y_MAX_QUAD_A2		; 21 00 74 ;274c
	jr ++		; 18 19 ;274f
+:
	ld hl,BOUND_Y_MAX_QUAD_B1		; 21 00 9d ;2751
	ld a,(MATCH_STATE_FLAG)		; 3a 44 c0 ;2754
	and 1		; e6 01 ;2757
	jr nz,++		; 20 0f ;2759
	ld hl,BOUND_Y_MAX_QUAD_B2		; 21 00 76 ;275b
	jr ++		; 18 0a ;275e
l2760h:
	ld a,(ix + ENT_SIDE_STATE)		; dd 7e 01 ;2760
	and 1		; e6 01 ;2763
	jr z,++		; 28 03 ;2765
	ld hl,BOUND_Y_MAX_DEFAULT		; 21 ff c9 ;2767
++:
	ld (ix + ENT_CACHE_Y_MAX),l		; dd 75 3e ;276a
	ld (ix + ENT_CACHE_Y_MAX + 1),h		; dd 74 3f ;276d
	ld d,(ix + ENT_Y_POS + 1)		; dd 56 0d ;2770
	ld a,(ix + ENT_Y_POS)		; dd 7e 0c ;2773
	sub l			; 95 ;2776
	; Bug ?! (should probably be `jr nc` instead)
	jr c,+		; 38 06 ;2777
	ld a,d			; 7a ;2779
	sub 1		; d6 01 ;277a
	ld d,a			; 57 ;277c
	jr c,++		; 38 09 ;277d
+:
	ld a,d			; 7a ;277f
	sub h			; 94 ;2780
	jr c,++		; 38 05 ;2781
	ld b,DIR_DOWN		; 06 08 ;2783
l2785h:
	ex af,af'			; 08 ;2785
	or b			; b0 ;2786
	ex af,af'			; 08 ;2787
++:
	ld hl,BOUND_X_MIN_RIGHT_HALF		; 21 00 6c ;2788
	ld b,TYPE_VERT_ONLY_1		; 06 03 ;278b
	ld c,TYPE_VERT_ONLY_2		; 0e 09 ;278d
	ld a,(ix + ENT_TYPE)		; dd 7e 02 ;278f
	and ENT_TYPE_MASK		; e6 7f ;2792
	cp b			; b8 ;2794
	jr z,l27e0h		; 28 49 ;2795
	cp c			; b9 ;2797
	jr z,l27e0h		; 28 46 ;2798
	ld a,(ix + ENT_SIDE_STATE)		; dd 7e 01 ;279a
	and 1		; e6 01 ;279d
	jr z,+		; 28 03 ;279f
	ld hl,BOUND_X_MIN_LEFT_HALF		; 21 00 1d ;27a1
+:
	ld d,(ix + ENT_X_POS + 1)		; dd 56 0b ;27a4
	ld a,(ix + ENT_X_POS)		; dd 7e 0a ;27a7
	ld b,DIR_LEFT		; 06 01 ;27aa
	sub l			; 95 ;27ac
	jr nc,+		; 30 06 ;27ad
	ld a,d			; 7a ;27af
	sub 1		; d6 01 ;27b0
	ld d,a			; 57 ;27b2
	jr c,l27dbh		; 38 26 ;27b3
+:
	ld a,d			; 7a ;27b5
	sub h			; 94 ;27b6
	jr c,l27dbh		; 38 22 ;27b7
	ld hl,BOUND_X_MAX_RIGHT_HALF		; 21 00 cb ;27b9
	ld a,(ix + ENT_SIDE_STATE)		; dd 7e 01 ;27bc
	and 1		; e6 01 ;27bf
	jr z,+		; 28 03 ;27c1
	ld hl,BOUND_X_MAX_LEFT_HALF		; 21 ff 4c ;27c3
+:
	ld d,(ix + ENT_X_POS + 1)		; dd 56 0b ;27c6
	ld a,(ix + ENT_X_POS)		; dd 7e 0a ;27c9
	sub l			; 95 ;27cc
	jr nc,+		; 30 06 ;27cd
	ld a,d			; 7a ;27cf
	sub 1		; d6 01 ;27d0
	ld d,a			; 57 ;27d2
	jr c,l27e4h		; 38 0f ;27d3
+:
	ld a,d			; 7a ;27d5
	sub h			; 94 ;27d6
	jr c,l27e4h		; 38 0b ;27d7
	ld b,DIR_RIGHT		; 06 02 ;27d9
l27dbh:
	ex af,af'			; 08 ;27db
	or b			; b0 ;27dc
	ex af,af'			; 08 ;27dd
	jr l27e4h		; 18 04 ;27de
l27e0h:
	ld b,DIR_LEFT | DIR_RIGHT		; 06 03 ;27e0
	jr l27dbh		; 18 f7 ;27e2
l27e4h:
	ld a,(ix + ENT_TILE_COLLISION)		; dd 7e 2d ;27e4
	and DIR_MASK		; e6 0f ;27e7
	ld b,a			; 47 ;27e9
	ex af,af'			; 08 ;27ea
	or b			; b0 ;27eb
	cpl			; 2f ;27ec
	ld b,(ix + ENT_INPUT_DIRS)		; dd 46 15 ;27ed
	and b			; a0 ;27f0
	ld (ix + ENT_ALLOWED_DIRS),a		; dd 77 12 ;27f1
	ret			; c9 ;27f4

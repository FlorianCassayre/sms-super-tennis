sub_apply_player_movement:
	xor a			; af ;27f5
	ld (TEMP_VEL_SHIFT_MULT),a		; 32 02 c4 ;27f6
	bit 0,(ix + ENT_SIDE_STATE)		; dd cb 01 46 ;27f9
	jr nz,l2819h		; 20 1a ;27fd
	ld hl,table_player_velocity_top_a		; 21 b1 28 ;27ff
	ld a,(P1_SPEED_STATE_A)		; 3a 47 c0 ;2802
	call sub_lookup_player_velocity		; cd 21 28 ;2805
	ld hl,table_player_velocity_top_b		; 21 35 29 ;2808
	ld a,(P1_SPEED_STATE_A)		; 3a 47 c0 ;280b
	ld (TEMP_VEL_SHIFT_MULT),a		; 32 02 c4 ;280e
	ld a,(P1_SPEED_STATE_B)		; 3a 49 c0 ;2811
	and a			; a7 ;2814
	ret z			; c8 ;2815
	dec a			; 3d ;2816
	jr sub_lookup_player_velocity		; 18 08 ;2817
l2819h:
	ld hl,table_player_velocity_bottom		; 21 8d 29 ;2819
	ld a,(P2_SPEED_STATE)		; 3a 4a c0 ;281c
	and $07		; e6 07 ;281f
sub_lookup_player_velocity:
	ld e,a			; 5f ;2821
	ld a,e			; 7b ;2822
	add a,a			; 87 ;2823
	ld d,a			; 57 ;2824
	add a,a			; 87 ;2825
	add a,a			; 87 ;2826
	add a,d			; 82 ;2827
	add a,e			; 83 ;2828
	add a,a			; 87 ;2829
	add a,a			; 87 ;282a
	ld e,a			; 5f ;282b
	ld a,(ix + ENT_ALLOWED_DIRS)		; dd 7e 12 ;282c
	and $0F		; e6 0f ;282f
	cp $0B		; fe 0b ;2831
	jr c,l2836h		; 38 01 ;2833
	xor a			; af ;2835
l2836h:
	add a,a			; 87 ;2836
	add a,a			; 87 ;2837
	ld d,$00		; 16 00 ;2838
	add a,e			; 83 ;283a
	ld e,a			; 5f ;283b
	jr nc,l283fh		; 30 01 ;283c
	inc d			; 14 ;283e
l283fh:
	add hl,de			; 19 ;283f
	push hl			; e5 ;2840
	push ix		; dd e5 ;2841
	pop hl			; e1 ;2843
	ld de,ENT_X_VEL		; 11 0e 00 ;2844
	add hl,de			; 19 ;2847
	ex de,hl			; eb ;2848
	pop hl			; e1 ;2849
	ld bc,$0004		; 01 04 00 ;284a
	ldir		; ed b0 ;284d
	ld e,(ix + ENT_Y_POS)		; dd 5e 0c ;284f
	ld d,(ix + ENT_Y_POS + 1)		; dd 56 0d ;2852
	ld l,(ix + ENT_Y_VEL)		; dd 6e 10 ;2855
	ld h,(ix + ENT_Y_VEL + 1)		; dd 66 11 ;2858
	ld a,(TEMP_VEL_SHIFT_MULT)		; 3a 02 c4 ;285b
l285eh:
	sub 1		; d6 01 ;285e
	jp c,l2867h		; da 67 28 ;2860
	add hl,hl			; 29 ;2863
	jp l285eh		; c3 5e 28 ;2864
l2867h:
	add hl,de			; 19 ;2867
	ld (ix + ENT_Y_POS),l		; dd 75 0c ;2868
	ld (ix + ENT_Y_POS + 1),h		; dd 74 0d ;286b
	ld e,(ix + ENT_CACHE_Y_MIN)		; dd 5e 3c ;286e
	ld d,(ix + ENT_CACHE_Y_MIN + 1)		; dd 56 3d ;2871
	ld c,l			; 4d ;2874
	ld b,h			; 44 ;2875
	xor a			; af ;2876
	sbc hl,de		; ed 52 ;2877
	jr c,l2888h		; 38 0d ;2879
	ld e,(ix + ENT_CACHE_Y_MAX)		; dd 5e 3e ;287b
	ld d,(ix + ENT_CACHE_Y_MAX + 1)		; dd 56 3f ;287e
	ld l,c			; 69 ;2881
	ld h,b			; 60 ;2882
	xor a			; af ;2883
	sbc hl,de		; ed 52 ;2884
	jr c,l288eh		; 38 06 ;2886
l2888h:
	ld (ix + ENT_Y_POS),e		; dd 73 0c ;2888
	ld (ix + ENT_Y_POS + 1),d		; dd 72 0d ;288b
l288eh:
	ld e,(ix + ENT_X_POS)		; dd 5e 0a ;288e
	ld d,(ix + ENT_X_POS + 1)		; dd 56 0b ;2891
	ld l,(ix + ENT_X_VEL)		; dd 6e 0e ;2894
	ld h,(ix + ENT_X_VEL + 1)		; dd 66 0f ;2897
	ld a,(TEMP_VEL_SHIFT_MULT)		; 3a 02 c4 ;289a
l289dh:
	sub 1		; d6 01 ;289d
	jp c,l28a6h		; da a6 28 ;289f
	add hl,hl			; 29 ;28a2
	jp l289dh		; c3 9d 28 ;28a3
l28a6h:
	add hl,de			; 19 ;28a6
	ld (ix + ENT_X_POS),l		; dd 75 0a ;28a7
	ld (ix + ENT_X_POS + 1),h		; dd 74 0b ;28aa
	ld (ix + ENT_X_POS_CACHE),h		; dd 74 14 ;28ad
	ret			; c9 ;28b0

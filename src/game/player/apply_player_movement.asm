sub_apply_player_movement:
	xor a			;27f5
	ld (TEMP_VEL_SHIFT_MULT),a		;27f6
	bit 0,(ix + entity_t.id)		;27f9
	jr nz,l2819h		;27fd
	ld hl,game_level_speed_base_table.asm		;27ff
	ld a,(game.settings.speed_level)		;2802
	call sub_lookup_player_velocity		;2805
	ld hl,game_level_control_boost_table		;2808
	ld a,(game.settings.speed_level)		;280b
	ld (TEMP_VEL_SHIFT_MULT),a		;280e
	ld a,(game.settings.player_type)		;2811
	and a			;2814
	ret z			;2815
	dec a			;2816
	jr sub_lookup_player_velocity		;2817
l2819h:
	ld hl,game_level_cpu_velocity_table		;2819
	ld a,(game.settings.computer_level)		;281c
	and $07		;281f
sub_lookup_player_velocity:
	ld e,a			;2821
	ld a,e			;2822
	add a,a			;2823
	ld d,a			;2824
	add a,a			;2825
	add a,a			;2826
	add a,d			;2827
	add a,e			;2828
	add a,a			;2829
	add a,a			;282a
	ld e,a			;282b
	ld a,(ix + entity_t.allowed_dirs)		;282c
	and $0F		;282f
	cp $0B		;2831
	jr c,l2836h		;2833
	xor a			;2835
l2836h:
	add a,a			;2836
	add a,a			;2837
	ld d,$00		;2838
	add a,e			;283a
	ld e,a			;283b
	jr nc,l283fh		;283c
	inc d			;283e
l283fh:
	add hl,de			;283f
	push hl			;2840
	push ix		;2841
	pop hl			;2843
	ld de,entity_t.y_vel		;2844
	add hl,de			;2847
	ex de,hl			;2848
	pop hl			;2849
	ld bc,$0004		;284a
	ldir		;284d
	ld e,(ix + entity_t.x_pos)		;284f
	ld d,(ix + entity_t.x_pos + 1)		;2852
	ld l,(ix + entity_t.x_vel)		;2855
	ld h,(ix + entity_t.x_vel + 1)		;2858
	ld a,(TEMP_VEL_SHIFT_MULT)		;285b
l285eh:
	sub 1		;285e
	jp c,l2867h		;2860
	add hl,hl			;2863
	jp l285eh		;2864
l2867h:
	add hl,de			;2867
	ld (ix + entity_t.x_pos),l		;2868
	ld (ix + entity_t.x_pos + 1),h		;286b
	ld e,(ix + entity_t.cache_x_min)		;286e
	ld d,(ix + entity_t.cache_x_min + 1)		;2871
	ld c,l			;2874
	ld b,h			;2875
	xor a			;2876
	sbc hl,de		;2877
	jr c,l2888h		;2879
	ld e,(ix + entity_t.cache_x_max)		;287b
	ld d,(ix + entity_t.cache_x_max + 1)		;287e
	ld l,c			;2881
	ld h,b			;2882
	xor a			;2883
	sbc hl,de		;2884
	jr c,l288eh		;2886
l2888h:
	ld (ix + entity_t.x_pos),e		;2888
	ld (ix + entity_t.x_pos + 1),d		;288b
l288eh:
	ld e,(ix + entity_t.y_pos)		;288e
	ld d,(ix + entity_t.y_pos + 1)		;2891
	ld l,(ix + entity_t.y_vel)		;2894
	ld h,(ix + entity_t.y_vel + 1)		;2897
	ld a,(TEMP_VEL_SHIFT_MULT)		;289a
l289dh:
	sub 1		;289d
	jp c,l28a6h		;289f
	add hl,hl			;28a2
	jp l289dh		;28a3
l28a6h:
	add hl,de			;28a6
	ld (ix + entity_t.y_pos),l		;28a7
	ld (ix + entity_t.y_pos + 1),h		;28aa
	ld (ix + entity_t.y_pos_cache),h		;28ad
	ret			;28b0

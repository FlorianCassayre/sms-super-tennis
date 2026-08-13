sub_game_player_update_animation:
	ld a,(ix + entity_t.animation_flags_or_frame)		;2a69
	and a			;2a6c
	ret z			;2a6d
	ld a,(ix+022h)		;2a6e
	bit 7,a		;2a71
	jr nz,+++		;2a73
	set 7,(ix+022h)		;2a75
	ld e,a			;2a79
	ld a,(ix + entity_t.id)		;2a7a
	ld c,a			;2a7d
	and 001h		;2a7e
	ld b,000h		;2a80
	jr z,+		;2a82
	ld b,018h		;2a84
	jr ++		;2a86
+:
	ld a,c			;2a88
	and 002h		;2a89
	jr z,++		;2a8b
	ld b,00ch		;2a8d
++:
	ld a,(ix + entity_t.render_facing_dir)		;2a8f
	and 001h		;2a92
	jr z,+		;2a94
	ld a,024h		;2a96
+:
	add a,e			;2a98
	add a,b			;2a99
	add a,a			;2a9a
	ld e,a			;2a9b
	ld d,000h		;2a9c
	ld hl,data_animation_attributes		;2a9e
	add hl,de			;2aa1
	ld e,(hl)			;2aa2
	inc hl			;2aa3
	ld d,(hl)			;2aa4
	ex de,hl			;2aa5
	ld a,(hl)			;2aa6
	ld (ix+009h),a		;2aa7
	inc hl			;2aaa
	ld e,(hl)			;2aab
	ld a,(0c04ah)		;2aac
	rra			;2aaf
	and 003h		;2ab0
	ld d,a			;2ab2
	ld a,e			;2ab3
	sub d			;2ab4
	ld (ix + entity_t.state_flags),a		;2ab5
	inc hl			;2ab8
	ld a,(hl)			;2ab9
	ld (ix + entity_t.time_before_serve),a		;2aba
	inc hl			;2abd
	ld a,(hl)			;2abe
	ld (ix+01bh),a		;2abf
	inc hl			;2ac2
	ld a,(hl)			;2ac3
	ld (ix+01eh),a		;2ac4
	inc hl			;2ac7
	ld (ix + entity_t.maybe_sprite_id),l		;2ac8
	ld (ix+02ch),h		;2acb
	ld a,(hl)			;2ace
	ld (ix+004h),a		;2acf
	inc hl			;2ad2
	ld a,(hl)			;2ad3
	sub d			;2ad4
	jr z,+		;2ad5
	jr nc,++		;2ad7
+:
	ld a,001h		;2ad9
++:
	ld (ix+008h),a		;2adb
	ret			;2ade
+++:
	bit 7,(ix + entity_t.state_flags)		;2adf
	jr z,+		;2ae3
	ld a,(ix + entity_t.time_before_serve)		;2ae5
	sub 001h		;2ae8
	jr c,++		;2aea
	ld (ix + entity_t.time_before_serve),a		;2aec
+:
	dec (ix + entity_t.state_flags)		;2aef
++:
	dec (ix+008h)		;2af2
	ret nz			;2af5
	dec (ix+009h)		;2af6
	jr nz,+		;2af9
	ld (ix + entity_t.animation_flags_or_frame),000h		;2afb
	ret			;2aff
+:
	ld l,(ix + entity_t.maybe_sprite_id)		;2b00
	ld h,(ix+02ch)		;2b03
	inc hl			;2b06
	inc hl			;2b07
	ld (ix + entity_t.maybe_sprite_id),l		;2b08
	ld (ix+02ch),h		;2b0b
	ld a,(hl)			;2b0e
	ld (ix+004h),a		;2b0f
	inc hl			;2b12
	ld a,(hl)			;2b13
	ld e,a			;2b14
	ld a,(0c04ah)		;2b15
	rra			;2b18
	and 003h		;2b19
	ld d,a			;2b1b
	ld a,e			;2b1c
	sub d			;2b1d
	jr z,+		;2b1e
	jr nc,++		;2b20
+:
	ld a,001h		;2b22
++:
	ld (ix+008h),a		;2b24
	ld a,(ix + entity_t.state_flags)		;2b27
	sub d			;2b2a
	ld (ix + entity_t.state_flags),a		;2b2b
	ret			;2b2e

sub_game_entity_animation_update_frame:
	ld a,(ix + entity_t.sprite_id)		;0642
	add a,a			;0645
	ld e,a			;0646
	ld d,000h		;0647
	ld hl,game_entity_animation_frame_data		;0649
	add hl,de			;064c
	ld e,(hl)			;064d
	inc hl			;064e
	ld d,(hl)			;064f
	ld a,(de)			;0650
	ld (ix+005h),a		;0651
	inc de			;0654
	ld (ix+006h),e		;0655
	ld (ix+007h),d		;0658
	ret			;065b

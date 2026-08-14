sub_game_entity_render_all:
	call sub_game_entity_y_ordering		;051a
	xor a			;051d
l051eh:
	ld e,a			;051e
	ld d,000h		;051f
	push af			;0521
	ld hl,state.z_order_array		;0522
	add hl,de			;0525
	ld a,(hl)			;0526
	add a,a			;0527
	ld e,a			;0528
	ld d,000h		;0529
	ld hl,l074fh_memory_table		;052b
	add hl,de			;052e
	ld e,(hl)			;052f
	inc hl			;0530
	ld d,(hl)			;0531
	push de			;0532
	pop ix		;0533
	ld a,(ix+002h)		;0535
	or a			;0538
	jr z,l053eh		;0539
	call sub_game_entity_render_one		;053b
l053eh:
	pop af			;053e
	inc a			;053f
	cp 006h		;0540
	jr nz,l051eh		;0542
	jp sub_graphics_sprite_clean_unused		;0544

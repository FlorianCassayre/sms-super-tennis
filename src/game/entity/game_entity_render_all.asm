sub_game_entity_render_all:
	call sub_game_entity_y_ordering		; cd cc 05 ;051a
	xor a			; af ;051d
l051eh:
	ld e,a			; 5f ;051e
	ld d,000h		; 16 00 ;051f
	push af			; f5 ;0521
	ld hl,state.z_order_array		; 21 c4 c1 ;0522
	add hl,de			; 19 ;0525
	ld a,(hl)			; 7e ;0526
	add a,a			; 87 ;0527
	ld e,a			; 5f ;0528
	ld d,000h		; 16 00 ;0529
	ld hl,l074fh_memory_table		; 21 4f 07 ;052b
	add hl,de			; 19 ;052e
	ld e,(hl)			; 5e ;052f
	inc hl			; 23 ;0530
	ld d,(hl)			; 56 ;0531
	push de			; d5 ;0532
	pop ix		; dd e1 ;0533
	ld a,(ix+002h)		; dd 7e 02 ;0535
	or a			; b7 ;0538
	jr z,l053eh		; 28 03 ;0539
	call sub_game_entity_render_one		; cd 47 05 ;053b
l053eh:
	pop af			; f1 ;053e
	inc a			; 3c ;053f
	cp 006h		; fe 06 ;0540
	jr nz,l051eh		; 20 da ;0542
	jp sub_graphics_clean_unused_sprites		; c3 a1 05 ;0544

sub_game_entity_render_one:
	ld a,(state.current_sprite_index)		;0547
	ld e,a			;054a
	ld d,000h		;054b
	add a,(ix + entity_t.sprite_count)		;054d
	cp 040h		;0550
	ret nc			;0552
	ld hl,state.sat_y_buffer		;0553
	add hl,de			;0556
	push hl			;0557
	ld hl,state.sat_xc_buffer		;0558
	add hl,de			;055b
	add hl,de			;055c
	exx			;055d
	pop hl			;055e
	ld e,(ix + entity_t.sprite_data_ptr)		;055f
	ld d,(ix + entity_t.sprite_data_ptr + 1)		;0562
	ld b,(ix + entity_t.sprite_count)		;0565
l0568h:
	ld a,(de)			;0568
	add a,(ix + entity_t.y_pos + 1)		;0569
	cp 0d0h		;056c
	jr nz,+		;056e
	ld a,0d8h		;0570
+:
	ld (hl),a			;0572
	inc de			;0573
	ld a,(de)			;0574
	ex af,af'			;0575
	inc de			;0576
	ld a,(de)			;0577
	inc de			;0578
	exx			;0579
	ex af,af'			;057a
	ld c,(ix + entity_t.x_pos + 1)		;057b
	bit 7,a		;057e
	jr z,+		;0580
	add a,c			;0582
	ld (hl),a			;0583
	jr c,+++		;0584
	jr ++		;0586
+:
	add a,c			;0588
	ld (hl),a			;0589
	jr nc,+++		;058a
++:
	exx			;058c
	ld (hl),0d8h		;058d
	exx			;058f
+++:
	inc hl			;0590
	ex af,af'			;0591
	ld (hl),a			;0592
	inc hl			;0593
	exx			;0594
	inc hl			;0595
	djnz l0568h		;0596
	ld a,(ix + entity_t.sprite_count)		;0598
	ld hl,0c080h		;059b
	add a,(hl)			;059e
	ld (hl),a			;059f
	ret			;05a0

sub_vdp_build_sprite_buffer:
	ld hl,state.sat_xc_buffer
	exx
	ld hl,state.sat_y_buffer
	ld c,033h
	ld b,020h
	exx
	xor a
	ld (0c492h),a
	ld b,003h
	ld de,state.settings
-:
	push bc
	ld a,(score.settings_cursor_y)
	ld b,a
	ld a,(0c492h)
	cp b
	jr nz,+
	ld a,(score.tick_counter)
	and 01fh
	cp 00fh
	jp c,++
+:
	ld c,028h
	ld b,084h
	ld a,(de)
	call sub_mul_a_c_add_b
	call sub_graphics_sprite_apply_xy_offset
++:
	exx
	ld a,c
	add a,b
	ld c,a
	exx
	inc de
	ld a,(0c492h)
	inc a
	ld (0c492h),a
	pop bc
	djnz -
	ld a,(score.settings_cursor_y)
	ld b,a
	ld a,(0c492h)
	cp b
	jr nz,+
	ld a,(score.tick_counter)
	and 01fh
	cp 00fh
	jp c,++
+:
	ld c,020h
	ld b,03ch
	ld a,(de)
	call sub_mul_a_c_add_b
	exx
	ld c,09bh
	exx
	call sub_graphics_sprite_apply_xy_offset
++:
	ld a,0d0h
	ld (hl),a
	exx
	ld (hl),a
	exx
	ld hl,state.sound_wait_flag
	set 7,(hl)
	ei
	ret

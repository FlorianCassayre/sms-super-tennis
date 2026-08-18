sub_graphics_tile_draw_sequential_row:
	di
	ld a,l
	out (O_VDP_CTRL),a
	ld a,h
	set 6,a
	out (O_VDP_CTRL),a
	ld a,b
	cp 002h
	jr c,+
	ld a,d
	jr ++
+:
	ld a,e
++:
-:
	inc a
	out (IO_VDP_DATA),a
	ex (sp),hl
	ex (sp),hl
	ex (sp),hl
	ex (sp),hl
	ld a,001h
	out (IO_VDP_DATA),a
	ex (sp),hl
	ex (sp),hl
	ex (sp),hl
	ex (sp),hl
	ld a,e
	djnz -
	ei
	ret

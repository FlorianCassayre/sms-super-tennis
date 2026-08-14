sub_graphics_tile_draw_sequential_row:
	di			;3192
	ld a,l			;3193
	out (O_VDP_CTRL),a		;3194
	ld a,h			;3196
	set 6,a		;3197
	out (O_VDP_CTRL),a		;3199
	ld a,b			;319b
	cp 002h		;319c
	jr c,+		;319e
	ld a,d			;31a0
	jr ++		;31a1
+:
	ld a,e			;31a3
++:
-:
	inc a			;31a4
	out (IO_VDP_DATA),a		;31a5
	ex (sp),hl			;31a7
	ex (sp),hl			;31a8
	ex (sp),hl			;31a9
	ex (sp),hl			;31aa
	ld a,001h		;31ab
	out (IO_VDP_DATA),a		;31ad
	ex (sp),hl			;31af
	ex (sp),hl			;31b0
	ex (sp),hl			;31b1
	ex (sp),hl			;31b2
	ld a,e			;31b3
	djnz -		;31b4
	ei			;31b6
	ret			;31b7

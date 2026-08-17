; Conditionally set color palette $00 to $2a
sub_graphics_palette_secondary_update_conditionally_first:
	ld a,(state.unknown_flag)		;0268
	or a			;026b
	ret z			;026c
	ld a,010h		;026d
	out (O_VDP_CTRL),a		;026f
	ld a,0c0h		;0271
	out (O_VDP_CTRL),a		;0273
	ld a,(game_court_palette_secondary)		;0275
	out (IO_VDP_DATA),a		;0278
	ret			;027a

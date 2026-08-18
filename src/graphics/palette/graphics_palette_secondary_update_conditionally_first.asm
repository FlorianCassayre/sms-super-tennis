; Conditionally set color palette $00 to $2a
sub_graphics_palette_secondary_update_conditionally_first:
	ld a,(state.unknown_flag)
	or a
	ret z
	ld a,010h
	out (O_VDP_CTRL),a
	ld a,0c0h
	out (O_VDP_CTRL),a
	ld a,(game_court_palette_secondary)
	out (IO_VDP_DATA),a
	ret

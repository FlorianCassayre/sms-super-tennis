sub_graphics_palette_swap_flags:
	ld hl,state.main_game_state
	bit 6,(hl)
	ret z
	bit 5,(hl)
	ret nz

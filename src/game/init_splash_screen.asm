sub_init_splash_screen:
	ld hl,state.main_game_state
	bit 6,(hl)
	jr nz,l0eefh
	set 6,(hl)
	ld a,(state.hardware_type)
	or a
	jr nz,l0ef3h_hardware_sms
	di
	call sub_disable_display
	call sub_graphics_name_fill_blank_tile
	ld hl,l2c00h
	ld de,data.mark3
	ld bc,224
	ld a,001h
	call sub_graphics_tile_expand_1bpp_ram_to_vdp
	ld hl,VDP_NAME_TABLE_ADDRESS(7, 10)
	ld de,data.mark3_name
	ld bc,(2 << 8) | 19
	call sub_load_vram_rect
	xor a
	ld (state.unknown_flag),a
	call sub_enable_display
	ei
	ld hl,000f0h
	ld (state.pause_counter),hl
	ret
l0eefh:
	call sub_decrement_pause_counter
	ret nz
l0ef3h_hardware_sms:
	ld hl,state.main_game_state
	ld (hl),GAME_FSM_BASE | game_fsm_state_t.gui_splash_draw
	ret

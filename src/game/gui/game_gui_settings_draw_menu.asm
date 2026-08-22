sub_game_gui_settings_draw_menu:
	ld hl,state.main_game_state
	bit 6,(hl)
	jp nz,+
	set 6,(hl)
	di
	call sub_disable_display
	call sub_graphics_name_fill_blank_tile
	ld de,0
	ld hl,game_player_patterns
	call sub_rle_decompress_bitplanes_to_vram
	ld hl,state.settings
	ld b,_sizeof_game_settings_t
	xor a
-:
	ld (hl),a
	inc hl
	djnz -
	ld (score.settings_cursor_y),a
	ld (score.tick_counter),a
	call sub_get_joy_p1
	ld (score.settings_joystick),a
	ld (score.settings_joystick_previous),a
	ld hl,VDP_NAME_TABLE_ADDRESS(3, 2)
	ld de,data.umpire_settings.player_level_select
	ld bc,38
	call sub_cp_ram_vram
	ld hl,VDP_NAME_TABLE_ADDRESS(5, 5)
	ld de,data.umpire_settings.speed_level
	ld bc,32
	call sub_cp_ram_vram
	ld hl,VDP_NAME_TABLE_ADDRESS(17, 7)
	ld de,data.umpire_settings.answer_abc
	ld bc,22
	call sub_cp_ram_vram
	ld hl,VDP_NAME_TABLE_ADDRESS(5, 9)
	ld de,data.umpire_settings.control_level
	ld bc,32
	call sub_cp_ram_vram
	ld hl,VDP_NAME_TABLE_ADDRESS(17, 11)
	ld de,data.umpire_settings.answer_abc
	ld bc,22
	call sub_cp_ram_vram
	ld hl,VDP_NAME_TABLE_ADDRESS(5, 13)
	ld de,data.umpire_settings.player_type
	ld bc,28
	call sub_cp_ram_vram
	ld hl,VDP_NAME_TABLE_ADDRESS(17, 15)
	ld de,data.umpire_settings.answer_abc
	ld bc,22
	call sub_cp_ram_vram
	ld hl,VDP_NAME_TABLE_ADDRESS(3, 18)
	ld de,data.umpire_settings.computer_level_select
	ld bc,42
	call sub_cp_ram_vram
	ld hl,VDP_NAME_TABLE_ADDRESS(8, 20)
	ld de,data.umpire_settings.answer_12345
	ld bc,34
	call sub_cp_ram_vram
	call sub_enable_display
	xor a
	ld (score.set_current_index),a
	ld (score.sets_won_top),a
	ld (score.sets_won_bottom),a
	ei
	ret
+:
	call sub_vdp_build_sprite_buffer
	ld hl,score.tick_counter
	inc (hl)
	ld hl,score.settings_joystick_previous
	call sub_get_joy_p1
	cp (hl)
	ret z
	dec hl
	cp (hl)
	jp z,sub_game_gui_settings_handle_control
	ld (hl),a
	xor a
	ld (score.menu_key_repeat_timer),a
	ret

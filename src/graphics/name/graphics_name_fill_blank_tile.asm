sub_graphics_name_fill_blank_tile:
	; Fill screen with blank tiles
	ld hl,VDP_NAME_TABLE_ADDRESS_BASE
	ld de,blank_tile_data
	ld bc,VDP_NAME_TABLE_ROWS * VDP_NAME_TABLE_COLUMNS
	call sub_vram_fill_word

	; Hide sprites
	ld hl,VDP_SPRITE_ATTRIBUTE_ADDRESS_BASE
	ld de,sprite_y_position_hidden
	ld bc,VDP_SPRITES + VDP_SPRITES
	jp sub_vram_fill_byte

sub_graphics_name_fill_blank_tile:
	; Fill screen with blank tiles
	ld hl,VDP_NAME_TABLE_ADDRESS_BASE		;0388
	ld de,blank_tile_data		;038b
	ld bc,VDP_NAME_TABLE_ROWS * VDP_NAME_TABLE_COLUMNS		;038e
	call sub_vram_fill_word		;0391

	; Hide sprites
	ld hl,VDP_SPRITE_ATTRIBUTE_ADDRESS_BASE		;0394
	ld de,sprite_y_position_hidden		;0397
	ld bc,VDP_SPRITES + VDP_SPRITES		;039a
	jp sub_vram_fill_byte		;039d

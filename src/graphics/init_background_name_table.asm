sub_init_background_name_table:
	; Fill screen with blank tiles
	ld hl,VDP_NAME_TABLE_ADDRESS_BASE		; 21 00 38 ;0388
	ld de,blank_tile_data		; 11 85 03 ;038b
	ld bc,VDP_NAME_TABLE_ROWS * VDP_NAME_TABLE_COLUMNS		; 01 80 03 ;038e
	call sub_vram_fill_word		; cd 50 04 ;0391

	; Hide sprites
	ld hl,VDP_SPRITE_ATTRIBUTE_ADDRESS_BASE		; 21 00 3f ;0394
	ld de,sprite_y_position_hidden		; 11 87 03 ;0397
	ld bc,VDP_SPRITES + VDP_SPRITES		; 01 40 00 ;039a
	jp sub_vram_fill_byte		; c3 40 04 ;039d

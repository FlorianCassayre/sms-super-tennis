sub_game_umpire_head_rotation:
	ld a,(state.match_state_flags)
	bit 2,a
	ret z
	ld a,(score.ball_y_sector)
	add a,a
	ld e,a
	ld d,0
	ld hl,@table
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,VDP_NAME_TABLE_ADDRESS(4, 8)
	ld bc,2
	jp sub_cp_ram_vram

@table:
	.DW game_umpire_head_rotation_direction_top
	.DW game_umpire_head_rotation_direction_middle
	.DW game_umpire_head_rotation_direction_bottom

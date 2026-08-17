sub_game_umpire_head_rotation:
	ld a,(state.match_state_flags)		;3543
	bit 2,a		;3546
	ret z			;3548
	ld a,(score.ball_y_sector)		;3549
	add a,a			;354c
	ld e,a			;354d
	ld d,0		;354e
	ld hl,@table		;3550
	add hl,de			;3553
	ld e,(hl)			;3554
	inc hl			;3555
	ld d,(hl)			;3556
	ld hl,VDP_NAME_TABLE_ADDRESS(4, 8)		;3557
	ld bc,2		;355a
	jp sub_cp_ram_vram		;355d

@table:
	.DW game_umpire_head_rotation_direction_top		;3560
	.DW game_umpire_head_rotation_direction_middle		;3562
	.DW game_umpire_head_rotation_direction_bottom		;3564

sub_game_player_action_update_top:
	bit 7,(ix+002h)		;1c2b
	jr nz,l1c39h		;1c2f
	set 7,(ix+002h)		;1c31
	ld (ix+025h),000h		;1c35
l1c39h:
	call sub_game_entity_calculate_court_perspective		;1c39
	call sub_game_cpu_update		;1c3c
	ld a,(ix+025h)		;1c3f
	and 00fh		;1c42
	ld hl,l1c4ah_jump_table		;1c44
	jp l0807h_game_fsm		;1c47

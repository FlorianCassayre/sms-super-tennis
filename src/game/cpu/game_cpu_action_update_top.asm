sub_game_cpu_action_update_top:
	bit 7,(ix + entity_t.state_index)
	jr nz,l1c39h
	set 7,(ix + entity_t.state_index)
	ld (ix + entity_t.action_state),000h
l1c39h:
	call sub_game_entity_calculate_court_perspective
	call sub_game_cpu_update
	ld a,(ix + entity_t.action_state)
	and 00fh
	ld hl,game_cpu_action_state
	jp game_fsm

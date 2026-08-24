sub_game_cpu_init_top:
	bit 1,(ix + entity_t.id)
	ld hl,entities.player.1.top.state_index
	ld e,004h
	jr nz,l1bc0h
	ld hl,entities.player.2.top.state_index
	ld e,000h
l1bc0h:
	ld a,(hl)
	and 03fh
	cp entity_state_t.player_update_server_state_075f
	ld a,000h
	jr z,l1bd4h
	ld a,(state.match_state_flags)
	bit 7,a
	ld a,002h
	jr nz,l1bd4h
	ld a,008h
l1bd4h:
	or e
	ld e,a
	ld a,(state.match_state_flag)
	or e
	add a,a
	ld e,a
	ld d,000h
	ld hl,l1c07h
	add hl,de
	ld a,(hl)
	ld (ix + entity_t.cpu_state),a
	inc hl
	ld e,(hl)
	ld hl,l1c1bh
	add hl,de
	ld a,(hl)
	ld (ix + entity_t.y_pos),a
	inc hl
	ld a,(hl)
	ld (ix + entity_t.y_pos + 1),a
	ld (ix + entity_t.y_pos_cache),a
	inc hl
	ld a,(hl)
	ld (ix + entity_t.x_pos),a
	inc hl
	ld a,(hl)
	ld (ix + entity_t.x_pos + 1),a
	ld (ix + entity_t.state_index),entity_state_t.player_action_update_top
	ret
l1c07h:
	.DB $05
	.DB $0c
	.DB $05
	.DB $08
	.DB $01
	.DB $00
	.DB $05
	.DB $08
	.DB $05
	.DB $0c
	.DB $05
	.DB $08
	.DB $05
	.DB $0c
	.DB $01
	.DB $04
	.DB $01
	.DB $00
	.DB $01
	.DB $04
l1c1bh:
	.DB $00
	.DB $28
	.DB $00
	.DB $70
	.DB $00
	.DB $28
	.DB $00
	.DB $a0
	.DB $00
	.DB $38
	.DB $00
	.DB $70
	.DB $00
	.DB $38
	.DB $00
	.DB $a0

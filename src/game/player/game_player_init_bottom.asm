sub_game_player_init_bottom:
	bit 1,(ix + entity_t.id)
	ld hl,entities.player.1.bottom.state_index
	ld e,004h
	jr nz,l240fh
	ld hl,entities.player.2.bottom.state_index
	ld e,000h
l240fh:
	ld a,(hl)
	and 03fh
	cp entity_state_t.player_update_server_state_075f
	ld a,002h
	jr z,l2423h
	ld a,(state.match_state_flags)
	bit 7,a
	ld a,000h
	jr nz,l2423h
	ld a,008h
l2423h:
	or e
	ld e,a
	ld a,(state.match_state_flag)
	and 001h
	or e
	add a,a
	ld e,a
	ld d,000h
	ld hl,l2458h
	add hl,de
	ld a,(hl)
	ld (ix + entity_t.cpu_state),a
	inc hl
	ld e,(hl)
	ld hl,0246ch
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
	ld (ix + entity_t.state_index),013h
	ret

l2458h:
	.DB $01
	.DB $0c
	.DB $05
	.DB $04
	.DB $05
	.DB $00
	.DB $05
	.DB $04
	.DB $05
	.DB $00
	.DB $01
	.DB $08
	.DB $05
	.DB $00
	.DB $01
	.DB $04
	.DB $01
	.DB $0c
	.DB $01
	.DB $08
	.DB $00
	.DB $88
	.DB $00
	.DB $60
	.DB $00
	.DB $88
	.DB $00
	.DB $a0
	.DB $00
	.DB $b0
	.DB $00
	.DB $60
	.DB $00
	.DB $b0
	.DB $00
	.DB $a0

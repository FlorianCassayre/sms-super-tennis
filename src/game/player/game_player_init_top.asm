sub_game_player_init_top:
	bit 1,(ix + entity_t.id)		;1bb0
	ld hl,entities.player.1.top.state_index		;1bb4
	ld e,004h		;1bb7
	jr nz,l1bc0h		;1bb9
	ld hl,entities.player.2.top.state_index		;1bbb
	ld e,000h		;1bbe
l1bc0h:
	ld a,(hl)			;1bc0
	and 03fh		;1bc1
	cp 003h		;1bc3
	ld a,000h		;1bc5
	jr z,l1bd4h		;1bc7
	ld a,(0c000h)		;1bc9
	bit 7,a		;1bcc
	ld a,002h		;1bce
	jr nz,l1bd4h		;1bd0
	ld a,008h		;1bd2
l1bd4h:
	or e			;1bd4
	ld e,a			;1bd5
	ld a,(0c044h)		;1bd6
	or e			;1bd9
	add a,a			;1bda
	ld e,a			;1bdb
	ld d,000h		;1bdc
	ld hl,l1c07h		;1bde
	add hl,de			;1be1
	ld a,(hl)			;1be2
	ld (ix+030h),a		;1be3
	inc hl			;1be6
	ld e,(hl)			;1be7
	ld hl,l1c1bh		;1be8
	add hl,de			;1beb
	ld a,(hl)			;1bec
	ld (ix + entity_t.y_pos),a		;1bed
	inc hl			;1bf0
	ld a,(hl)			;1bf1
	ld (ix + entity_t.y_pos + 1),a		;1bf2
	ld (ix + entity_t.y_pos_cache),a		;1bf5
	inc hl			;1bf8
	ld a,(hl)			;1bf9
	ld (ix + entity_t.x_pos),a		;1bfa
	inc hl			;1bfd
	ld a,(hl)			;1bfe
	ld (ix + entity_t.x_pos + 1),a		;1bff
	ld (ix + entity_t.state_index),014h		;1c02
	ret			;1c06
l1c07h:
	.DB $05		;1c07
	.DB $0c		;1c08
	.DB $05		;1c09
	.DB $08		;1c0a
	.DB $01		;1c0b
	.DB $00		;1c0c
	.DB $05		;1c0d
	.DB $08		;1c0e
	.DB $05		;1c0f
	.DB $0c		;1c10
	.DB $05		;1c11
	.DB $08		;1c12
	.DB $05		;1c13
	.DB $0c		;1c14
	.DB $01		;1c15
	.DB $04		;1c16
	.DB $01		;1c17
	.DB $00		;1c18
	.DB $01		;1c19
	.DB $04		;1c1a
l1c1bh:
	.DB $00		;1c1b
	.DB $28		;1c1c
	.DB $00		;1c1d
	.DB $70		;1c1e
	.DB $00		;1c1f
	.DB $28		;1c20
	.DB $00		;1c21
	.DB $a0		;1c22
	.DB $00		;1c23
	.DB $38		;1c24
	.DB $00		;1c25
	.DB $70		;1c26
	.DB $00		;1c27
	.DB $38		;1c28
	.DB $00		;1c29
	.DB $a0		;1c2a

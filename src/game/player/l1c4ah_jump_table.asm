l1c4ah_jump_table:
	.DW l1c56h		;1c4a
	.DW l1cf7h		;1c4c
	.DW l1d27h		;1c4e
	.DW l1c9ch		;1c50
	.DW sub_1d89h		;1c52
	.DW l1d57h		;1c54
l1c56h:
	ld a,(ix+028h)		;1c56
	and 003h		;1c59
	jr z,l1c64h		;1c5b
	ld (ix+025h),002h		;1c5d
	jp l1d27h		;1c61
l1c64h:
	ld a,(ix + entity_t.input_dirs)		;1c64
	and a			;1c67
	jr nz,l1c95h		;1c68
	ld a,(ix+027h)		;1c6a
	and a			;1c6d
	jr z,l1c78h		;1c6e
	bit 7,a		;1c70
	jr nz,l1c95h		;1c72
	set 7,(ix+027h)		;1c74
l1c78h:
	ld a,(ix+023h)		;1c78
	and a			;1c7b
	jr nz,l1c92h		;1c7c
	ld (ix+022h),000h		;1c7e
	ld (ix+023h),0ffh		;1c82
	call sub_game_racket_update_hitbox		;1c86
	ld a,(ix+016h)		;1c89
	ld (ix+017h),a		;1c8c
	ld (ix + entity_t.render_facing_dir),a		;1c8f
l1c92h:
	jp sub_game_player_update_animation		;1c92
l1c95h:
	ld (ix+025h),001h		;1c95
	jp l1cf7h		;1c99
l1c9ch:
	ld a,(ix+028h)		;1c9c
	and 003h		;1c9f
	jr z,l1caah		;1ca1
	ld (ix+025h),004h		;1ca3
	jp sub_1d89h		;1ca7
l1caah:
	ld a,(ix+015h)		;1caa
	ld c,a			;1cad
	and 00ch		;1cae
	jr nz,l1ccdh		;1cb0
	ld a,(ix+027h)		;1cb2
	and a			;1cb5
	jr z,l1cc6h		;1cb6
	push bc			;1cb8
	call sub_game_racket_update_hitbox		;1cb9
	pop bc			;1cbc
	ld a,(ix+016h)		;1cbd
	ld b,(ix+017h)		;1cc0
	cp b			;1cc3
	jr nz,l1cf0h		;1cc4
l1cc6h:
	ld a,c			;1cc6
	and 003h		;1cc7
	jr z,l1ceah		;1cc9
	jr l1cdch		;1ccb
l1ccdh:
	call sub_game_racket_update_hitbox		;1ccd
	ld a,(ix+016h)		;1cd0
	ld b,(ix+017h)		;1cd3
	cp b			;1cd6
	jr nz,l1cf0h		;1cd7
	ld (ix+020h),a		;1cd9
l1cdch:
	ld a,(ix+023h)		;1cdc
	and a			;1cdf
	jr nz,l1ceah		;1ce0
	ld (ix+022h),002h		;1ce2
	ld (ix+023h),0ffh		;1ce6
l1ceah:
	call sub_game_player_apply_movement		;1cea
	jp sub_game_player_update_animation		;1ced
l1cf0h:
	ld (ix+025h),005h		;1cf0
	jp l1d57h		;1cf4
l1cf7h:
	ld a,(ix+025h)		;1cf7
	bit 7,a		;1cfa
	jr nz,l1d17h		;1cfc
	set 7,a		;1cfe
l1d00h:
	ld (ix+025h),a		;1d00
	ld (ix+022h),00ah		;1d03
	ld (ix+023h),0ffh		;1d07
	call sub_game_racket_update_hitbox		;1d0b
	ld a,(ix+016h)		;1d0e
	ld (ix+017h),a		;1d11
	ld (ix+020h),a		;1d14
l1d17h:
	call sub_game_player_apply_movement		;1d17
	call sub_game_player_update_animation		;1d1a
	ld a,(ix+023h)		;1d1d
	and a			;1d20
	ret nz			;1d21
	ld (ix+025h),003h		;1d22
	ret			;1d26
l1d27h:
	ld a,(ix+025h)		;1d27
	bit 7,a		;1d2a
	jr nz,l1d47h		;1d2c
	set 7,a		;1d2e
	ld (ix+025h),a		;1d30
	ld (ix+022h),00ah		;1d33
	ld (ix+023h),0ffh		;1d37
	call sub_game_racket_update_hitbox		;1d3b
	ld a,(ix+016h)		;1d3e
	ld (ix+017h),a		;1d41
	ld (ix+020h),a		;1d44
l1d47h:
	call sub_game_player_apply_movement		;1d47
	call sub_game_player_update_animation		;1d4a
	ld a,(ix+023h)		;1d4d
	and a			;1d50
	ret nz			;1d51
	ld (ix+025h),004h		;1d52
	ret			;1d56
l1d57h:
	ld a,(ix+025h)		;1d57
	bit 7,a		;1d5a
	jr nz,l1d73h		;1d5c
	set 7,(ix+025h)		;1d5e
	call sub_game_racket_update_hitbox		;1d62
	ld a,(ix+016h)		;1d65
	ld (ix+020h),a		;1d68
	ld (ix+022h),00bh		;1d6b
	ld (ix+023h),0ffh		;1d6f
l1d73h:
	call sub_game_player_apply_movement		;1d73
	call sub_game_player_update_animation		;1d76
	ld a,(ix+023h)		;1d79
	and a			;1d7c
	ret nz			;1d7d
	ld a,(ix+016h)		;1d7e
	ld (ix+017h),a		;1d81
	ld (ix+025h),003h		;1d84
	ret			;1d88

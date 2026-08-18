; $14: bottom short
; $15: bottom shirt + top short
; $16: top shirt
; The below only replaces $15 and $16

sub_game_player_palette_load_clothes:
	ld hl,l35dch
	xor a
	ld a,(state.settings.computer_level)
	rla
	ld e,a
	ld d,0
	add hl,de
	ex de,hl
	ld hl,$15
	ld b,2
	call sub_graphics_palette_load
	ret

l35dch:
	.DB VDP_PALETTE_LIGHT_PINK VDP_PALETTE_DEEP_SKY_BLUE
	.DB VDP_PALETTE_YELLOW VDP_PALETTE_BLUE
	.DB VDP_PALETTE_RED VDP_PALETTE_TURQUOISE
	.DB VDP_PALETTE_DARK_BLUE VDP_PALETTE_YELLOW
	.DB VDP_PALETTE_NAVY VDP_PALETTE_DARK_RED

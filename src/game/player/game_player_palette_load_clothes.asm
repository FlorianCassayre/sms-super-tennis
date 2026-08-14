; $14: bottom short
; $15: bottom shirt + top short
; $16: top shirt
; The below only replaces $15 and $16

sub_game_player_palette_load_clothes:
	ld hl,l35dch		;35c6
	xor a			;35c9
	ld a,(state.maybe_random_seed)		;35ca
	rla			;35cd
	ld e,a			;35ce
	ld d,0		;35cf
	add hl,de			;35d1
	ex de,hl			;35d2
	ld hl,$15		;35d3
	ld b,2		;35d6
	call sub_graphics_palette_load		;35d8
	ret			;35db

l35dch:
	.DB VDP_PALETTE_LIGHT_PINK VDP_PALETTE_DEEP_SKY_BLUE		;35dc
	.DB VDP_PALETTE_YELLOW VDP_PALETTE_BLUE		;35de
	.DB VDP_PALETTE_RED VDP_PALETTE_TURQUOISE		;35e0
	.DB VDP_PALETTE_DARK_BLUE VDP_PALETTE_YELLOW		;35e2
	.DB VDP_PALETTE_NAVY VDP_PALETTE_DARK_RED		;35e4

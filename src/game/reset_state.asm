sub_reset_state:
	xor a			;08a7
	ld (0c000h),a		;08a8
	ld hl,game.match_flags		;08ab
	ld de,game.current_player		;08ae
	ld bc,00541h		;08b1
	ld (hl),a			;08b4
	ldir		;08b5
	ld hl,0c006h		;08b7
	ld (hl),081h		;08ba
	inc hl			;08bc
	ld (hl),000h		;08bd
	ret			;08bf

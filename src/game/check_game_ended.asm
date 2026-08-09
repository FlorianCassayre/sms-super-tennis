sub_check_game_ended:
	ld a,(score.game_lost)		; 3a 95 c4 ;0d25
	bit 1,a		; cb 4f ;0d28
	jr z,l0d67h		; 28 3b ;0d2a
	bit 2,a		; cb 57 ;0d2c
	jr z,l0d67h		; 28 37 ;0d2e
	ld a,005h		; 3e 05 ;0d30
	ld (0c007h),a		; 32 07 c0 ;0d32
	ld hl,000b4h		; 21 b4 00 ;0d35
	ld (0c08ah),hl		; 22 8a c0 ;0d38
	jp sub_draw_game_end		; c3 c4 33 ;0d3b

sub_init_tennis_court:
	ld hl,0c000h		;0898
	set 3,(hl)		;089b
	set 7,(hl)		;089d
	ld a,003h		;089f
	ld (game.current_server),a		;08a1
	jp sub_0abd_draw_tennis_court		;08a4

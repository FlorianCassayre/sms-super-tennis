sub_decrement_pause_counter:
	ld hl,(game.pause_counter)		;03ad
	dec hl			;03b0
	ld (game.pause_counter),hl		;03b1
	ld a,l			;03b4
	or h			;03b5
	ret			;03b6

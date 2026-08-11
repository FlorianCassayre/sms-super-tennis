sub_decrement_pause_counter:
	ld hl,(game.pause_counter)		; 2a 8a c0 ;03ad
	dec hl			; 2b ;03b0
	ld (game.pause_counter),hl		; 22 8a c0 ;03b1
	ld a,l			; 7d ;03b4
	or h			; b4 ;03b5
	ret			; c9 ;03b6

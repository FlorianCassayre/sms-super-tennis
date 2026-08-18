sub_decrement_pause_counter:
	ld hl,(state.pause_counter)
	dec hl
	ld (state.pause_counter),hl
	ld a,l
	or h
	ret

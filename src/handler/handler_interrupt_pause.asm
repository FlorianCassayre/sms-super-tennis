handler_interrupt_pause:
	push af
	ld a,(state.match_state_flags)
	and 00ch
	cp 004h
	jr nz,+
	ld a,(0c005h)
	cp 00fh
	jr c,+
	xor a
	ld (0c005h),a
	ld a,(0c004h)
	cpl
	ld (0c004h),a
+:
	pop af
	retn

.ASSERT handler_interrupt_pause == $0066, LDERROR

handler_interrupt_pause:
	push af			;0066
	ld a,(state.match_state_flags)		;0067
	and 00ch		;006a
	cp 004h		;006c
	jr nz,+		;006e
	ld a,(0c005h)		;0070
	cp 00fh		;0073
	jr c,+		;0075
	xor a			;0077
	ld (0c005h),a		;0078
	ld a,(0c004h)		;007b
	cpl			;007e
	ld (0c004h),a		;007f
+:
	pop af			;0082
	retn		;0083

.ASSERT handler_interrupt_pause == $0066, LDERROR

sub_update_cond_color:
	ld a,(0c011h)		; 3a 11 c0 ;0268
	or a			; b7 ;026b
	ret z			; c8 ;026c
	ld a,010h		; 3e 10 ;026d
	out (0bfh),a		; d3 bf ;026f
	ld a,0c0h		; 3e c0 ;0271
	out (0bfh),a		; d3 bf ;0273
	ld a,(l0013h)		; 3a 13 00 ;0275
	out (0beh),a		; d3 be ;0278
	ret			; c9 ;027a

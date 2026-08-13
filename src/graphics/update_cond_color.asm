sub_update_cond_color:
	ld a,(0c011h)		;0268
	or a			;026b
	ret z			;026c
	ld a,010h		;026d
	out (O_VDP_CTRL),a		;026f
	ld a,0c0h		;0271
	out (O_VDP_CTRL),a		;0273
	ld a,(00013h)		;0275
	out (IO_VDP_DATA),a		;0278
	ret			;027a

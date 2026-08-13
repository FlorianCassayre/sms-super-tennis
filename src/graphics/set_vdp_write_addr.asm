sub_set_vdp_write_addr:
	ld a,l			;0426
	out (O_VDP_CTRL),a		;0427
	ld a,040h		;0429
	or h			;042b
	out (O_VDP_CTRL),a		;042c
	ret			;042e

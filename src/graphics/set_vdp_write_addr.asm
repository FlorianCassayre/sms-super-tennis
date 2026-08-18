sub_set_vdp_write_addr:
	ld a,l
	out (O_VDP_CTRL),a
	ld a,040h
	or h
	out (O_VDP_CTRL),a
	ret

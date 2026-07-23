sub_set_vdp_write_addr:
	ld a,l			; 7d ;0426
	out (0bfh),a		; d3 bf ;0427
	ld a,040h		; 3e 40 ;0429
	or h			; b4 ;042b
	out (0bfh),a		; d3 bf ;042c
	ret			; c9 ;042e

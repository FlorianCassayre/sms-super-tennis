sub_write_psg:
	bit 2,(ix+000h)		; dd cb 00 56 ;7dc0
	ret nz			; c0 ;7dc4
	out (07fh),a		; d3 7f ;7dc5
	ret			; c9 ;7dc7

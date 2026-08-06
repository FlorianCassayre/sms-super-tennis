sub_write_psg:
	bit 2,(ix + psg_channel_t.status_flags)		; dd cb 00 56 ;7dc0
	ret nz			; c0 ;7dc4
	out (O_PSG_ALT),a		; d3 7f ;7dc5
	ret			; c9 ;7dc7

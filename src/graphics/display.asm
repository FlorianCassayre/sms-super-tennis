sub_enable_display:
	ld a,0e0h
	jr +
sub_disable_display:
	ld a,0a0h
+:
	out (O_VDP_CTRL),a
	ld a,081h
	out (O_VDP_CTRL),a
	ret

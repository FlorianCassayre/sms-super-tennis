sub_enable_display:
	ld a,0e0h		;03a0
	jr +		;03a2
sub_disable_display:
	ld a,0a0h		;03a4
+:
	out (O_VDP_CTRL),a		;03a6
	ld a,081h		;03a8
	out (O_VDP_CTRL),a		;03aa
	ret			;03ac

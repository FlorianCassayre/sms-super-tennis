sub_enable_display:
	ld a,0e0h		; 3e e0 ;03a0
	jr +		; 18 02 ;03a2
sub_disable_display:
	ld a,0a0h		; 3e a0 ;03a4
+:
	out (0bfh),a		; d3 bf ;03a6
	ld a,081h		; 3e 81 ;03a8
	out (0bfh),a		; d3 bf ;03aa
	ret			; c9 ;03ac

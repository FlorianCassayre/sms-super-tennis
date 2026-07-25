sub_delay_vdp:
--:
	ld b,31		; 06 1f ;0260
-:
	djnz -		; 10 fe ;0262
	dec c			; 0d ;0264
	jr nz,--		; 20 f9 ;0265
	ret			; c9 ;0267

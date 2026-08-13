sub_delay_vdp:
--:
	ld b,31		;0260
-:
	djnz -		;0262
	dec c			;0264
	jr nz,--		;0265
	ret			;0267

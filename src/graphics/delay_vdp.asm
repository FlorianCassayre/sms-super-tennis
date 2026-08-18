sub_delay_vdp:
--:
	ld b,31
-:
	djnz -
	dec c
	jr nz,--
	ret

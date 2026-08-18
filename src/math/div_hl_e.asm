sub_div_hl_e:
	ld b,008h
-:
	adc hl,hl
	ld a,h
	jr c,+
	cp e
	jr c,++
+:
	sub e
	ld h,a
	or a
++:
	djnz -
	ld a,l
	rla
	cpl
	ret

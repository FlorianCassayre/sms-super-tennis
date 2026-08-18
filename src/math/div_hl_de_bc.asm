sub_div_hl_de_bc:
	ld a,010h
-:
	sla e
	rl d
	adc hl,hl
	jr c,+
	sbc hl,bc
	jr nc,++
	add hl,bc
	dec a
	jr nz,-
	ret
+:
	or a
	sbc hl,bc
++:
	inc e
	dec a
	jr nz,-
	ret

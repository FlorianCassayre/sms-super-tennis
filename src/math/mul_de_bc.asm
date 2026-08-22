sub_mul_de_bc:
	ld hl,0
	ld a,010h
	-:
		add hl,hl
		ex de,hl
		adc hl,hl
		ex de,hl
		jr nc,+
			add hl,bc
			jr nc,+
				inc de
		+:
		dec a
		jr nz,-
	ret

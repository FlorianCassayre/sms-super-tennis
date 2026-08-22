	ld d, $00
	ld l,d
	ld b,008h
	-:
		add hl,hl
		jr nc,+
			add hl,de
		+:
		djnz -
	ret

sub_mul_a_c_add_b:
	push de
	cp 001h
	ld d,a
	ld a,b
	jr c,++++
		jr z,+++
			ld a,d
			cp 003h
			ld a,b
			jr c,++
				jr z,+
					; Clamp A to 4
					add a,c
				+:
				add a,c
			++:
			add a,c
		+++:
		add a,c
	++++:
	ld c,a
	pop de
	ret

sub_div10:
	ld de,0
	-:
		cp 10
		jp c,+
			sub 10
			inc d
			jp -
		+:
	ld e,a
	ret

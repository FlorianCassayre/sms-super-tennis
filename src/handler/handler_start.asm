start:
	jp init		;0000

.ASSERT start == $0000, LDERROR

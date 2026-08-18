sub_neg_hl:
	xor a
	sub l
	ld l,a
	sbc a,a
	sub h
	ld h,a
	ret

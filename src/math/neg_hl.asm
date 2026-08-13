sub_neg_hl:
	xor a			;2319
	sub l			;231a
	ld l,a			;231b
	sbc a,a			;231c
	sub h			;231d
	ld h,a			;231e
	ret			;231f

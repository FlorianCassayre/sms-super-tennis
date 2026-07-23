sub_neg_hl:
	xor a			; af ;2319
	sub l			; 95 ;231a
	ld l,a			; 6f ;231b
	sbc a,a			; 9f ;231c
	sub h			; 94 ;231d
	ld h,a			; 67 ;231e
	ret			; c9 ;231f

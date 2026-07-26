sub_abs10:
	sub 00ah		; d6 0a ;2d52
	ret nc			; d0 ;2d54
	neg		; ed 44 ;2d55
	ret			; c9 ;2d57

sub_div_a_b_c:
	ld c,a			;2ed0
	ld a,b			;2ed1
	and a			;2ed2
	jp z,+		;2ed3
	ld a,c			;2ed6
	ld c,0ffh		;2ed7
-:
	inc c			;2ed9
	sub b			;2eda
	jp nc,-		;2edb
	ret			;2ede
+:
	ld c,a			;2edf
	ret			;2ee0

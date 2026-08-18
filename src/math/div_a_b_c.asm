sub_div_a_b_c:
	ld c,a
	ld a,b
	and a
	jp z,+
	ld a,c
	ld c,0ffh
-:
	inc c
	sub b
	jp nc,-
	ret
+:
	ld c,a
	ret

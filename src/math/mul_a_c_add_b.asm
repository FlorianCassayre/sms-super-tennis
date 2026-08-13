sub_mul_a_c_add_b:
	push de			;0aa5
	cp 001h		;0aa6
	ld d,a			;0aa8
	ld a,b			;0aa9
	jr c,++++		;0aaa
	jr z,+++		;0aac
	ld a,d			;0aae
	cp 003h		;0aaf
	ld a,b			;0ab1
	jr c,++		;0ab2
	jr z,+		;0ab4
	; Clamp A to 4
	add a,c			;0ab6
+:
	add a,c			;0ab7
++:
	add a,c			;0ab8
+++:
	add a,c			;0ab9
++++:
	ld c,a			;0aba
	pop de			;0abb
	ret			;0abc

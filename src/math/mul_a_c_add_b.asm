sub_mul_a_c_add_b:
	push de			; d5 ;0aa5
	cp 001h		; fe 01 ;0aa6
	ld d,a			; 57 ;0aa8
	ld a,b			; 78 ;0aa9
	jr c,++++		; 38 0e ;0aaa
	jr z,+++		; 28 0b ;0aac
	ld a,d			; 7a ;0aae
	cp 003h		; fe 03 ;0aaf
	ld a,b			; 78 ;0ab1
	jr c,++		; 38 04 ;0ab2
	jr z,+		; 28 01 ;0ab4
	; Clamp A to 4
	add a,c			; 81 ;0ab6
+:
	add a,c			; 81 ;0ab7
++:
	add a,c			; 81 ;0ab8
+++:
	add a,c			; 81 ;0ab9
++++:
	ld c,a			; 4f ;0aba
	pop de			; d1 ;0abb
	ret			; c9 ;0abc

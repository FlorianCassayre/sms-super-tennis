sub_div_a_b_c:
	ld c,a			; 4f ;2ed0
	ld a,b			; 78 ;2ed1
	and a			; a7 ;2ed2
	jp z,+		; ca df 2e ;2ed3
	ld a,c			; 79 ;2ed6
	ld c,0ffh		; 0e ff ;2ed7
-:
	inc c			; 0c ;2ed9
	sub b			; 90 ;2eda
	jp nc,-		; d2 d9 2e ;2edb
	ret			; c9 ;2ede
+:
	ld c,a			; 4f ;2edf
	ret			; c9 ;2ee0

sub_mul_h_e:
	ld d, $00			; 16 00 ;7e84
	ld l,d			; 6a ;7e86
	ld b,008h		; 06 08 ;7e87
-:
	add hl,hl			; 29 ;7e89
	jr nc,+		; 30 01 ;7e8a
	add hl,de			; 19 ;7e8c
+:
	djnz -		; 10 fa ;7e8d
	ret			; c9 ;7e8f

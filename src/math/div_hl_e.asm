sub_div_hl_e:
	ld b,008h		; 06 08 ;7e90
-:
	adc hl,hl		; ed 6a ;7e92
	ld a,h			; 7c ;7e94
	jr c,+		; 38 03 ;7e95
	cp e			; bb ;7e97
	jr c,++		; 38 03 ;7e98
+:
	sub e			; 93 ;7e9a
	ld h,a			; 67 ;7e9b
	or a			; b7 ;7e9c
++:
	djnz -		; 10 f3 ;7e9d
	ld a,l			; 7d ;7e9f
	rla			; 17 ;7ea0
	cpl			; 2f ;7ea1
	ret			; c9 ;7ea2

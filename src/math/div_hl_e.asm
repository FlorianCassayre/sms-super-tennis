sub_div_hl_e:
	ld b,008h		;7e90
-:
	adc hl,hl		;7e92
	ld a,h			;7e94
	jr c,+		;7e95
	cp e			;7e97
	jr c,++		;7e98
+:
	sub e			;7e9a
	ld h,a			;7e9b
	or a			;7e9c
++:
	djnz -		;7e9d
	ld a,l			;7e9f
	rla			;7ea0
	cpl			;7ea1
	ret			;7ea2

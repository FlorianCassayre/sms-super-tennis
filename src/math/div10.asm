sub_div10:
	ld de,0		; 11 00 00 ;3182
-:
	cp 10		; fe 0a ;3185
	jp c,+		; da 90 31 ;3187
	sub 10		; d6 0a ;318a
	inc d			; 14 ;318c
	jp -		; c3 85 31 ;318d
+:
	ld e,a			; 5f ;3190
	ret			; c9 ;3191

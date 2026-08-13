sub_div10:
	ld de,0		;3182
-:
	cp 10		;3185
	jp c,+		;3187
	sub 10		;318a
	inc d			;318c
	jp -		;318d
+:
	ld e,a			;3190
	ret			;3191

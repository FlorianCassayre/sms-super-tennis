sub_3192_draw:
	di			; f3 ;3192
	ld a,l			; 7d ;3193
	out (0bfh),a		; d3 bf ;3194
	ld a,h			; 7c ;3196
	set 6,a		; cb f7 ;3197
	out (0bfh),a		; d3 bf ;3199
	ld a,b			; 78 ;319b
	cp 002h		; fe 02 ;319c
	jr c,+		; 38 03 ;319e
	ld a,d			; 7a ;31a0
	jr ++		; 18 01 ;31a1
+:
	ld a,e			; 7b ;31a3
++:
-:
	inc a			; 3c ;31a4
	out (0beh),a		; d3 be ;31a5
	ex (sp),hl			; e3 ;31a7
	ex (sp),hl			; e3 ;31a8
	ex (sp),hl			; e3 ;31a9
	ex (sp),hl			; e3 ;31aa
	ld a,001h		; 3e 01 ;31ab
	out (0beh),a		; d3 be ;31ad
	ex (sp),hl			; e3 ;31af
	ex (sp),hl			; e3 ;31b0
	ex (sp),hl			; e3 ;31b1
	ex (sp),hl			; e3 ;31b2
	ld a,e			; 7b ;31b3
	djnz -		; 10 ee ;31b4
	ei			; fb ;31b6
	ret			; c9 ;31b7

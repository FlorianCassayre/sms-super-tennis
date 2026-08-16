.MACRO RLE_DECOMPRESS_BITPLANES
	ld b,RLE_PLANES		;04ed
-:
	push bc			;04ef
	push de			;04f0
	call \1		;04f1
	pop de			;04f4
	inc de			;04f5
	pop bc			;04f6
	djnz -		;04f7
	ret			;04f9
.ENDM

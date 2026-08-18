.MACRO RLE_DECOMPRESS_BITPLANES
	ld b,RLE_PLANES
-:
	push bc
	push de
	call \1
	pop de
	inc de
	pop bc
	djnz -
	ret
.ENDM

; Decompresses 4-bit planar graphics data.
; The compression format consists of control bytes:
; - 0x00: End of Stream (terminates current bitplane)
; - 0b1xxxxxxx: Literal Mode. Lower 7 bits define the run length. The next N bytes are copied directly.
; - 0b0xxxxxxx: RLE Mode. Lower 7 bits define the run length. The single following byte is repeated N times.
.MACRO RLE_DECOMPRESS_STREAM
--:
	ld a,(hl)
	inc hl
	or a
	ret z
	ld b,a
	and RLE_LIT
	ld c,a
	ld a,b
	and RLE_LIT - 1
	ld b,a
-:
	.IF \1
		ld a,e
		out (O_VDP_CTRL),a
		ld a,d
		or 040h
		out (O_VDP_CTRL),a
		ex (sp),hl
		ex (sp),hl
	.ENDIF
	ld a,(hl)
	.IF \1
		out (IO_VDP_DATA),a
	.ELSE
		ld (de),a
	.ENDIF
	xor a
	or c
	jr z,+
	inc hl
+:
	inc de
	inc de
	inc de
	inc de
	djnz -
	jp nz,--
	inc hl
	jp --
.ENDM

; Decompresses 4-bit planar graphics data.
; The compression format consists of control bytes:
; - 0x00: End of Stream (terminates current bitplane)
; - 0b1xxxxxxx: Literal Mode. Lower 7 bits define the run length. The next N bytes are copied directly.
; - 0b0xxxxxxx: RLE Mode. Lower 7 bits define the run length. The single following byte is repeated N times.
sub_rle_decompress_bitplanes_to_vram:
	ld b,004h		;04b5
-:
	push bc			;04b7
	push de			;04b8
	call sub_rle_decompress_stream		;04b9
	pop de			;04bc
	inc de			;04bd
	pop bc			;04be
	djnz -		;04bf
	ret			;04c1
sub_rle_decompress_stream:
	ld a,(hl)			;04c2
	inc hl			;04c3
	or a			;04c4
	ret z			;04c5
	ld b,a			;04c6
	and 080h		;04c7
	ld c,a			;04c9
	ld a,b			;04ca
	and 07fh		;04cb
	ld b,a			;04cd
-:
	ld a,e			;04ce
	out (O_VDP_CTRL),a		;04cf
	ld a,d			;04d1
	or 040h		;04d2
	out (O_VDP_CTRL),a		;04d4
	ex (sp),hl			;04d6
	ex (sp),hl			;04d7
	ld a,(hl)			;04d8
	out (IO_VDP_DATA),a		;04d9
	xor a			;04db
	or c			;04dc
	jr z,+		;04dd
	inc hl			;04df
+:
	inc de			;04e0
	inc de			;04e1
	inc de			;04e2
	inc de			;04e3
	djnz -		;04e4
	jp nz,sub_rle_decompress_stream		;04e6
	inc hl			;04e9
	jp sub_rle_decompress_stream		;04ea

sub_rle_decompress_bitplanes_to_ram:
	ld b,004h		;04ed
-:
	push bc			;04ef
	push de			;04f0
	call sub_rle_decompress_stream_to_ram		;04f1
	pop de			;04f4
	inc de			;04f5
	pop bc			;04f6
	djnz -		;04f7
	ret			;04f9

sub_rle_decompress_stream_to_ram:
--:
	ld a,(hl)			;04fa
	inc hl			;04fb
	or a			;04fc
	ret z			;04fd
	ld b,a			;04fe
	and 080h		;04ff
	ld c,a			;0501
	ld a,b			;0502
	and 07fh		;0503
	ld b,a			;0505
-:
	ld a,(hl)			;0506
	ld (de),a			;0507
	xor a			;0508
	or c			;0509
	jr z,+		;050a
	inc hl			;050c
+:
	inc de			;050d
	inc de			;050e
	inc de			;050f
	inc de			;0510
	djnz -		;0511
	jp nz,--		;0513
	inc hl			;0516
	jp --		;0517

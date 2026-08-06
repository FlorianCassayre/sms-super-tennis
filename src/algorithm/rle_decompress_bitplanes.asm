; Decompresses 4-bit planar graphics data.
; The compression format consists of control bytes:
; - 0x00: End of Stream (terminates current bitplane)
; - 0b1xxxxxxx: Literal Mode. Lower 7 bits define the run length. The next N bytes are copied directly.
; - 0b0xxxxxxx: RLE Mode. Lower 7 bits define the run length. The single following byte is repeated N times.
sub_rle_decompress_bitplanes_to_vram:
	ld b,004h		; 06 04 ;04b5
-:
	push bc			; c5 ;04b7
	push de			; d5 ;04b8
	call sub_rle_decompress_stream		; cd c2 04 ;04b9
	pop de			; d1 ;04bc
	inc de			; 13 ;04bd
	pop bc			; c1 ;04be
	djnz -		; 10 f6 ;04bf
	ret			; c9 ;04c1
sub_rle_decompress_stream:
	ld a,(hl)			; 7e ;04c2
	inc hl			; 23 ;04c3
	or a			; b7 ;04c4
	ret z			; c8 ;04c5
	ld b,a			; 47 ;04c6
	and 080h		; e6 80 ;04c7
	ld c,a			; 4f ;04c9
	ld a,b			; 78 ;04ca
	and 07fh		; e6 7f ;04cb
	ld b,a			; 47 ;04cd
-:
	ld a,e			; 7b ;04ce
	out (O_VDP_CTRL),a		; d3 bf ;04cf
	ld a,d			; 7a ;04d1
	or 040h		; f6 40 ;04d2
	out (O_VDP_CTRL),a		; d3 bf ;04d4
	ex (sp),hl			; e3 ;04d6
	ex (sp),hl			; e3 ;04d7
	ld a,(hl)			; 7e ;04d8
	out (IO_VDP_DATA),a		; d3 be ;04d9
	xor a			; af ;04db
	or c			; b1 ;04dc
	jr z,+		; 28 01 ;04dd
	inc hl			; 23 ;04df
+:
	inc de			; 13 ;04e0
	inc de			; 13 ;04e1
	inc de			; 13 ;04e2
	inc de			; 13 ;04e3
	djnz -		; 10 e8 ;04e4
	jp nz,sub_rle_decompress_stream		; c2 c2 04 ;04e6
	inc hl			; 23 ;04e9
	jp sub_rle_decompress_stream		; c3 c2 04 ;04ea

sub_rle_decompress_bitplanes_to_ram:
	ld b,004h		; 06 04 ;04ed
-:
	push bc			; c5 ;04ef
	push de			; d5 ;04f0
	call sub_rle_decompress_stream_to_ram		; cd fa 04 ;04f1
	pop de			; d1 ;04f4
	inc de			; 13 ;04f5
	pop bc			; c1 ;04f6
	djnz -		; 10 f6 ;04f7
	ret			; c9 ;04f9

sub_rle_decompress_stream_to_ram:
--:
	ld a,(hl)			; 7e ;04fa
	inc hl			; 23 ;04fb
	or a			; b7 ;04fc
	ret z			; c8 ;04fd
	ld b,a			; 47 ;04fe
	and 080h		; e6 80 ;04ff
	ld c,a			; 4f ;0501
	ld a,b			; 78 ;0502
	and 07fh		; e6 7f ;0503
	ld b,a			; 47 ;0505
-:
	ld a,(hl)			; 7e ;0506
	ld (de),a			; 12 ;0507
	xor a			; af ;0508
	or c			; b1 ;0509
	jr z,+		; 28 01 ;050a
	inc hl			; 23 ;050c
+:
	inc de			; 13 ;050d
	inc de			; 13 ;050e
	inc de			; 13 ;050f
	inc de			; 13 ;0510
	djnz -		; 10 f3 ;0511
	jp nz,--		; c2 fa 04 ;0513
	inc hl			; 23 ;0516
	jp --		; c3 fa 04 ;0517

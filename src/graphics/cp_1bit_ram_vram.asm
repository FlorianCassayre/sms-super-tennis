sub_cp_1bit_ram_vram:
	ld (0c088h),a		; 32 88 c0 ;0492
	call sub_set_vdp_write_addr		; cd 26 04 ;0495
	ex de,hl			; eb ;0498
--:
	ld a,(hl)			; 7e ;0499
	exx			; d9 ;049a
	ld c,0beh		; 0e be ;049b
	ld b,004h		; 06 04 ;049d
	ld h,a			; 67 ;049f
	ld a,(0c088h)		; 3a 88 c0 ;04a0
-:
	rra			; 1f ;04a3
	ld d,h			; 54 ;04a4
	jr c,+		; 38 02 ;04a5
	ld d,000h		; 16 00 ;04a7
+:
	out (c),d		; ed 51 ;04a9
	djnz -		; 10 f6 ;04ab
	exx			; d9 ;04ad
	inc hl			; 23 ;04ae
	dec bc			; 0b ;04af
	ld a,b			; 78 ;04b0
	or c			; b1 ;04b1
	jr nz,--		; 20 e5 ;04b2
	ret			; c9 ;04b4

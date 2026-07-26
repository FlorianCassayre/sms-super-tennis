sub_joy_debounce:
	ld a,(0c006h)		; 3a 06 c0 ;0795
	bit 7,a		; cb 7f ;0798
	ret z			; c8 ;079a
	and 00fh		; e6 0f ;079b
	cp 000h		; fe 00 ;079d
	call z,sub_0ef9h		; cc f9 0e ;079f
	call sub_get_joy_p2		; cd a3 02 ;07a2
	and 030h		; e6 30 ;07a5
	jr nz,l07b4h		; 20 0b ;07a7
	call sub_get_joy_p1		; cd 0f 03 ;07a9
	and 030h		; e6 30 ;07ac
	jr z,l07eah		; 28 3a ;07ae
	ld c,000h		; 0e 00 ;07b0
	jr l07b6h		; 18 02 ;07b2
l07b4h:
	ld c,0d0h		; 0e d0 ;07b4
l07b6h:
	ex af,af'			; 08 ;07b6
	ld hl,0c006h		; 21 06 c0 ;07b7
	ld a,04fh		; 3e 4f ;07ba
	and (hl)			; a6 ;07bc
	cp 041h		; fe 41 ;07bd
	jr nz,l07d6h		; 20 15 ;07bf
	ld hl,0c009h		; 21 09 c0 ;07c1
	ex af,af'			; 08 ;07c4
	cp (hl)			; be ;07c5
	ret z			; c8 ;07c6
	ld a,c			; 79 ;07c7
	ld (0c000h),a		; 32 00 c0 ;07c8
	ld a,000h		; 3e 00 ;07cb
	ld (0de00h),a		; 32 00 de ;07cd
	ld a,002h		; 3e 02 ;07d0
	ld (0c006h),a		; 32 06 c0 ;07d2
	ret			; c9 ;07d5
l07d6h:
	res 6,a		; cb b7 ;07d6
	cp 001h		; fe 01 ;07d8
	ret z			; c8 ;07da
	ld a,087h		; 3e 87 ;07db
	ld (0c006h),a		; 32 06 c0 ;07dd
	ex af,af'			; 08 ;07e0
	ld (0c009h),a		; 32 09 c0 ;07e1
	ld a,000h		; 3e 00 ;07e4
	ld (0de00h),a		; 32 00 de ;07e6
	ret			; c9 ;07e9
l07eah:
	ex af,af'			; 08 ;07ea
	ld a,(0c006h)		; 3a 06 c0 ;07eb
	and 00fh		; e6 0f ;07ee
	cp 001h		; fe 01 ;07f0
	ret nz			; c0 ;07f2
	ex af,af'			; 08 ;07f3
	ld (0c009h),a		; 32 09 c0 ;07f4
	ret			; c9 ;07f7

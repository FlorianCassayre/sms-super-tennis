	.IFDEF _J
		.DB $3a
    	.DB $00
    	.DB $c0
    	.DB $cb
    	.DB $5f
    	.DB $c0
	.ENDIF
sub_796fh:
	call sub_79a8h_jump_table		; cd a8 79 ;796f
	call sub_798ch		; cd 8c 79 ;7972
	ld ix,0de05h		; dd 21 05 de ;7975
	ld b,007h		; 06 07 ;7979
l797bh:
	push bc			; c5 ;797b
	bit 7,(ix+000h)		; dd cb 00 7e ;797c
	call nz,sub_7addh		; c4 dd 7a ;7980
	ld de,l0020h		; 11 20 00 ;7983
	add ix,de		; dd 19 ;7986
	pop bc			; c1 ;7988
	djnz l797bh		; 10 f0 ;7989
	ret			; c9 ;798b
sub_798ch:
	ld a,(0de01h)		; 3a 01 de ;798c
	or a			; b7 ;798f
	ret z			; c8 ;7990
	ld hl,0de02h		; 21 02 de ;7991
	dec (hl)			; 35 ;7994
	ret nz			; c0 ;7995
	ld a,a			; 7f ;7996
	dec a			; 3d ;7997
	ld (0de0dh),a		; 32 0d de ;7998
	ld (0de2dh),a		; 32 2d de ;799b
	ld (0de4dh),a		; 32 4d de ;799e
	ld (0de01h),a		; 32 01 de ;79a1
	ld a,018h		; 3e 18 ;79a4
	ld (hl),a			; 77 ;79a6
	ret			; c9 ;79a7
sub_79a8h_jump_table:
	ld a,(0de00h)		; 3a 00 de ;79a8
	bit 7,a		; cb 7f ;79ab
	jp z,l7dc8h		; ca c8 7d ;79ad
	cp 0a2h		; fe a2 ;79b0
	jp nc,l7dc8h		; d2 c8 7d ;79b2
	sub 081h		; d6 81 ;79b5
	ret m			; f8 ;79b7
	ld c,a			; 4f ;79b8
	ld b,000h		; 06 00 ;79b9
	ld hl,l79cfh		; 21 cf 79 ;79bb
	add hl,bc			; 09 ;79be
	add hl,bc			; 09 ;79bf
	ld c,(hl)			; 4e ;79c0
	inc hl			; 23 ;79c1
	ld b,(hl)			; 46 ;79c2
	ld de,00037h		; 11 37 00 ;79c3
	add hl,de			; 19 ;79c6
	ld a,(hl)			; 7e ;79c7
	inc hl			; 23 ;79c8
	ld h,(hl)			; 66 ;79c9
	ld l,a			; 6f ;79ca
	ld a,(0de03h)		; 3a 03 de ;79cb
	jp (hl)			; e9 ;79ce
l79cfh:
	.DW l7149h		;79cf
	.DW l7291h		;79d1
	.DW l72ddh		;79d3
	.DW l732bh		;79d5
	.DW l7380h		;79d7
	.DW l73d1h		;79d9
	.DW l749eh		;79db
	.DW l7522h		;79dd
	.DW l78e6h		;79df
	.DW l758ch		;79e1
	.DW l75abh		;79e3
	.IFDEF _J
		.DW $7b23
	.ENDIF
	.IFDEF _UE
		.DW l758ch		;79e5
	.ENDIF
	.DW l75ech		;79e7
	.DW l7616h		;79e9
	.DW l7633h		;79eb
	.DW l7668h		;79ed
	.DW l7689h		;79ef
	.DW l76bch		;79f1
	.DW l76c9h		;79f3
	.DW l76d7h		;79f5
	.DW l76d7h		;79f7
	.DW l7700h		;79f9
	.DW l7767h		;79fb
	.DW l7816h		;79fd
	.DW l785dh		;79ff
	.DW l78a9h		;7a01
	.DW l7ad7h		;7a03
	.DW 0200bh		;7a05
	.DW l7a61h		;7a07
    .DW l7a61h		;7a09
    .DW l7a61h		;7a0b
    .DW l7a61h		;7a0d
    .DW l7a61h		;7a0f
    .DW l7a61h		;7a11
    .DW l7a61h		;7a13
	.DW l7a61h		;7a15
	.DW l7aa6h		;7a17
    .DW l7aa6h		;7a19
    .DW l7aa6h		;7a1b
	.IFDEF _J
    	.DW $726c
	.ENDIF
	.IFDEF _UE
		.DW l7aa6h		;7a1d
	.ENDIF
	.DW l7a72h		;7a1f
	.DW l7aa6h		;7a21
	.IFDEF _J
    	.DW $7285
	.ENDIF
	.IFDEF _UE
		.DW l7a8dh		;7a23
	.ENDIF
	.DW l7aa6h		;7a25
	.DW l7aa6h		;7a27
	.DW l7a9eh		;7a29
	.DW l7a9eh		;7a2b
	.DW l7aa6h		;7a2d
	.DW l7aa6h		;7a2f
	.DW l7a6eh		;7a31
	.DW l7a6eh		;7a33
	.DW l7a6eh		;7a35
	.DW l7a6eh		;7a37
	.DW l7a6eh		;7a39
	.DW l7a4fh		;7a3b
	.DW l7a3fh		;7a3d
l7a3fh:
	ld hl,0de01h		; 21 01 de ;7a3f
	ld (hl),c			; 71 ;7a42
	inc hl			; 23 ;7a43
	ld (hl),b			; 70 ;7a44
	xor a			; af ;7a45
	ld (0de65h),a		; 32 65 de ;7a46
	dec a			; 3d ;7a49
	out (07fh),a		; d3 7f ;7a4a
	jp l7ad7h		; c3 d7 7a ;7a4c
l7a4fh:
	xor a			; af ;7a4f
	ld (0de25h),a		; 32 25 de ;7a50
	ld (0de45h),a		; 32 45 de ;7a53
	ld a,0bfh		; 3e bf ;7a56
	out (07fh),a		; d3 7f ;7a58
	ld a,0dfh		; 3e df ;7a5a
	out (07fh),a		; d3 7f ;7a5c
	jp l7ad7h		; c3 d7 7a ;7a5e
l7a61h:
	call l7dc8h		; cd c8 7d ;7a61
	ld a,080h		; 3e 80 ;7a64
	ld (0de03h),a		; 32 03 de ;7a66
l7a69h:
	ld de,0de05h		; 11 05 de ;7a69
	jr l7aafh		; 18 41 ;7a6c
l7a6eh:
	ld e,010h		; 1e 10 ;7a6e
	jr l7a92h		; 18 20 ;7a70
l7a72h:
	or a			; b7 ;7a72
	jr nz,l7ad7h		; 20 62 ;7a73
	ld (0de03h),a		; 32 03 de ;7a75
	ld de,0de85h		; 11 85 de ;7a78
	.IFDEF _J
		.DB $3e
		.DB $df
		.DB $d3
		.DB $7f
	.ENDIF
	ld hl,0de05h		; 21 05 de ;7a7b
	set 2,(hl)		; cb d6 ;7a7e
	ld hl,0de25h		; 21 25 de ;7a80
	set 2,(hl)		; cb d6 ;7a83
	ld hl,0de45h		; 21 45 de ;7a85
	set 2,(hl)		; cb d6 ;7a88
	jp l7aafh		; c3 af 7a ;7a8a
l7a8dh:
	.IFDEF _J
		.DB $1e
		.DB $08
	.ENDIF
	.IFDEF _UE
		or a			; b7 ;7a8d
		jr nz,l7ad7h		; 20 47 ;7a8e
		jr l7a99h		; 18 07 ;7a90
	.ENDIF
l7a92h:
	cp e			; bb ;7a92
	jr nc,l7ad7h		; 30 42 ;7a93
	ld a,e			; 7b ;7a95
	ld (0de03h),a		; 32 03 de ;7a96
	.IFDEF _J
		call $75b4 ; TODO
	.ENDIF
l7a99h:
	call sub_7de3h		; cd e3 7d ;7a99
	jr l7aa1h		; 18 03 ;7a9c
l7a9eh:
	or a			; b7 ;7a9e
	jr nz,l7ad7h		; 20 36 ;7a9f
l7aa1h:
	ld de,0de05h		; 11 05 de ;7aa1
	jr l7aafh		; 18 09 ;7aa4
l7aa6h;
	or a			; b7 ;7aa6
	jr nz,l7ad7h		; 20 2e ;7aa7
	ld de,0de25h		; 11 25 de ;7aa9
	.IFDEF _J
		call sub_audio_silence
	.ENDIF
	call sub_7de3h		; cd e3 7d ;7aac
l7aafh:
	.IFDEF _UE
		push bc			; c5 ;7aaf
		call sub_audio_silence		; cd d7 7d ;7ab0
		pop bc			; c1 ;7ab3
	.ENDIF
	ld h,b			; 60 ;7ab4
	ld l,c			; 69 ;7ab5
	ld b,(hl)			; 46 ;7ab6
	inc hl			; 23 ;7ab7
l7ab8h:
	push bc			; c5 ;7ab8
	ld bc,l0009h		; 01 09 00 ;7ab9
	ldir		; ed b0 ;7abc
	ld a,020h		; 3e 20 ;7abe
	ld (de),a			; 12 ;7ac0
	inc de			; 13 ;7ac1
	ld a,001h		; 3e 01 ;7ac2
	ld (de),a			; 12 ;7ac4
	inc de			; 13 ;7ac5
	xor a			; af ;7ac6
	ld (de),a			; 12 ;7ac7
	inc de			; 13 ;7ac8
	ld (de),a			; 12 ;7ac9
	inc de			; 13 ;7aca
	ld (de),a			; 12 ;7acb
	push hl			; e5 ;7acc
	ld hl,l0012h		; 21 12 00 ;7acd
	add hl,de			; 19 ;7ad0
	ex de,hl			; eb ;7ad1
	pop hl			; e1 ;7ad2
	inc de			; 13 ;7ad3
	pop bc			; c1 ;7ad4
	djnz l7ab8h		; 10 e1 ;7ad5
l7ad7h:
	ld a,080h		; 3e 80 ;7ad7
	ld (0de00h),a		; 32 00 de ;7ad9
	ret			; c9 ;7adc
sub_7addh:
	ld e,(ix+00ch)		; dd 5e 0c ;7add
	ld d,(ix+00dh)		; dd 56 0d ;7ae0
	inc de			; 13 ;7ae3
	ld (ix+00ch),e		; dd 73 0c ;7ae4
	ld (ix+00dh),d		; dd 72 0d ;7ae7
	ld l,(ix+00ah)		; dd 6e 0a ;7aea
	ld h,(ix+00bh)		; dd 66 0b ;7aed
	or a			; b7 ;7af0
	sbc hl,de		; ed 52 ;7af1
	call z,sub_7c43h		; cc 43 7c ;7af3
	ld e,(ix+010h)		; dd 5e 10 ;7af6
	ld d,(ix+011h)		; dd 56 11 ;7af9
	ld a,e			; 7b ;7afc
	or d			; b2 ;7afd
	jr nz,l7b07h		; 20 07 ;7afe
	ld (ix+016h),00fh		; dd 36 16 0f ;7b00
	jp l7bb5h		; c3 b5 7b ;7b04
l7b07h:
	bit 5,(ix+000h)		; dd cb 00 6e ;7b07
	jr nz,l7b32h		; 20 25 ;7b0b
	ld a,(ix+006h)		; dd 7e 06 ;7b0d
	or a			; b7 ;7b10
	jr nz,l7b27h		; 20 14 ;7b11
	ld (ix+012h),e		; dd 73 12 ;7b13
	ld (ix+013h),d		; dd 72 13 ;7b16
	jp l7b6eh		; c3 6e 7b ;7b19
	.INCLUDE "physics/get_terrain_table.asm"
l7b27h:
	ld hl,l7956h		; 21 56 79 ;7b27
	call sub_get_terrain_table		; cd 1c 7b ;7b2a
	call sub_process_terrain		; cd 0d 7c ;7b2d
	jr l7b6eh		; 18 3c ;7b30
l7b32h:
	push de			; d5 ;7b32
	ld l,(ix+014h)		; dd 6e 14 ;7b33
	ld h,(ix+015h)		; dd 66 15 ;7b36
	or a			; b7 ;7b39
	sbc hl,de		; ed 52 ;7b3a
	push af			; f5 ;7b3c
	ld a,l			; 7d ;7b3d
	jp p,l7b43h		; f2 43 7b ;7b3e
	neg		; ed 44 ;7b41
l7b43h:
	ld h,a			; 67 ;7b43
	ld e,(ix+00ch)		; dd 5e 0c ;7b44
	call sub_mul_h_e		; cd 84 7e ;7b47
	ld e,(ix+00ah)		; dd 5e 0a ;7b4a
	call sub_div_hl_e		; cd 90 7e ;7b4d
	ld e,a			; 5f ;7b50
	ld d,000h		; 16 00 ;7b51
	pop af			; f1 ;7b53
	ld a,e			; 7b ;7b54
	jp p,l7b5eh		; f2 5e 7b ;7b55
	neg		; ed 44 ;7b58
	jr z,l7b5eh		; 28 02 ;7b5a
	dec d			; 15 ;7b5c
	ld e,a			; 5f ;7b5d
l7b5eh:
	pop hl			; e1 ;7b5e
	add hl,de			; 19 ;7b5f
	ex de,hl			; eb ;7b60
	ld (ix+012h),e		; dd 73 12 ;7b61
	ld (ix+013h),d		; dd 72 13 ;7b64
	ld a,(ix+006h)		; dd 7e 06 ;7b67
	or a			; b7 ;7b6a
	jp nz,l7b27h		; c2 27 7b ;7b6b
l7b6eh:
	ld a,(ix+007h)		; dd 7e 07 ;7b6e
	or a			; b7 ;7b71
	jr nz,l7b7fh		; 20 0b ;7b72
	ld a,(ix+008h)		; dd 7e 08 ;7b74
	cpl			; 2f ;7b77
	and 00fh		; e6 0f ;7b78
	ld (ix+016h),a		; dd 77 16 ;7b7a
	jr l7b8ah		; 18 0b ;7b7d
l7b7fh:
	res 7,a		; cb bf ;7b7f
	ld hl,l7905h		; 21 05 79 ;7b81
	call sub_get_terrain_table		; cd 1c 7b ;7b84
	call sub_7bd3h		; cd d3 7b ;7b87
l7b8ah:
	bit 6,(ix+000h)		; dd cb 00 76 ;7b8a
	jr nz,l7bb5h		; 20 25 ;7b8e
	ld a,(ix+001h)		; dd 7e 01 ;7b90
	and 00fh		; e6 0f ;7b93
	ld c,a			; 4f ;7b95
	ld b,000h		; 06 00 ;7b96
	ld hl,l7bc8h		; 21 c8 7b ;7b98
	add hl,bc			; 09 ;7b9b
	ld c,(hl)			; 4e ;7b9c
	ld a,(ix+012h)		; dd 7e 12 ;7b9d
	and 00fh		; e6 0f ;7ba0
	or c			; b1 ;7ba2
	call sub_write_psg		; cd c0 7d ;7ba3
	ld a,(ix+012h)		; dd 7e 12 ;7ba6
	and 0f0h		; e6 f0 ;7ba9
	or (ix+013h)		; dd b6 13 ;7bab
	rrca			; 0f ;7bae
	rrca			; 0f ;7baf
	rrca			; 0f ;7bb0
	rrca			; 0f ;7bb1
	call sub_write_psg		; cd c0 7d ;7bb2
l7bb5h:
	ld a,(ix+001h)		; dd 7e 01 ;7bb5
	and 00fh		; e6 0f ;7bb8
	ld c,a			; 4f ;7bba
	ld b,000h		; 06 00 ;7bbb
	ld hl,l7bcch		; 21 cc 7b ;7bbd
	add hl,bc			; 09 ;7bc0
	ld a,(hl)			; 7e ;7bc1
	or (ix+016h)		; dd b6 16 ;7bc2
	jp sub_write_psg		; c3 c0 7d ;7bc5
l7bc8h:
	add a,b			; 80 ;7bc8
	and b			; a0 ;7bc9
	ret nz			; c0 ;7bca
	ret nz			; c0 ;7bcb
l7bcch:
	sub b			; 90 ;7bcc
	or b			; b0 ;7bcd
	ret nc			; d0 ;7bce
	ret p			; f0 ;7bcf
l7bd0h:
	ld (ix+00eh),a		; dd 77 0e ;7bd0
sub_7bd3h:
	push hl			; e5 ;7bd3
	ld a,(ix+00eh)		; dd 7e 0e ;7bd4
	srl a		; cb 3f ;7bd7
	push af			; f5 ;7bd9
	ld c,a			; 4f ;7bda
	ld b,000h		; 06 00 ;7bdb
	add hl,bc			; 09 ;7bdd
	pop af			; f1 ;7bde
	ld a,(hl)			; 7e ;7bdf
	pop hl			; e1 ;7be0
	jr c,l7bf7h		; 38 14 ;7be1
	rrca			; 0f ;7be3
	rrca			; 0f ;7be4
	rrca			; 0f ;7be5
	rrca			; 0f ;7be6
	or a			; b7 ;7be7
	jr z,l7bd0h		; 28 e6 ;7be8
	cp 010h		; fe 10 ;7bea
	jr nz,l7bf3h		; 20 05 ;7bec
	dec (ix+00eh)		; dd 35 0e ;7bee
	jr sub_7bd3h		; 18 e0 ;7bf1
l7bf3h:
	cp 020h		; fe 20 ;7bf3
	jr z,l7c02h		; 28 0b ;7bf5
l7bf7h:
	inc (ix+00eh)		; dd 34 0e ;7bf7
	or 0f0h		; f6 f0 ;7bfa
	add a,(ix+008h)		; dd 86 08 ;7bfc
	inc a			; 3c ;7bff
	jr c,l7c03h		; 38 01 ;7c00
l7c02h:
	xor a			; af ;7c02
l7c03h:
	cpl			; 2f ;7c03
	and 00fh		; e6 0f ;7c04
	ld (ix+016h),a		; dd 77 16 ;7c06
	ret			; c9 ;7c09
	.INCLUDE "physics/process_terrain.asm"
sub_7c43h:
	ld e,(ix+003h)		; dd 5e 03 ;7c43
	ld d,(ix+004h)		; dd 56 04 ;7c46
l7c49h:
	ld a,(de)			; 1a ;7c49
	inc de			; 13 ;7c4a
	cp 0e0h		; fe e0 ;7c4b
	jp nc,l7cd7h		; d2 d7 7c ;7c4d
	bit 3,(ix+000h)		; dd cb 00 5e ;7c50
	jr nz,l7cb6h		; 20 60 ;7c54
	or a			; b7 ;7c56
	jp p,l7c92h		; f2 92 7c ;7c57
	sub 080h		; d6 80 ;7c5a
	jr z,l7c61h		; 28 03 ;7c5c
	add a,(ix+005h)		; dd 86 05 ;7c5e
l7c61h:
	ld hl,l7df2h		; 21 f2 7d ;7c61
	ld c,a			; 4f ;7c64
	ld b,000h		; 06 00 ;7c65
	add hl,bc			; 09 ;7c67
	add hl,bc			; 09 ;7c68
	ld a,(hl)			; 7e ;7c69
	ld (ix+010h),a		; dd 77 10 ;7c6a
	inc hl			; 23 ;7c6d
	ld a,(hl)			; 7e ;7c6e
	ld (ix+011h),a		; dd 77 11 ;7c6f
	bit 5,(ix+000h)		; dd cb 00 6e ;7c72
	jr z,l7cd0h		; 28 58 ;7c76
	ld a,(de)			; 1a ;7c78
	inc de			; 13 ;7c79
	sub 080h		; d6 80 ;7c7a
	add a,(ix+005h)		; dd 86 05 ;7c7c
	ld hl,l7df2h		; 21 f2 7d ;7c7f
	ld c,a			; 4f ;7c82
	ld b,000h		; 06 00 ;7c83
	add hl,bc			; 09 ;7c85
	add hl,bc			; 09 ;7c86
	ld a,(hl)			; 7e ;7c87
	ld (ix+014h),a		; dd 77 14 ;7c88
	inc hl			; 23 ;7c8b
	ld a,(hl)			; 7e ;7c8c
	ld (ix+015h),a		; dd 77 15 ;7c8d
l7c90h:
	ld a,(de)			; 1a ;7c90
l7c91h:
	inc de			; 13 ;7c91
l7c92h:
	push de			; d5 ;7c92
	ld h,a			; 67 ;7c93
	ld e,(ix+002h)		; dd 5e 02 ;7c94
	call sub_mul_h_e		; cd 84 7e ;7c97
	pop de			; d1 ;7c9a
	ld (ix+00ah),l		; dd 75 0a ;7c9b
	ld (ix+00bh),h		; dd 74 0b ;7c9e
l7ca1h:
	xor a			; af ;7ca1
	ld (ix+00eh),a		; dd 77 0e ;7ca2
	ld (ix+00fh),a		; dd 77 0f ;7ca5
	ld (ix+003h),e		; dd 73 03 ;7ca8
	ld (ix+004h),d		; dd 72 04 ;7cab
	xor a			; af ;7cae
	ld (ix+00ch),a		; dd 77 0c ;7caf
	ld (ix+00dh),a		; dd 77 0d ;7cb2
	ret			; c9 ;7cb5
l7cb6h:
	ld (ix+011h),a		; dd 77 11 ;7cb6
	ld a,(de)			; 1a ;7cb9
	inc de			; 13 ;7cba
	ld (ix+010h),a		; dd 77 10 ;7cbb
	bit 5,(ix+000h)		; dd cb 00 6e ;7cbe
	jr z,l7c90h		; 28 cc ;7cc2
	ld a,(de)			; 1a ;7cc4
	inc de			; 13 ;7cc5
	ld (ix+015h),a		; dd 77 15 ;7cc6
	ld a,(de)			; 1a ;7cc9
	inc de			; 13 ;7cca
	ld (ix+014h),a		; dd 77 14 ;7ccb
	jr l7c90h		; 18 c0 ;7cce
l7cd0h:
	ld a,(de)			; 1a ;7cd0
	or a			; b7 ;7cd1
	jp p,l7c91h		; f2 91 7c ;7cd2
	jr l7ca1h		; 18 ca ;7cd5
l7cd7h:
	ld hl,l7ceah		; 21 ea 7c ;7cd7
	push hl			; e5 ;7cda
	and 01fh		; e6 1f ;7cdb
	ld hl,l7ceeh		; 21 ee 7c ;7cdd
	ld c,a			; 4f ;7ce0
	ld b,000h		; 06 00 ;7ce1
	add hl,bc			; 09 ;7ce3
	add hl,bc			; 09 ;7ce4
	ld a,(hl)			; 7e ;7ce5
	inc hl			; 23 ;7ce6
	ld h,(hl)			; 66 ;7ce7
	ld l,a			; 6f ;7ce8
	jp (hl)			; e9 ;7ce9
l7ceah:
	inc de			; 13 ;7cea
	jp l7c49h		; c3 49 7c ;7ceb
.INCLUDE "unknown/jump_table.asm"
l7daah:
	inc de			; 13 ;7daa
	dec (hl)			; 35 ;7dab
	jp nz,l7ceeh_5		; c2 49 7d ;7dac
	inc de			; 13 ;7daf
	ret			; c9 ;7db0
sub_7db1h:
	ld a,(ix+001h)		; dd 7e 01 ;7db1
	and 00fh		; e6 0f ;7db4
	ld c,a			; 4f ;7db6
	ld b,000h		; 06 00 ;7db7
	ld hl,l7bcch		; 21 cc 7b ;7db9
	add hl,bc			; 09 ;7dbc
	ld a,(hl)			; 7e ;7dbd
	or 00fh		; f6 0f ;7dbe
	.INCLUDE "audio/write_psg.asm"
l7dc8h:
	exx			; d9 ;7dc8
	ld hl,0de01h		; 21 01 de ;7dc9
	ld de,0de02h		; 11 02 de ;7dcc
	ld bc,000dfh		; 01 df 00 ;7dcf
	ld (hl),000h		; 36 00 ;7dd2
	ldir		; ed b0 ;7dd4
	exx			; d9 ;7dd6
	.INCLUDE "audio/audio_silence.asm"
sub_7de3h:
	xor a			; af ;7de3
	ld (0de85h),a		; 32 85 de ;7de4
	ld (0dea5h),a		; 32 a5 de ;7de7
	ld (0dec5h),a		; 32 c5 de ;7dea
	ret			; c9 ;7ded
data_audio_silence:
	.INCLUDE "audio/data/silence.asm"
l7df2h:
	nop			; 00 ;7df2
	nop			; 00 ;7df3
	rst 38h			; ff ;7df4
	inc bc			; 03 ;7df5
	rst 0			; c7 ;7df6
	inc bc			; 03 ;7df7
	sub b			; 90 ;7df8
	inc bc			; 03 ;7df9
	ld e,l			; 5d ;7dfa
	inc bc			; 03 ;7dfb
	dec l			; 2d ;7dfc
	inc bc			; 03 ;7dfd
	rst 38h			; ff ;7dfe
	ld (bc),a			; 02 ;7dff
	call nc,0ab02h		; d4 02 ab ;7e00
	ld (bc),a			; 02 ;7e03
	add a,l			; 85 ;7e04
	ld (bc),a			; 02 ;7e05
	ld h,c			; 61 ;7e06
	ld (bc),a			; 02 ;7e07
	ccf			; 3f ;7e08
	ld (bc),a			; 02 ;7e09
	ld e,002h		; 1e 02 ;7e0a
	nop			; 00 ;7e0c
	ld (bc),a			; 02 ;7e0d
	ex (sp),hl			; e3 ;7e0e
	ld bc,001c8h		; 01 c8 01 ;7e0f
	xor a			; af ;7e12
	ld bc,00196h		; 01 96 01 ;7e13
	add a,b			; 80 ;7e16
	ld bc,0016ah		; 01 6a 01 ;7e17
	ld d,(hl)			; 56 ;7e1a
	ld bc,00142h+1		; 01 43 01 ;7e1b
	jr nc,l7e21h		; 30 01 ;7e1e
	rra			; 1f ;7e20
l7e21h:
	ld bc,0010fh		; 01 0f 01 ;7e21
	nop			; 00 ;7e24
	ld bc,000f1h+1		; 01 f2 00 ;7e25
	call po,0d700h		; e4 00 d7 ;7e28
	nop			; 00 ;7e2b
	rlc b		; cb 00 ;7e2c
	ret nz			; c0 ;7e2e
	nop			; 00 ;7e2f
	or l			; b5 ;7e30
	nop			; 00 ;7e31
	xor e			; ab ;7e32
	nop			; 00 ;7e33
	and c			; a1 ;7e34
	nop			; 00 ;7e35
	sbc a,b			; 98 ;7e36
	nop			; 00 ;7e37
	sub b			; 90 ;7e38
	nop			; 00 ;7e39
	adc a,b			; 88 ;7e3a
	nop			; 00 ;7e3b
	add a,b			; 80 ;7e3c
	nop			; 00 ;7e3d
	ld a,c			; 79 ;7e3e
	nop			; 00 ;7e3f
	ld (hl),d			; 72 ;7e40
	nop			; 00 ;7e41
	ld l,h			; 6c ;7e42
	nop			; 00 ;7e43
	ld h,(hl)			; 66 ;7e44
	nop			; 00 ;7e45
	ld h,b			; 60 ;7e46
	nop			; 00 ;7e47
	ld e,e			; 5b ;7e48
	nop			; 00 ;7e49
	ld d,l			; 55 ;7e4a
	nop			; 00 ;7e4b
	ld d,c			; 51 ;7e4c
	nop			; 00 ;7e4d
	ld c,h			; 4c ;7e4e
	nop			; 00 ;7e4f
	ld c,b			; 48 ;7e50
	nop			; 00 ;7e51
	ld b,h			; 44 ;7e52
	nop			; 00 ;7e53
	ld b,b			; 40 ;7e54
	nop			; 00 ;7e55
	inc a			; 3c ;7e56
	nop			; 00 ;7e57
	add hl,sp			; 39 ;7e58
	nop			; 00 ;7e59
	ld (hl),000h		; 36 00 ;7e5a
	inc sp			; 33 ;7e5c
	nop			; 00 ;7e5d
	jr nc,l7e60h		; 30 00 ;7e5e
l7e60h:
	dec l			; 2d ;7e60
	nop			; 00 ;7e61
	dec hl			; 2b ;7e62
	nop			; 00 ;7e63
	jr z,l7e66h		; 28 00 ;7e64
l7e66h:
	ld h,000h		; 26 00 ;7e66
	inc h			; 24 ;7e68
	nop			; 00 ;7e69
	ld (l2000h),hl		; 22 00 20 ;7e6a
	nop			; 00 ;7e6d
	ld e,000h		; 1e 00 ;7e6e
	inc e			; 1c ;7e70
	nop			; 00 ;7e71
	dec de			; 1b ;7e72
	nop			; 00 ;7e73
	add hl,de			; 19 ;7e74
	nop			; 00 ;7e75
	jr l7e78h		; 18 00 ;7e76
l7e78h:
	ld d,000h		; 16 00 ;7e78
	dec d			; 15 ;7e7a
	nop			; 00 ;7e7b
	inc d			; 14 ;7e7c
	nop			; 00 ;7e7d
	inc de			; 13 ;7e7e
	nop			; 00 ;7e7f
	ld (de),a			; 12 ;7e80
	nop			; 00 ;7e81
	.DB $11 $00		;7e82
	.INCLUDE "math/mul_h_e.asm"
	.INCLUDE "math/div_hl_e.asm"

	.DW l7d4fh_15		;7d0c
	ld a,080h		; 3e 80 ;7d0e
	ld (0de04h),a		; 32 04 de ;7d10
	jp l7d5eh		; c3 5e 7d ;7d13
	ld a,(de)			; 1a ;7d16
	add a,(ix+005h)		; dd 86 05 ;7d17
	ld (ix+005h),a		; dd 77 05 ;7d1a
	ret			; c9 ;7d1d
l7ceeh_0:
	ld a,(de)			; 1a ;7d1e
	ld (ix+002h),a		; dd 77 02 ;7d1f
	ret			; c9 ;7d22
	ld a,(de)			; 1a ;7d23
	ld (ix+008h),a		; dd 77 08 ;7d24
	ret			; c9 ;7d27
	ld a,(de)			; 1a ;7d28
	or 0e0h		; f6 e0 ;7d29
	push af			; f5 ;7d2b
	call sub_write_psg		; cd c0 7d ;7d2c
	pop af			; f1 ;7d2f
	or 0fch		; f6 fc ;7d30
	inc a			; 3c ;7d32
	jr nz,l7d3ah		; 20 05 ;7d33
	res 6,(ix+000h)		; dd cb 00 b6 ;7d35
	ret			; c9 ;7d39
l7d3ah:
	.DB $dd		;7d3a
	.DB $cb		;7d3b
	.DB $00		;7d3c
	.DB $f6		;7d3d
	.DB $c9		;7d3e
	.DB $1a		;7d3f
	.DB $dd		;7d40
	.DB $77		;7d41
	.DB $07		;7d42
	.DB $c9		;7d43
	.DB $1a		;7d44
	.DB $dd		;7d45
	.DB $77		;7d46
	.DB $06		;7d47
	.DB $c9		;7d48
l7d49h:
	.DB $eb		;7d49
	.DB $5e		;7d4a
	.DB $23		;7d4b
	.DB $56		;7d4c
	.DB $1b		;7d4d
	.DB $c9		;7d4e
l7d4fh_15:
	.DB $21		;7d4f
	.DB $05		;7d50
	.DB $de		;7d51
	.DB $cb		;7d52
	.DB $96		;7d53
	.DB $21		;7d54
	.DB $25		;7d55
	.DB $de		;7d56
	.DB $cb		;7d57
	.DB $96		;7d58
	.DB $21		;7d59
	.DB $45		;7d5a
	.DB $de		;7d5b
	.DB $cb		;7d5c
	.DB $96		;7d5d
l7d5eh:
	xor a			; af ;7d5e
	ld (0de03h),a		; 32 03 de ;7d5f
	ld (ix+000h),a		; dd 77 00 ;7d62
	call sub_7db1h		; cd b1 7d ;7d65
	pop hl			; e1 ;7d68
	pop hl			; e1 ;7d69
	ret			; c9 ;7d6a
	ld a,(de)			; 1a ;7d6b
	ld c,a			; 4f ;7d6c
	inc de			; 13 ;7d6d
	ld a,(de)			; 1a ;7d6e
	ld b,a			; 47 ;7d6f
	push bc			; c5 ;7d70
	push ix		; dd e5 ;7d71
l7d73h:
	.DB $e1		;7d73
	.DB $dd		;7d74
	.DB $35		;7d75
	.DB $09		;7d76
	.DB $dd		;7d77
	.DB $4e		;7d78
	.DB $09		;7d79
	.DB $dd		;7d7a
	.DB $35		;7d7b
	.DB $09		;7d7c
	.DB $06		;7d7d
	.DB $00		;7d7e
	.DB $09		;7d7f
	.DB $72		;7d80
	.DB $2b		;7d81
	.DB $73		;7d82
	.DB $d1		;7d83
	.DB $1b		;7d84
	.DB $c9		;7d85
	.DB $dd		;7d86
	.DB $e5		;7d87
	.DB $e1		;7d88
	.DB $dd		;7d89
	.DB $4e		;7d8a
	.DB $09		;7d8b
	.DB $06		;7d8c
	.DB $00		;7d8d
	.DB $09		;7d8e
	.DB $5e		;7d8f
	.DB $23		;7d90
	.DB $56		;7d91
	.DB $dd		;7d92
	.DB $34		;7d93
	.DB $09		;7d94
	.DB $dd		;7d95
	.DB $34		;7d96
	.DB $09		;7d97
	.DB $c9		;7d98
	ld a,(de)			; 1a ;7d99
	inc de			; 13 ;7d9a
	add a,017h		; c6 17 ;7d9b
	ld c,a			; 4f ;7d9d
	ld b,000h		; 06 00 ;7d9e
	push ix		; dd e5 ;7da0
	pop hl			; e1 ;7da2
	add hl,bc			; 09 ;7da3
	ld a,(hl)			; 7e ;7da4
	or a			; b7 ;7da5
	jr nz,l7daah		; 20 02 ;7da6
	ld a,(de)			; 1a ;7da8
	ld (hl),a			; 77 ;7da9
l7daah:
	inc de			; 13 ;7daa
	dec (hl)			; 35 ;7dab
	jp nz,l7d49h		; c2 49 7d ;7dac
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
	ld bc,l016ah		; 01 6a 01 ;7e17
	ld d,(hl)			; 56 ;7e1a
	ld bc,l0142h+1		; 01 43 01 ;7e1b
	jr nc,l7e21h		; 30 01 ;7e1e
	rra			; 1f ;7e20
l7e21h:
	ld bc,l010fh		; 01 0f 01 ;7e21
	nop			; 00 ;7e24
	ld bc,l00f1h+1		; 01 f2 00 ;7e25
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

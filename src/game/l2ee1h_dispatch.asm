l2ee1h_dispatch:
	ld hl,0c480h		; 21 80 c4 ;2ee1
	ld a,(hl)			; 7e ;2ee4
	ld b,a			; 47 ;2ee5
	and 080h		; e6 80 ;2ee6
	rlca			; 07 ;2ee8
	ld c,b			; 48 ;2ee9
	ld b,a			; 47 ;2eea
	ld a,c			; 79 ;2eeb
	and 003h		; e6 03 ;2eec
	cp 000h		; fe 00 ;2eee
	jp z,l2ee1h_dispatch_0		; ca 11 2f ;2ef0
	cp 001h		; fe 01 ;2ef3
	jp z,l2ee1h_dispatch_1		; ca 3d 2f ;2ef5
	cp 002h		; fe 02 ;2ef8
	jp z,l2ee1h_dispatch_2		; ca 99 2f ;2efa
	cp 003h		; fe 03 ;2efd
	jp z,l2ee1h_dispatch_3		; ca 6b 2f ;2eff
	jr l2ee1h_dispatch_default		; 18 0c ;2f02
l2f04h:
	ld a,001h		; 3e 01 ;2f04
	ld (0c4a5h),a		; 32 a5 c4 ;2f06
	xor a			; af ;2f09
	ld (0c49dh),a		; 32 9d c4 ;2f0a
	ld (0c4a6h),a		; 32 a6 c4 ;2f0d
l2ee1h_dispatch_default:
	ret			; c9 ;2f10
l2ee1h_dispatch_0:
	ld a,096h		; 3e 96 ;2f11
	ld (0de00h),a		; 32 00 de ;2f13
	xor a			; af ;2f16
	ld (0c48bh),a		; 32 8b c4 ;2f17
	ld c,b			; 48 ;2f1a
	ld b,000h		; 06 00 ;2f1b
	ld hl,0c488h		; 21 88 c4 ;2f1d
	add hl,bc			; 09 ;2f20
	inc (hl)			; 34 ;2f21
	ld hl,03906h		; 21 06 39 ;2f22
	ld (0c4a8h),hl		; 22 a8 c4 ;2f25
	ld hl,0ca86h		; 21 86 ca ;2f28
	ld (0c4aah),hl		; 22 aa c4 ;2f2b
	ld h,004h		; 26 04 ;2f2e
	ld l,004h		; 2e 04 ;2f30
	ld (0c4ach),hl		; 22 ac c4 ;2f32
	ld a,001h		; 3e 01 ;2f35
	ld (0c4a7h),a		; 32 a7 c4 ;2f37
	jp l2f04h		; c3 04 2f ;2f3a
l2ee1h_dispatch_1:
	ld a,097h		; 3e 97 ;2f3d
	ld (0de00h),a		; 32 00 de ;2f3f
	xor a			; af ;2f42
	ld (0c48bh),a		; 32 8b c4 ;2f43
	ld c,b			; 48 ;2f46
	ld b,0		; 06 00 ;2f47
	ld hl,0c489h		; 21 89 c4 ;2f49
	xor a			; af ;2f4c
	sbc hl,bc		; ed 42 ;2f4d
	inc (hl)			; 34 ;2f4f
	ld hl,03906h		; 21 06 39 ;2f50
	ld (0c4a8h),hl		; 22 a8 c4 ;2f53
	ld hl,0ca5eh		; 21 5e ca ;2f56
	ld (0c4aah),hl		; 22 aa c4 ;2f59
	ld h,004h		; 26 04 ;2f5c
	ld l,005h		; 2e 05 ;2f5e
	ld (0c4ach),hl		; 22 ac c4 ;2f60
	ld a,001h		; 3e 01 ;2f63
	ld (0c4a7h),a		; 32 a7 c4 ;2f65
	jp l2f04h		; c3 04 2f ;2f68
l2ee1h_dispatch_3:
	ld a,099h		; 3e 99 ;2f6b
	ld (0de00h),a		; 32 00 de ;2f6d
	xor a			; af ;2f70
	ld (0c48bh),a		; 32 8b c4 ;2f71
	ld c,b			; 48 ;2f74
	ld b,000h		; 06 00 ;2f75
	ld hl,0c489h		; 21 89 c4 ;2f77
	xor a			; af ;2f7a
	sbc hl,bc		; ed 42 ;2f7b
	inc (hl)			; 34 ;2f7d
	ld hl,03906h		; 21 06 39 ;2f7e
	ld (0c4a8h),hl		; 22 a8 c4 ;2f81
	ld hl,0ca36h		; 21 36 ca ;2f84
	ld (0c4aah),hl		; 22 aa c4 ;2f87
	ld h,004h		; 26 04 ;2f8a
	ld l,005h		; 2e 05 ;2f8c
	ld (0c4ach),hl		; 22 ac c4 ;2f8e
	ld a,001h		; 3e 01 ;2f91
	ld (0c4a7h),a		; 32 a7 c4 ;2f93
	jp l2f04h		; c3 04 2f ;2f96
l2ee1h_dispatch_2:
	ld a,098h		; 3e 98 ;2f99
	ld (0de00h),a		; 32 00 de ;2f9b
	ld hl,0c48bh		; 21 8b c4 ;2f9e
	inc (hl)			; 34 ;2fa1
	ld a,(hl)			; 7e ;2fa2
	cp 002h		; fe 02 ;2fa3
	jp nc,l2fc3h		; d2 c3 2f ;2fa5
	ld hl,03904h		; 21 04 39 ;2fa8
	ld (0c4a8h),hl		; 22 a8 c4 ;2fab
	ld hl,0c9feh		; 21 fe c9 ;2fae
	ld (0c4aah),hl		; 22 aa c4 ;2fb1
	ld h,004h		; 26 04 ;2fb4
	ld l,007h		; 2e 07 ;2fb6
	ld (0c4ach),hl		; 22 ac c4 ;2fb8
	ld a,001h		; 3e 01 ;2fbb
	ld (0c4a7h),a		; 32 a7 c4 ;2fbd
	jp l2ee1h_dispatch_default		; c3 10 2f ;2fc0
l2fc3h:
	xor a			; af ;2fc3
	ld (hl),a			; 77 ;2fc4
	ld c,b			; 48 ;2fc5
	ld b,000h		; 06 00 ;2fc6
	ld hl,0c489h		; 21 89 c4 ;2fc8
	xor a			; af ;2fcb
	sbc hl,bc		; ed 42 ;2fcc
	inc (hl)			; 34 ;2fce
	ld hl,038c4h		; 21 c4 38 ;2fcf
	ld (0c4a8h),hl		; 22 a8 c4 ;2fd2
	ld hl,0c980h		; 21 80 c9 ;2fd5
	ld (0c4aah),hl		; 22 aa c4 ;2fd8
	ld h,005h		; 26 05 ;2fdb
	ld l,007h		; 2e 07 ;2fdd
	ld (0c4ach),hl		; 22 ac c4 ;2fdf
	ld a,001h		; 3e 01 ;2fe2
	ld (0c4a7h),a		; 32 a7 c4 ;2fe4
	jp l2ee1h_dispatch_default		; c3 10 2f ;2fe7

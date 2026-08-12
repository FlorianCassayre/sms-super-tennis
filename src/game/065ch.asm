sub_065ch:
	ld hl,l06bfh		; 21 bf 06 ;065c
	ld a,(0c509h)		; 3a 09 c5 ;065f
	cp 050h		; fe 50 ;0662
	jr nc,l0669h		; 30 03 ;0664
	ld hl,l06dfh		; 21 df 06 ;0666
l0669h:
	ld a,(0c501h)		; 3a 01 c5 ;0669
	cp 050h		; fe 50 ;066c
	jr c,l0672h		; 38 02 ;066e
	ld a,04fh		; 3e 4f ;0670
l0672h:
	rrca			; 0f ;0672
	rrca			; 0f ;0673
	rrca			; 0f ;0674
	and 00fh		; e6 0f ;0675
	add a,a			; 87 ;0677
	ld e,a			; 5f ;0678
	ld d,000h		; 16 00 ;0679
	add hl,de			; 19 ;067b
	ld a,(0c089h)		; 3a 89 c0 ;067c
	ld c,a			; 4f ;067f
	ld a,(0c510h)		; 3a 10 c5 ;0680
	cp (hl)			; be ;0683
	jr z,l068ch		; 28 06 ;0684
	ld a,(hl)			; 7e ;0686
	ld (0c510h),a		; 32 10 c5 ;0687
	set 5,c		; cb e9 ;068a
l068ch:
	inc hl			; 23 ;068c
	ld a,(0c511h)		; 3a 11 c5 ;068d
	cp (hl)			; be ;0690
	jr z,l0699h		; 28 06 ;0691
	ld a,(hl)			; 7e ;0693
	ld (0c511h),a		; 32 11 c5 ;0694
	set 6,c		; cb f1 ;0697
l0699h:
	ld a,c			; 79 ;0699
	ld (0c089h),a		; 32 89 c0 ;069a
	ld de,l06ffh		; 11 ff 06 ;069d
	ld a,(0c510h)		; 3a 10 c5 ;06a0
	add a,a			; 87 ;06a3
	ld l,a			; 6f ;06a4
	ld h,000h		; 26 00 ;06a5
	add hl,de			; 19 ;06a7
	ld a,(hl)			; 7e ;06a8
	inc hl			; 23 ;06a9
	ld h,(hl)			; 66 ;06aa
	ld l,a			; 6f ;06ab
	ld (0c512h),hl		; 22 12 c5 ;06ac
	ld a,(0c511h)		; 3a 11 c5 ;06af
	add a,a			; 87 ;06b2
	ld l,a			; 6f ;06b3
	ld h,000h		; 26 00 ;06b4
	add hl,de			; 19 ;06b6
	ld a,(hl)			; 7e ;06b7
	inc hl			; 23 ;06b8
	ld h,(hl)			; 66 ;06b9
	ld l,a			; 6f ;06ba
	ld (0c514h),hl		; 22 14 c5 ;06bb
	ret			; c9 ;06be
l06bfh:
	.DB $01		;06bf
	.DB $06		;06c0
	.DB $02		;06c1
	.DB $07		;06c2
	.DB $02		;06c3
	.DB $07		;06c4
	.DB $02		;06c5
	.DB $07		;06c6
	.DB $03		;06c7
	.DB $07		;06c8
	.DB $03		;06c9
	.DB $07		;06ca
	.DB $03		;06cb
	.DB $08		;06cc
	.DB $03		;06cd
	.DB $08		;06ce
	.DB $04		;06cf
	.DB $08		;06d0
	.DB $04		;06d1
	.DB $08		;06d2
	.DB $04		;06d3
	.DB $08		;06d4
	.DB $04		;06d5
	.DB $08		;06d6
	.DB $04		;06d7
	.DB $08		;06d8
	.DB $04		;06d9
	.DB $08		;06da
	.DB $04		;06db
	.DB $08		;06dc
	.DB $04		;06dd
	.DB $08		;06de
l06dfh:
	.DB $00		;06df
	.DB $05		;06e0
	.DB $01		;06e1
	.DB $06		;06e2
	.DB $01		;06e3
	.DB $06		;06e4
	.DB $01		;06e5
	.DB $06		;06e6
	.DB $02		;06e7
	.DB $06		;06e8
	.DB $02		;06e9
	.DB $06		;06ea
	.DB $02		;06eb
	.DB $07		;06ec
	.DB $02		;06ed
	.DB $07		;06ee
	.DB $03		;06ef
	.DB $07		;06f0
	.DB $03		;06f1
	.DB $08		;06f2
	.DB $04		;06f3
	.DB $08		;06f4
	.DB $04		;06f5
	.DB $08		;06f6
	.DB $04		;06f7
	.DB $08		;06f8
	.DB $04		;06f9
	.DB $08		;06fa
	.DB $04		;06fb
	.DB $08		;06fc
	.DB $04		;06fd
	.DB $08		;06fe
l06ffh:
	.DW $c600		;06ff
	.DW $c620		;0701
	.DW $c640		;0703
	.DW $c660		;0705
	.DW $c680		;0707
	.DW $c6a0		;0709
	.DW $c6c0		;070b
	.DW $c6e0		;070d
	.DW $c700		;070f

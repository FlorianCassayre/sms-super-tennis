sub_z_ordering:
	xor a			; af ;05cc
	ld (0c1cah),a		; 32 ca c1 ;05cd
	inc a			; 3c ;05d0
	ld (0c1cbh),a		; 32 cb c1 ;05d1
@loop_outer:
	ld a,(0c1cah)		; 3a ca c1 ;05d4
	ld e,a			; 5f ;05d7
	ld d,000h		; 16 00 ;05d8
	ld hl,0c1c4h		; 21 c4 c1 ;05da
	add hl,de			; 19 ;05dd
	ld a,(hl)			; 7e ;05de
	add a,a			; 87 ;05df
	ld e,a			; 5f ;05e0
	ld hl,l0636h		; 21 36 06 ;05e1
	add hl,de			; 19 ;05e4
	ld e,(hl)			; 5e ;05e5
	inc hl			; 23 ;05e6
	ld d,(hl)			; 56 ;05e7
	ex de,hl			; eb ;05e8
	ld c,(hl)			; 4e ;05e9
@loop_inner:
	ld a,(0c1cbh)		; 3a cb c1 ;05ea
	ld e,a			; 5f ;05ed
	ld d,000h		; 16 00 ;05ee
	ld hl,0c1c4h		; 21 c4 c1 ;05f0
	add hl,de			; 19 ;05f3
	ld a,(hl)			; 7e ;05f4
	add a,a			; 87 ;05f5
	ld e,a			; 5f ;05f6
	ld hl,l0636h		; 21 36 06 ;05f7
	add hl,de			; 19 ;05fa
	ld e,(hl)			; 5e ;05fb
	inc hl			; 23 ;05fc
	ld d,(hl)			; 56 ;05fd
	ld a,(de)			; 1a ;05fe
	cp c			; b9 ;05ff
	jr c,@no_swap		; 38 19 ;0600
	ld c,a			; 4f ;0602
	ld a,(0c1cah)		; 3a ca c1 ;0603
	ld e,a			; 5f ;0606
	ld d,000h		; 16 00 ;0607
	ld hl,0c1c4h		; 21 c4 c1 ;0609
	add hl,de			; 19 ;060c
	ld b,(hl)			; 46 ;060d
	push hl			; e5 ;060e
	ld a,(0c1cbh)		; 3a cb c1 ;060f
	ld e,a			; 5f ;0612
	ld hl,0c1c4h		; 21 c4 c1 ;0613
	add hl,de			; 19 ;0616
	ld a,(hl)			; 7e ;0617
	pop de			; d1 ;0618
	ld (de),a			; 12 ;0619
	ld (hl),b			; 70 ;061a
@no_swap:
	ld a,(0c1cbh)		; 3a cb c1 ;061b
	inc a			; 3c ;061e
	ld (0c1cbh),a		; 32 cb c1 ;061f
	cp 006h		; fe 06 ;0622
	jr nz,@loop_inner		; 20 c4 ;0624
	ld a,(0c1cah)		; 3a ca c1 ;0626
	inc a			; 3c ;0629
	ld (0c1cah),a		; 32 ca c1 ;062a
	cp 005h		; fe 05 ;062d
	ret z			; c8 ;062f
	inc a			; 3c ;0630
	ld (0c1cbh),a		; 32 cb c1 ;0631
	jr @loop_outer		; 18 9e ;0634

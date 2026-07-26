isr_vblank_update:
	push af			; f5 ;0165
	in a,(0bfh)		; db bf ;0166
	bit 7,a		; cb 7f ;0168
	jp z,l0237h		; ca 37 02 ;016a
	push ix		; dd e5 ;016d
	push iy		; fd e5 ;016f
	push bc			; c5 ;0171
	push de			; d5 ;0172
	push hl			; e5 ;0173
	ex af,af'			; 08 ;0174
	exx			; d9 ;0175
	push af			; f5 ;0176
	push bc			; c5 ;0177
	push de			; d5 ;0178
	push hl			; e5 ;0179
	ld hl,0c003h		; 21 03 c0 ;017a
	in a,(0ddh)		; db dd ;017d
	and 010h		; e6 10 ;017f
	ld c,(hl)			; 4e ;0181
	ld (hl),a			; 77 ;0182
	xor c			; a9 ;0183
	and c			; a1 ;0184
	jp nz,l0213h		; c2 13 02 ;0185
	ld a,(0c005h)		; 3a 05 c0 ;0188
	inc a			; 3c ;018b
	cp 00fh		; fe 0f ;018c
	jr c,+		; 38 02 ;018e
	ld a,00fh		; 3e 0f ;0190
+:
	ld (0c005h),a		; 32 05 c0 ;0192
	ld a,(0c004h)		; 3a 04 c0 ;0195
	or a			; b7 ;0198
	jp nz,l0219h		; c2 19 02 ;0199
	ld a,(0c001h)		; 3a 01 c0 ;019c
	or a			; b7 ;019f
	jp nz,l0224h		; c2 24 02 ;01a0
	ld c,0beh		; 0e be ;01a3
	ld a,(0c089h)		; 3a 89 c0 ;01a5
	rlca			; 07 ;01a8
	jp nc,l022fh		; d2 2f 02 ;01a9
	ld hl,l1fc0h		; 21 c0 1f ;01ac
	call sub_set_vdp_write_addr		; cd 26 04 ;01af
	ld hl,(0c514h)		; 2a 14 c5 ;01b2
	ld b,020h		; 06 20 ;01b5
	otir		; ed b3 ;01b7
	ld hl,l1fe0h		; 21 e0 1f ;01b9
	call sub_set_vdp_write_addr		; cd 26 04 ;01bc
	ld hl,(0c512h)		; 2a 12 c5 ;01bf
	ld b,020h		; 06 20 ;01c2
	otir		; ed b3 ;01c4
	ld hl,03f00h		; 21 00 3f ;01c6
	call sub_set_vdp_write_addr		; cd 26 04 ;01c9
	ld hl,0c100h		; 21 00 c1 ;01cc
	ld b,040h		; 06 40 ;01cf
	otir		; ed b3 ;01d1
	ld hl,03f80h		; 21 80 3f ;01d3
	call sub_set_vdp_write_addr		; cd 26 04 ;01d6
	ld hl,0c140h		; 21 40 c1 ;01d9
	ld b,080h		; 06 80 ;01dc
	otir		; ed b3 ;01de
	xor a			; af ;01e0
	ld (0c089h),a		; 32 89 c0 ;01e1
l01e4h:
	call sub_3543h		; cd 43 35 ;01e4
	ld c,00ch		; 0e 0c ;01e7
	call sub_delay_vdp		; cd 60 02 ;01e9
	call sub_update_cond_color		; cd 68 02 ;01ec
	call sub_load_vram_rect_dynamic		; cd b0 35 ;01ef
	call sub_3566h		; cd 66 35 ;01f2
	call sub_027bh_joy		; cd 7b 02 ;01f5
	call sub_joy_debounce		; cd 95 07 ;01f8
l01fbh:
	.IFDEF _J
		.DB $cd $44 $71		;01fb
	.ENDIF
	.IFDEF _UE
		call sub_796fh		; cd 6f 79 ;01fb
	.ENDIF
l01feh:
	ld hl,$c001
	ld (hl),001h		; 36 01 ;0201
	pop hl			; e1 ;0203
	pop de			; d1 ;0204
	pop bc			; c1 ;0205
	pop af			; f1 ;0206
	exx			; d9 ;0207
	ex af,af'			; 08 ;0208
	pop hl			; e1 ;0209
	pop de			; d1 ;020a
	pop bc			; c1 ;020b
	pop iy		; fd e1 ;020c
	pop ix		; dd e1 ;020e
	pop af			; f1 ;0210
	ei			; fb ;0211
	ret			; c9 ;0212

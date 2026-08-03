sub_mul_de_bc:
	ld hl,0		; 21 00 00 ;03f7
	ld a,010h		; 3e 10 ;03fa
mul_de_bc_loop:
	add hl,hl			; 29 ;03fc
	ex de,hl			; eb ;03fd
	adc hl,hl		; ed 6a ;03fe
l0400h:
	ex de,hl			; eb ;0400
	jr nc,+		; 30 04 ;0401
	add hl,bc			; 09 ;0403
	jr nc,+		; 30 01 ;0404
	inc de			; 13 ;0406
+:
	dec a			; 3d ;0407
sub_0408h:
	jr nz,mul_de_bc_loop		; 20 f2 ;0408
	ret			; c9 ;040a

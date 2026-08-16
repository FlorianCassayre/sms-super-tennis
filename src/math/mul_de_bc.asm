sub_mul_de_bc:
	ld hl,0		;03f7
	ld a,010h		;03fa
mul_de_bc_loop:
	add hl,hl			;03fc
	ex de,hl			;03fd
	adc hl,hl		;03fe
	ex de,hl			;0400
	jr nc,+		;0401
	add hl,bc			;0403
	jr nc,+		;0404
	inc de			;0406
+:
	dec a			;0407
	jr nz,mul_de_bc_loop		;0408
	ret			;040a

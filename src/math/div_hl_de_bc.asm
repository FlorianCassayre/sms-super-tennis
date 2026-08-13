sub_div_hl_de_bc:
	ld a,010h		;040b
-:
	sla e		;040d
	rl d		;040f
	adc hl,hl		;0411
	jr c,+		;0413
	sbc hl,bc		;0415
	jr nc,++		;0417
	add hl,bc			;0419
	dec a			;041a
	jr nz,-		;041b
	ret			;041d
+:
	or a			;041e
	sbc hl,bc		;041f
++:
	inc e			;0421
	dec a			;0422
	jr nz,-		;0423
	ret			;0425

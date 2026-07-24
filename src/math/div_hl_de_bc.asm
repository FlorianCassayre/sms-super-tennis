sub_div_hl_de_bc:
	ld a,010h		; 3e 10 ;040b
-:
	sla e		; cb 23 ;040d
	rl d		; cb 12 ;040f
	adc hl,hl		; ed 6a ;0411
	jr c,+		; 38 09 ;0413
	sbc hl,bc		; ed 42 ;0415
	jr nc,++		; 30 08 ;0417
	add hl,bc			; 09 ;0419
	dec a			; 3d ;041a
	jr nz,-		; 20 f0 ;041b
	ret			; c9 ;041d
+:
	or a			; b7 ;041e
	sbc hl,bc		; ed 42 ;041f
++:
	inc e			; 1c ;0421
	dec a			; 3d ;0422
	jr nz,-		; 20 e8 ;0423
	ret			; c9 ;0425

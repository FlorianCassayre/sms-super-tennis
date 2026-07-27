sub_2e98h_2d_scale_clamp:
	ld a,(ix+00dh)		; dd 7e 0d ;2e98
	bit 0,(ix+001h)		; dd cb 01 46 ;2e9b
	ld c,008h		; 0e 08 ;2e9f
	ld b,01eh		; 06 1e ;2ea1
	jp z,+		; ca aa 2e ;2ea3
	ld c,036h		; 0e 36 ;2ea6
	ld b,013h		; 06 13 ;2ea8
+:
	sub c			; 91 ;2eaa
	jr nc,+		; 30 01 ;2eab
	xor a			; af ;2ead
+:
	call sub_div_a_b_c		; cd d0 2e ;2eae
	ld (ix+02fh),c		; dd 71 2f ;2eb1
	ld a,(ix+00bh)		; dd 7e 0b ;2eb4
	bit 0,(ix+001h)		; dd cb 01 46 ;2eb7
	ld c,06ch		; 0e 6c ;2ebb
	ld b,00dh		; 06 0d ;2ebd
	jr z,+		; 28 04 ;2ebf
	ld c,01dh		; 0e 1d ;2ec1
	ld b,006h		; 06 06 ;2ec3
+:
	sub c			; 91 ;2ec5
	jr nc,+		; 30 01 ;2ec6
	xor a			; af ;2ec8
+:
	call sub_div_a_b_c		; cd d0 2e ;2ec9
	ld (ix+02eh),c		; dd 71 2e ;2ecc
	ret			; c9 ;2ecf

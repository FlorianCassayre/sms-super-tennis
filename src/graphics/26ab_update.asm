sub_26ab_update:
	ld a,(0c000h)		; 3a 00 c0 ;26ab
	bit 3,a		; cb 5f ;26ae
	ret nz			; c0 ;26b0
	ld a,(ix + entity_t.id)		; dd 7e 01 ;26b1
	ld b,a			; 47 ;26b4
	and 001h		; e6 01 ;26b5
	ret nz			; c0 ;26b7
	ld a,b			; 78 ;26b8
	and 002h		; e6 02 ;26b9
	jr nz,+		; 20 05 ;26bb
	ld a,(0c1c0h)		; 3a c0 c1 ;26bd
	jr ++		; 18 03 ;26c0
+:
	ld a,(0c1c2h)		; 3a c2 c1 ;26c2
++:
	and 00fh		; e6 0f ;26c5
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;26c7
	ret			; c9 ;26ca

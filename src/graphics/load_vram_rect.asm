sub_load_vram_rect:
	push bc			; c5 ;0464
	ld b,000h		; 06 00 ;0465
	call sub_set_vdp_write_addr		; cd 26 04 ;0467
-:
	ld a,(de)			; 1a ;046a
	out (0beh),a		; d3 be ;046b
	inc de			; 13 ;046d
	ex (sp),hl			; e3 ;046e
	ex (sp),hl			; e3 ;046f
	ld a,(de)			; 1a ;0470
	out (0beh),a		; d3 be ;0471
	inc de			; 13 ;0473
	dec bc			; 0b ;0474
	ld a,c			; 79 ;0475
	or b			; b0 ;0476
	jr nz,-		; 20 f1 ;0477
	ld bc,l0040h		; 01 40 00 ;0479
	add hl,bc			; 09 ;047c
	pop bc			; c1 ;047d
	djnz sub_load_vram_rect		; 10 e4 ;047e
	ret			; c9 ;0480

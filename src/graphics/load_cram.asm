sub_load_cram:
	ld a,l			; 7d ;0481
	out (0bfh),a		; d3 bf ;0482
	ld a,0c0h		; 3e c0 ;0484
l0486h:
	or h			; b4 ;0486
	out (0bfh),a		; d3 bf ;0487
-:
	ex (sp),hl			; e3 ;0489
	ex (sp),hl			; e3 ;048a
	ld a,(de)			; 1a ;048b
	out (0beh),a		; d3 be ;048c
	inc de			; 13 ;048e
	djnz -		; 10 f8 ;048f
	ret			; c9 ;0491

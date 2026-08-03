sub_draw_game_over_typewriter:
	di			; f3 ;347f
	ld a,l			; 7d ;3480
	out (0bfh),a		; d3 bf ;3481
	ld a,h			; 7c ;3483
	or 040h		; f6 40 ;3484
	out (0bfh),a		; d3 bf ;3486
	push bc			; c5 ;3488
	ld b,5		; 06 05 ;3489
	call sub_delay_loop		; cd ff 35 ;348b
	pop bc			; c1 ;348e
	ld a,(de)			; 1a ;348f
	out (0beh),a		; d3 be ;3490
	inc de			; 13 ;3492
	ld a,(de)			; 1a ;3493
	push bc			; c5 ;3494
	ld b,5		; 06 05 ;3495
	call sub_delay_loop		; cd ff 35 ;3497
	pop bc			; c1 ;349a
	out (0beh),a		; d3 be ;349b
	inc de			; 13 ;349d
	inc hl			; 23 ;349e
	inc hl			; 23 ;349f
	ld a,5		; 3e 05 ;34a0
	ei			; fb ;34a2
	call sub_wait_a_frames		; cd e6 35 ;34a3
	djnz sub_draw_game_over_typewriter		; 10 d7 ;34a6
	ret			; c9 ;34a8

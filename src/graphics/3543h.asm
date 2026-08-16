sub_3543h:
	ld a,(state.match_state_flags)		;3543
	bit 2,a		;3546
	ret z			;3548
	ld a,(score.ball_y_sector)		;3549
	add a,a			;354c
	ld e,a			;354d
	ld d,000h		;354e
	ld hl,l3560h		;3550
	add hl,de			;3553
	ld e,(hl)			;3554
	inc hl			;3555
	ld d,(hl)			;3556
	ld hl,03a08h		;3557
	ld bc,2		;355a
	jp sub_cp_ram_vram		;355d
l3560h:
	.DW unknown_word_1		;3560
	.DW unknown_word_0		;3562
	.DW unknown_word_2		;3564

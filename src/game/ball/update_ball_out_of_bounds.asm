sub_update_ball_out_of_bounds:
	ld hl,court_bounds_table		; 21 aa 0e ;0e7f
	ld a,(ball.y_pos + 1)		; 3a 09 c5 ;0e82
	cp (hl)			; be ;0e85
	jr c,@ball_is_out		; 38 1c ;0e86
	inc hl			; 23 ;0e88
	cp (hl)			; be ;0e89
	jr nc,@ball_is_out		; 30 18 ;0e8a
	inc hl			; 23 ;0e8c
	ld a,(0c000h)		; 3a 00 c0 ;0e8d
	bit 7,a		; cb 7f ;0e90
	jr z,@check_x_bounds		; 28 02 ;0e92
	inc hl			; 23 ;0e94
	inc hl			; 23 ;0e95
@check_x_bounds:
	ld a,(ball.x_pos + 1)		; 3a 0b c5 ;0e96
	cp (hl)			; be ;0e99
	jr c,@ball_is_out		; 38 08 ;0e9a
	inc hl			; 23 ;0e9c
	cp (hl)			; be ;0e9d
	jr nc,@ball_is_out		; 30 04 ;0e9e
	ld a,000h		; 3e 00 ;0ea0
	jr @store_result		; 18 02 ;0ea2
@ball_is_out:
	ld a,001h		; 3e 01 ;0ea4
@store_result:
	ld (ball.out_flag),a		; 32 1d c5 ;0ea6
	ret			; c9 ;0ea9

court_bounds_table:
	.DB $29, $d3		;0eaa
	.DB $52, $ae		;0eac
	.DB $44, $bc		;0eae

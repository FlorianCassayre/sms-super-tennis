sub_update_announcement_timer:
	ld a,(score.announcement)		; 3a a5 c4 ;3566
	cp 000h		; fe 00 ;3569
	ret z			; c8 ;356b
	ld a,(0c49dh)		; 3a 9d c4 ;356c
	cp 000h		; fe 00 ;356f
	jr z,l3578h		; 28 05 ;3571
	dec a			; 3d ;3573
	ld (0c49dh),a		; 32 9d c4 ;3574
	ret			; c9 ;3577
l3578h:
	ld a,004h		; 3e 04 ;3578
	out (O_VDP_CTRL),a		; d3 bf ;357a
	.IFDEF _UE
		ld b,005h		; 06 05 ;357c
		call sub_delay_loop		; cd ff 35 ;357e
    .ENDIF
	ld a,0c0h		; 3e c0 ;3581
	out (O_VDP_CTRL),a		; d3 bf ;3583
	ld a,(0c4a6h)		; 3a a6 c4 ;3585
	cp 002h		; fe 02 ;3588
	jr z,l3599h		; 28 0d ;358a
	cp 000h		; fe 00 ;358c
	jr nz,l35a1h		; 20 11 ;358e
	ld a,001h		; 3e 01 ;3590
	ld (0c4a6h),a		; 32 a6 c4 ;3592
	ld a,003h		; 3e 03 ;3595
	jr l35a8h		; 18 0f ;3597
l3599h:
	xor a			; af ;3599
	ld (0c4a6h),a		; 32 a6 c4 ;359a
	ld a,002h		; 3e 02 ;359d
	jr l35a8h		; 18 07 ;359f
l35a1h:
	ld a,002h		; 3e 02 ;35a1
	ld (0c4a6h),a		; 32 a6 c4 ;35a3
	ld a,013h		; 3e 13 ;35a6
l35a8h:
	out (IO_VDP_DATA),a		; d3 be ;35a8
	.DB $3e		;35aa
	.DB $02		;35ab
	ld (0c49dh),a		; 32 9d c4 ;35ac
	ret			; c9 ;35af

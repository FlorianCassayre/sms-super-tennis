sub_update_announcement_timer:
	ld a,(score.announcement_type)		;3566
	cp 000h		;3569
	ret z			;356b
	ld a,(score.delay_timer)		;356c
	cp 000h		;356f
	jr z,l3578h		;3571
	dec a			;3573
	ld (score.delay_timer),a		;3574
	ret			;3577
l3578h:
	ld a,004h		;3578
	out (O_VDP_CTRL),a		;357a
	.IFDEF _UE
		ld b,005h		;357c
		call sub_delay_loop		;357e
    .ENDIF
	ld a,0c0h		;3581
	out (O_VDP_CTRL),a		;3583
	ld a,(score.announcement_step)		;3585
	cp 002h		;3588
	jr z,l3599h		;358a
	cp 000h		;358c
	jr nz,l35a1h		;358e
	ld a,001h		;3590
	ld (score.announcement_step),a		;3592
	ld a,003h		;3595
	jr l35a8h		;3597
l3599h:
	xor a			;3599
	ld (score.announcement_step),a		;359a
	ld a,002h		;359d
	jr l35a8h		;359f
l35a1h:
	ld a,002h		;35a1
	ld (score.announcement_step),a		;35a3
	ld a,013h		;35a6
l35a8h:
	out (IO_VDP_DATA),a		;35a8
	.DB $3e		;35aa
	.DB $02		;35ab
	ld (score.delay_timer),a		;35ac
	ret			;35af

sub_update_announcement_timer:
	ld a,(score.announcement_type)
	cp 000h
	ret z
	ld a,(score.delay_timer)
	cp 000h
	jr z,l3578h
	dec a
	ld (score.delay_timer),a
	ret
l3578h:
	ld a,004h
	out (O_VDP_CTRL),a
	.IFDEF _UE
		ld b,005h
		call sub_delay_loop
    .ENDIF
	ld a,0c0h
	out (O_VDP_CTRL),a
	ld a,(score.announcement_step)
	cp 002h
	jr z,l3599h
	cp 000h
	jr nz,l35a1h
	ld a,001h
	ld (score.announcement_step),a
	ld a,003h
	jr l35a8h
l3599h:
	xor a
	ld (score.announcement_step),a
	ld a,002h
	jr l35a8h
l35a1h:
	ld a,002h
	ld (score.announcement_step),a
	ld a,013h
l35a8h:
	out (IO_VDP_DATA),a
	.DB $3e
	.DB $02
	ld (score.delay_timer),a
	ret

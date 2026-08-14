sub_game_umpire_announcement:
	ld a,(0c518h)		;0d84
	dec a			;0d87
	jr z,l0db5h		;0d88
	dec a			;0d8a
	jr z,l0da4h		;0d8b
	dec a			;0d8d
	jr z,l0d9ah		;0d8e
	ld a,(0c041h)		;0d90
	ld (0c042h),a		;0d93
	ld c,000h		;0d96
	jr l0dc0h		;0d98
l0d9ah:
	ld a,(0c519h)		;0d9a
	or a			;0d9d
	jr nz,l0da4h		;0d9e
	ld c,000h		;0da0
	jr l0dc0h		;0da2
l0da4h:
	ld c,001h		;0da4
	ld a,(0c519h)		;0da6
	dec a			;0da9
	jr z,l0dc0h		;0daa
	ld c,000h		;0dac
	dec a			;0dae
	jr z,l0dc0h		;0daf
	ld c,002h		;0db1
	jr l0dc0h		;0db3
l0db5h:
	ld c,002h		;0db5
	ld a,(0c040h)		;0db7
	bit 0,a		;0dba
	jr nz,l0dc0h		;0dbc
	ld c,003h		;0dbe
l0dc0h:
	ld a,(0c042h)		;0dc0
	ld e,a			;0dc3
	ld d,000h		;0dc4
	ld hl,l0e00h		;0dc6
	add hl,de			;0dc9
	ld a,(hl)			;0dca
	or c			;0dcb
	ld (0c480h),a		;0dcc
	ret			;0dcf

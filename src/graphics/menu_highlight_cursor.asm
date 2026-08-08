sub_menu_highlight_cursor:
	ld a,(0c518h)		; 3a 18 c5 ;0d84
	dec a			; 3d ;0d87
	jr z,l0db5h		; 28 2b ;0d88
	dec a			; 3d ;0d8a
	jr z,l0da4h		; 28 17 ;0d8b
	dec a			; 3d ;0d8d
	jr z,l0d9ah		; 28 0a ;0d8e
	ld a,(0c041h)		; 3a 41 c0 ;0d90
	ld (0c042h),a		; 32 42 c0 ;0d93
	ld c,000h		; 0e 00 ;0d96
	jr l0dc0h		; 18 26 ;0d98
l0d9ah:
	ld a,(0c519h)		; 3a 19 c5 ;0d9a
	or a			; b7 ;0d9d
	jr nz,l0da4h		; 20 04 ;0d9e
	ld c,000h		; 0e 00 ;0da0
	jr l0dc0h		; 18 1c ;0da2
l0da4h:
	ld c,001h		; 0e 01 ;0da4
	ld a,(0c519h)		; 3a 19 c5 ;0da6
	dec a			; 3d ;0da9
	jr z,l0dc0h		; 28 14 ;0daa
	ld c,000h		; 0e 00 ;0dac
	dec a			; 3d ;0dae
	jr z,l0dc0h		; 28 0f ;0daf
	ld c,002h		; 0e 02 ;0db1
	jr l0dc0h		; 18 0b ;0db3
l0db5h:
	ld c,002h		; 0e 02 ;0db5
	ld a,(0c040h)		; 3a 40 c0 ;0db7
	bit 0,a		; cb 47 ;0dba
	jr nz,l0dc0h		; 20 02 ;0dbc
	ld c,003h		; 0e 03 ;0dbe
l0dc0h:
	ld a,(0c042h)		; 3a 42 c0 ;0dc0
	ld e,a			; 5f ;0dc3
	ld d,000h		; 16 00 ;0dc4
	ld hl,l0e00h		; 21 00 0e ;0dc6
	add hl,de			; 19 ;0dc9
	ld a,(hl)			; 7e ;0dca
	or c			; b1 ;0dcb
	ld (0c480h),a		; 32 80 c4 ;0dcc
	ret			; c9 ;0dcf

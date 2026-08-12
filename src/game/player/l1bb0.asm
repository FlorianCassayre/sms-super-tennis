l1bb0h:
	bit 1,(ix + entity_t.side_state)		; dd cb 01 4e ;1bb0
	ld hl,0c242h		; 21 42 c2 ;1bb4
	ld e,004h		; 1e 04 ;1bb7
	jr nz,l1bc0h		; 20 05 ;1bb9
	ld hl,0c2c2h		; 21 c2 c2 ;1bbb
	ld e,000h		; 1e 00 ;1bbe
l1bc0h:
	ld a,(hl)			; 7e ;1bc0
	and 03fh		; e6 3f ;1bc1
	cp 003h		; fe 03 ;1bc3
	ld a,000h		; 3e 00 ;1bc5
	jr z,l1bd4h		; 28 0b ;1bc7
	ld a,(0c000h)		; 3a 00 c0 ;1bc9
	bit 7,a		; cb 7f ;1bcc
	ld a,002h		; 3e 02 ;1bce
	jr nz,l1bd4h		; 20 02 ;1bd0
	ld a,008h		; 3e 08 ;1bd2
l1bd4h:
	or e			; b3 ;1bd4
	ld e,a			; 5f ;1bd5
	ld a,(0c044h)		; 3a 44 c0 ;1bd6
	or e			; b3 ;1bd9
	add a,a			; 87 ;1bda
	ld e,a			; 5f ;1bdb
	ld d,000h		; 16 00 ;1bdc
	ld hl,l1c07h		; 21 07 1c ;1bde
	add hl,de			; 19 ;1be1
	ld a,(hl)			; 7e ;1be2
	ld (ix+030h),a		; dd 77 30 ;1be3
	inc hl			; 23 ;1be6
	ld e,(hl)			; 5e ;1be7
	ld hl,l1c1bh		; 21 1b 1c ;1be8
	add hl,de			; 19 ;1beb
	ld a,(hl)			; 7e ;1bec
	ld (ix + entity_t.y_pos),a		; dd 77 0a ;1bed
	inc hl			; 23 ;1bf0
	ld a,(hl)			; 7e ;1bf1
	ld (ix + entity_t.y_pos + 1),a		; dd 77 0b ;1bf2
	ld (ix + entity_t.y_pos_cache),a		; dd 77 14 ;1bf5
	inc hl			; 23 ;1bf8
	ld a,(hl)			; 7e ;1bf9
	ld (ix + entity_t.x_pos),a		; dd 77 0c ;1bfa
	inc hl			; 23 ;1bfd
	ld a,(hl)			; 7e ;1bfe
	ld (ix + entity_t.x_pos + 1),a		; dd 77 0d ;1bff
	ld (ix + entity_t.type),014h		; dd 36 02 14 ;1c02
	ret			; c9 ;1c06
l1c07h:
	.DB $05		;1c07
	.DB $0c		;1c08
	.DB $05		;1c09
	.DB $08		;1c0a
	.DB $01		;1c0b
	.DB $00		;1c0c
	.DB $05		;1c0d
	.DB $08		;1c0e
	.DB $05		;1c0f
	.DB $0c		;1c10
	.DB $05		;1c11
	.DB $08		;1c12
	.DB $05		;1c13
	.DB $0c		;1c14
	.DB $01		;1c15
	.DB $04		;1c16
	.DB $01		;1c17
	.DB $00		;1c18
	.DB $01		;1c19
	.DB $04		;1c1a
l1c1bh:
	.DB $00		;1c1b
	.DB $28		;1c1c
	.DB $00		;1c1d
	.DB $70		;1c1e
	.DB $00		;1c1f
	.DB $28		;1c20
	.DB $00		;1c21
	.DB $a0		;1c22
	.DB $00		;1c23
	.DB $38		;1c24
	.DB $00		;1c25
	.DB $70		;1c26
	.DB $00		;1c27
	.DB $38		;1c28
	.DB $00		;1c29
	.DB $a0		;1c2a

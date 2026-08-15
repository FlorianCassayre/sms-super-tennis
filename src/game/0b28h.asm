sub_0b28h:
	ld hl,0c006h		;0b28
	ld e,006h		;0b2b
	ld a,(0c000h)		;0b2d
	bit 3,a		;0b30
	jr z,l0b36h		;0b32
	ld e,086h		;0b34
l0b36h:
	ld (hl),e			;0b36
	inc hl			;0b37
	ld (hl),000h		;0b38
	ret			;0b3a

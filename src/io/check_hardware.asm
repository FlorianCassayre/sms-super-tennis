sub_check_hardware:
	ld a,0f5h		; 3e f5 ;4106
	out (O_IO_CTRL),a		; d3 3f ;4108
	in a,(I_JOYPAD_2)		; db dd ;410a
	and 0c0h		; e6 c0 ;410c
	cp 0c0h		; fe c0 ;410e
	jr nz,+		; 20 10 ;4110
	ld a,055h		; 3e 55 ;4112
	out (O_IO_CTRL),a		; d3 3f ;4114
	in a,(I_JOYPAD_2)		; db dd ;4116
	and 0c0h		; e6 c0 ;4118
	or a			; b7 ;411a
	jr nz,+		; 20 05 ;411b
	ld a,0ffh		; 3e ff ;411d
	out (O_IO_CTRL),a		; d3 3f ;411f
	ret			; c9 ;4121
+:
	xor a			; af ;4122
	ret			; c9 ;4123

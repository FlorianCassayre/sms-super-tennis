sub_hardware_self_test:
	ld a,0f5h		;4106
	out (O_IO_CTRL),a		;4108
	in a,(I_JOYPAD_2)		;410a
	and 0c0h		;410c
	cp 0c0h		;410e
	jr nz,@fail		;4110
	ld a,055h		;4112
	out (O_IO_CTRL),a		;4114
	in a,(I_JOYPAD_2)		;4116
	and 0c0h		;4118
	or a			;411a
	jr nz,@fail		;411b
	ld a,HARDWARE_SMS		;411d
	out (O_IO_CTRL),a		;411f
	ret			;4121
@fail:
	xor a			;4122
	ret			;4123

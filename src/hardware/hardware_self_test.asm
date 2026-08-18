sub_hardware_self_test:
	ld a,0f5h
	out (O_IO_CTRL),a
	in a,(I_JOYPAD_2)
	and 0c0h
	cp 0c0h
	jr nz,@fail
	ld a,055h
	out (O_IO_CTRL),a
	in a,(I_JOYPAD_2)
	and 0c0h
	or a
	jr nz,@fail
	ld a,HARDWARE_SMS
	out (O_IO_CTRL),a
	ret
@fail:
	xor a
	ret

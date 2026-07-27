sub_027bh_joy:
	ld a,(0c000h)		; 3a 00 c0 ;027b
	bit 2,a		; cb 57 ;027e
	ret z			; c8 ;0280
	bit 3,a		; cb 5f ;0281
	jp nz,++		; c2 69 03 ;0283
	bit 7,a		; cb 7f ;0286
	jr z,+		; 28 0c ;0288
	ld a,(0c1c2h)		; 3a c2 c1 ;028a
	ld (0c1c3h),a		; 32 c3 c1 ;028d
	call sub_get_joy_p2		; cd a3 02 ;0290
	ld (0c1c2h),a		; 32 c2 c1 ;0293
+:
	ld a,(0c1c0h)		; 3a c0 c1 ;0296
	ld (0c1c1h),a		; 32 c1 c1 ;0299
	call sub_get_joy_p1		; cd 0f 03 ;029c
	ld (0c1c0h),a		; 32 c0 c1 ;029f
	ret			; c9 ;02a2
	.INCLUDE "io/get_joy_p2.asm"
	.INCLUDE "io/get_joy_p1.asm"
++:
	ret			; c9 ;0369

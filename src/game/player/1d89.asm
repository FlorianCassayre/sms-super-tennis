sub_1d89h:
	ld a,(ix+025h)		;1d89
	bit 7,a		;1d8c
	jr nz,l1dffh		;1d8e
	set 7,a		;1d90
	ld (ix+025h),a		;1d92
	call sub_game_racket_evaluate_swing_type		;1d95
	ld e,a			;1d98
	ld d,a			;1d99
	ld a,(ix+02eh)		;1d9a
	cp 003h		;1d9d
	jr nc,l1db0h		;1d9f
	ld a,e			;1da1
	cp 002h		;1da2
	jr c,l1dd3h		;1da4
	ld e,000h		;1da6
	cp 003h		;1da8
	jr z,l1dd3h		;1daa
	ld e,001h		;1dac
	jr l1dd3h		;1dae
l1db0h:
	cp 004h		;1db0
	jr nc,l1db7h		;1db2
	inc e			;1db4
	jr l1dd3h		;1db5
l1db7h:
	cp 005h		;1db7
	jr c,l1dd3h		;1db9
	ld a,(0c401h)		;1dbb
	and 07fh		;1dbe
	cp 01ah		;1dc0
	ld e,002h		;1dc2
	jr z,l1dd3h		;1dc4
	ld e,003h		;1dc6
	cp 01dh		;1dc8
	jr nz,l1dd3h		;1dca
	ld a,d			;1dcc
	cp 001h		;1dcd
	jr c,l1dd3h		;1dcf
	ld e,002h		;1dd1
l1dd3h:
	ld a,e			;1dd3
	ld b,004h		;1dd4
	ld c,01ch		;1dd6
	and a			;1dd8
	jr z,l1defh		;1dd9
	ld b,003h		;1ddb
	ld c,01dh		;1ddd
	cp 001h		;1ddf
	jr z,l1defh		;1de1
	ld b,005h		;1de3
	ld c,01bh		;1de5
	cp 002h		;1de7
	jr z,l1defh		;1de9
	ld b,009h		;1deb
	ld c,01ah		;1ded
l1defh:
	ld (ix+022h),b		;1def
	ld (ix+01fh),c		;1df2
	ld (ix+023h),0ffh		;1df5
	ld a,(ix+016h)		;1df9
	ld (ix+020h),a		;1dfc
l1dffh:
	call sub_game_player_apply_movement		;1dff
	call sub_game_racket_process_swing_contact		;1e02
	ld a,(ix+023h)		;1e05
	and a			;1e08
	jr z,l1e0fh		;1e09
	call sub_game_player_update_animation		;1e0b
	ret			;1e0e
l1e0fh:
	ld a,(ix+027h)		;1e0f
	and a			;1e12
	ld a,000h		;1e13
	jr z,l1e19h		;1e15
	ld a,001h		;1e17
l1e19h:
	ld (ix+025h),a		;1e19
	ld (ix+019h),000h		;1e1c
	ld (ix+01dh),000h		;1e20
	ret			;1e24

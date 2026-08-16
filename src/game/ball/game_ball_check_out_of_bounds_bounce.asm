sub_game_ball_check_out_of_bounds_bounce:
	ld a,(0c518h)		;0e04
	or a			;0e07
	ret nz			;0e08
	ld a,(game.match_flags)		;0e09
	bit 0,a		;0e0c
	jr z,l0e3bh		;0e0e
	ld a,(game.current_player)		;0e10
	add a,a			;0e13
	ld e,a			;0e14
	add a,a			;0e15
	add a,e			;0e16
	ld e,a			;0e17
	ld d,000h		;0e18
	ld hl,l0dd0h		;0e1a
	add hl,de			;0e1d
	ld a,(0c509h)		;0e1e
	cp (hl)			;0e21
	jr c,l0e6fh		;0e22
	inc hl			;0e24
	cp (hl)			;0e25
	jr nc,l0e6fh		;0e26
	inc hl			;0e28
	ld a,(0c044h)		;0e29
	add a,a			;0e2c
	ld e,a			;0e2d
	add hl,de			;0e2e
	ld a,(0c50bh)		;0e2f
	cp (hl)			;0e32
	jr c,l0e6fh		;0e33
	inc hl			;0e35
	cp (hl)			;0e36
	jr c,l0e67h		;0e37
	jr l0e6fh		;0e39
l0e3bh:
	ld a,(game.last_hitter)		;0e3b
	add a,a			;0e3e
	ld e,a			;0e3f
	add a,a			;0e40
	add a,e			;0e41
	ld e,a			;0e42
	ld d,000h		;0e43
	ld hl,l0de8h		;0e45
	add hl,de			;0e48
	ld a,(0c509h)		;0e49
	cp (hl)			;0e4c
	jr c,l0e6bh		;0e4d
	inc hl			;0e4f
	cp (hl)			;0e50
	jr nc,l0e6bh		;0e51
	inc hl			;0e53
	ld a,(state.match_state_flags)		;0e54
	bit 7,a		;0e57
	jr z,l0e5dh		;0e59
	inc hl			;0e5b
	inc hl			;0e5c
l0e5dh:
	ld a,(0c50bh)		;0e5d
	cp (hl)			;0e60
	jr c,l0e6bh		;0e61
	inc hl			;0e63
	cp (hl)			;0e64
	jr nc,l0e6bh		;0e65
l0e67h:
	ld a,002h		;0e67
	jr l0e7bh		;0e69
l0e6bh:
	ld a,001h		;0e6b
	jr l0e71h		;0e6d
l0e6fh:
	ld a,003h		;0e6f
l0e71h:
	ld hl,0c000h		;0e71
	res 0,(hl)		;0e74
	ld hl,0c518h		;0e76
	ld (hl),002h		;0e79
l0e7bh:
	ld (0c519h),a		;0e7b
	ret			;0e7e

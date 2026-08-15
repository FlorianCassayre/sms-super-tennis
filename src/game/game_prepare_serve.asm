sub_game_prepare_serve:
	ld hl,score.game_lost		;0b3b
	ld a,0f8h		;0b3e
	and (hl)			;0b40
	ld (hl),a			;0b41
	ld hl,0c200h		;0b42
	ld de,entities.player.1.bottom.id		;0b45
	ld bc,0017fh		;0b48
	ld (hl),000h		;0b4b
	ldir		;0b4d
	ld hl,0		;0b4f
	ld (0c518h),hl		;0b52
	xor a			;0b55
	ld (game.match_flags),a		;0b56
	ld (0c516h),a		;0b59
	ld (ball.bounces_count),a		;0b5c
	ld hl,0c100h		;0b5f
	ld de,0c101h		;0b62
	ld bc,03fh		;0b65
	ld (hl),0d0h		;0b68
	ldir		;0b6a
	ld a,(game.match_progression_state)		;0b6c
	or a			;0b6f
	jr z,l0ba8h		;0b70
	dec a			;0b72
	jr z,l0ba0h		;0b73
	dec a			;0b75
	jr z,l0b8fh		;0b76
	dec a			;0b78
	jr z,l0b81h		;0b79
	ld a,(0c044h)		;0b7b
	or a			;0b7e
	jr nz,l0ba0h		;0b7f
l0b81h:
	ld hl,game.current_server		;0b81
	ld a,(hl)			;0b84
	inc a			;0b85
	cp 004h		;0b86
	jr nz,l0b8ch		;0b88
	ld a,000h		;0b8a
l0b8ch:
	ld (hl),a			;0b8c
	jr l0ba0h		;0b8d
l0b8fh:
	ld hl,0c044h		;0b8f
	ld (hl),000h		;0b92
	inc hl			;0b94
	ld a,(hl)			;0b95
	inc a			;0b96
	cp 004h		;0b97
	jr nz,l0b9dh		;0b99
	ld a,000h		;0b9b
l0b9dh:
	ld (hl),a			;0b9d
	jr l0ba8h		;0b9e
l0ba0h:
	ld hl,0c044h		;0ba0
	ld a,(hl)			;0ba3
	inc a			;0ba4
	and 001h		;0ba5
	ld (hl),a			;0ba7
l0ba8h:
	ld hl,l0c43h		;0ba8
	ld a,(0c000h)		;0bab
	bit 7,a		;0bae
	jr nz,l0bb5h		;0bb0
	ld hl,l0c3fh		;0bb2
l0bb5h:
	ld a,(game.current_server)		;0bb5
	ld e,a			;0bb8
	ld d,000h		;0bb9
	add hl,de			;0bbb
	ld a,(hl)			;0bbc
	ld (game.current_player),a		;0bbd
	ld hl,l0c57h		;0bc0
	ld a,(0c000h)		;0bc3
	bit 7,a		;0bc6
	jr nz,l0bcdh		;0bc8
	ld hl,l0c47h		;0bca
l0bcdh:
	ld a,(game.current_player)		;0bcd
	add a,a			;0bd0
	add a,a			;0bd1
	ld e,a			;0bd2
	ld d,000h		;0bd3
	add hl,de			;0bd5
	ld a,(hl)			;0bd6
	ld (entities.player.1.bottom.state_index),a		;0bd7
	inc hl			;0bda
	ld a,(hl)			;0bdb
	ld (entities.player.1.top.state_index),a		;0bdc
	inc hl			;0bdf
	ld a,(hl)			;0be0
	ld (entities.player.2.bottom.state_index),a		;0be1
	inc hl			;0be4
	ld a,(hl)			;0be5
	ld (entities.player.2.top.state_index),a		;0be6
	ld a,04fh		;0be9
	ld (0c344h),a		;0beb
	ld a,050h		;0bee
	ld (0c304h),a		;0bf0
	ld a,018h		;0bf3
	ld (entities.ball.state_index),a		;0bf5
	ld a,016h		;0bf8
	ld (entities.ball_shadow.state_index),a		;0bfa
	xor a			;0bfd
	ld (entities.ball.ball_hit_flag),a		;0bfe
	ld (entities.ball_shadow.ball_hit_flag),a		;0c01
	ld a,(game.current_player)		;0c04
	ld e,a			;0c07
	ld d,000h		;0c08
	ld hl,l0c67h		;0c0a
	add hl,de			;0c0d
	ld a,(hl)			;0c0e
	ld (entities.ball.allowed_dirs),a		;0c0f
	ld hl,joy.1.pressed		;0c12
	ld de,040h		;0c15
	xor a			;0c18
	ld b,006h		;0c19
l0c1bh:
	add hl,de			;0c1b
	ld (hl),a			;0c1c
	inc a			;0c1d
	djnz l0c1bh		;0c1e
	ld a,(game.current_player)		;0c20
	ld (game.last_hitter),a		;0c23
	ld hl,0c000h		;0c26
	set 2,(hl)		;0c29
	ld a,001h		;0c2b
	ld (0c011h),a		;0c2d
	ld (score.ball_y_sector),a		;0c30
	ld a,004h		;0c33
	bit 3,(hl)		;0c35
	jr z,l0c3bh		;0c37
	or 080h		;0c39
l0c3bh:
	ld (0c006h),a		;0c3b
	ret			;0c3e

l0c3fh:
	.DB $00		;0c3f
	.DB $01		;0c40
	.DB $00		;0c41
	.DB $01		;0c42
l0c43h:
	.DB $00		;0c43
	.DB $01		;0c44
	.DB $02		;0c45
	.DB $03		;0c46
l0c47h:
	.DB $03		;0c47
	.DB $02		;0c48
	.DB $00		;0c49
	.DB $00		;0c4a
	.DB $01		;0c4b
	.DB $03		;0c4c
	.DB $00		;0c4d
	.DB $00		;0c4e
	.DB $00		;0c4f
	.DB $00		;0c50
	.DB $00		;0c51
	.DB $00		;0c52
	.DB $00		;0c53
	.DB $00		;0c54
	.DB $00		;0c55
	.DB $00		;0c56
l0c57h:
	.DB $03		;0c57
	.DB $02		;0c58
	.DB $01		;0c59
	.DB $02		;0c5a
	.DB $01		;0c5b
	.DB $03		;0c5c
	.DB $01		;0c5d
	.DB $02		;0c5e
	.DB $01		;0c5f
	.DB $02		;0c60
	.DB $03		;0c61
	.DB $02		;0c62
	.DB $01		;0c63
	.DB $02		;0c64
	.DB $01		;0c65
	.DB $03		;0c66

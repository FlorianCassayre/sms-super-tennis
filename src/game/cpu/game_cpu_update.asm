sub_game_cpu_update:
	ld a,(ix + entity_t.side_state)		; dd 7e 01 ;1e25
	and 003h		; e6 03 ;1e28
	ld e,a			; 5f ;1e2a
	ld d,000h		; 16 00 ;1e2b
	ld hl,partner_offset_table		; 21 5a 1e ;1e2d
	add hl,de			; 19 ;1e30
	ld e,(hl)			; 5e ;1e31
	ld hl,entities.player		; 21 00 c2 ;1e32
	add hl,de			; 19 ;1e35
	push hl			; e5 ;1e36
	pop iy		; fd e1 ;1e37
	ld a,(ix + entity_t.cpu_state)		; dd 7e 30 ;1e39
	and 00fh		; e6 0f ;1e3c
	ld hl,cpu_state_table		; 21 44 1e ;1e3e
	jp l0807h_game_fsm		; c3 07 08 ;1e41

cpu_state_table:
	.DW sub_cpu_state_track_ball		;1e44
	.DW sub_cpu_state_serve_wait		;1e46
	.DW sub_cpu_state_net		;1e48
	.DW sub_cpu_state_baseline_attack		;1e4a
	.DW sub_cpu_state_return_center		;1e4c
	.DW sub_cpu_state_wait		;1e4e
	.DW sub_cpu_state_baseline_defense		;1e50
	.DW sub_cpu_state_idle_wander		;1e52
	.DW sub_cpu_state_smash		;1e54
	.DW sub_cpu_state_doubles_cover_1		;1e56
	.DW sub_cpu_state_doubles_cover_2		;1e58

partner_offset_table:
	.DB entities.player.2.bottom - entities.player		;1e5a
	.DB entities.player.2.top - entities.player		;1e5b
	.DB entities.player.1.bottom - entities.player		;1e5c
	.DB entities.player.1.top - entities.player		;1e5d

sub_cpu_state_track_ball:
	ld a,(ix + entity_t.ball_incoming)		; dd 7e 27 ;1e5e
	and a			; a7 ;1e61
	jr nz,@l1e83h		; 20 1f ;1e62
	ld (ix + entity_t.shot_button),a		; dd 77 28 ;1e64
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;1e67
	ld a,(iy+033h)		; fd 7e 33 ;1e6a
	cp 004h		; fe 04 ;1e6d
	jr nz,@l1e75h		; 20 04 ;1e6f
	ld (iy+033h),003h		; fd 36 33 03 ;1e71
@l1e75h:
	ld a,(ix + entity_t.cpu_state_timer)		; dd 7e 31 ;1e75
	and 007h		; e6 07 ;1e78
	cp 007h		; fe 07 ;1e7a
	ret nz			; c0 ;1e7c
	ld (ix + entity_t.cpu_state),004h		; dd 36 30 04 ;1e7d
	jr @l1ef0h		; 18 6d ;1e81
@l1e83h:
	ld a,(0c401h)		; 3a 01 c4 ;1e83
	cp 019h		; fe 19 ;1e86
	jr z,@l1ee8h		; 28 5e ;1e88
	cp 01ch		; fe 1c ;1e8a
	jr nz,@l1e9bh		; 20 0d ;1e8c
	ld a,(0c000h)		; 3a 00 c0 ;1e8e
	bit 7,a		; cb 7f ;1e91
	jr nz,@l1edfh		; 20 4a ;1e93
	ld (ix + entity_t.cpu_state),006h		; dd 36 30 06 ;1e95
	jr @l1ef0h		; 18 55 ;1e99
@l1e9bh:
	bit 0,(ix + entity_t.side_state)		; dd cb 01 46 ;1e9b
	jr nz,@l1eb3h		; 20 12 ;1e9f
	ld a,(0c30bh)		; 3a 0b c3 ;1ea1
	add a,008h		; c6 08 ;1ea4
	ld e,(ix + entity_t.y_pos + 1)		; dd 5e 0b ;1ea6
	sub e			; 93 ;1ea9
	jr c,@l1ec2h		; 38 16 ;1eaa
	cp 006h		; fe 06 ;1eac
	jr c,@l1ee8h		; 38 38 ;1eae
	jp @l1ec2h		; c3 c2 1e ;1eb0
@l1eb3h:
	ld a,(0c30bh)		; 3a 0b c3 ;1eb3
	sub 008h		; d6 08 ;1eb6
	ld e,(ix + entity_t.y_pos + 1)		; dd 5e 0b ;1eb8
	sub e			; 93 ;1ebb
	jr nc,@l1ec2h		; 30 04 ;1ebc
	cp 0fah		; fe fa ;1ebe
	jr c,@l1ee8h		; 38 26 ;1ec0
@l1ec2h:
	ld a,(0c401h)		; 3a 01 c4 ;1ec2
	cp 01ch		; fe 1c ;1ec5
	jr z,@l1ef5h		; 28 2c ;1ec7
	ld a,(0c000h)		; 3a 00 c0 ;1ec9
	bit 7,a		; cb 7f ;1ecc
	jr z,@l1edfh		; 28 0f ;1ece
	call sub_game_ball_compute_horizontal_deflection		; cd 0a 16 ;1ed0
	ld h,(ix + entity_t.x_pos + 1)		; dd 66 0d ;1ed3
	sub h			; 94 ;1ed6
	jr nc,@l1edbh		; 30 02 ;1ed7
	neg		; ed 44 ;1ed9
@l1edbh:
	cp 020h		; fe 20 ;1edb
	jr nc,@l1ef5h		; 30 16 ;1edd
@l1edfh:
	ld (iy+033h),003h		; fd 36 33 03 ;1edf
	ld (ix + entity_t.cpu_state),002h		; dd 36 30 02 ;1ee3
	ret			; c9 ;1ee7
@l1ee8h:
	xor a			; af ;1ee8
	ld (ix + entity_t.shot_button),a		; dd 77 28 ;1ee9
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;1eec
	ret			; c9 ;1eef
@l1ef0h:
	ld (iy+033h),002h		; fd 36 33 02 ;1ef0
	ret			; c9 ;1ef4
@l1ef5h:
	ld (iy+033h),001h		; fd 36 33 01 ;1ef5
	ld (ix + entity_t.cpu_state),00ah		; dd 36 30 0a ;1ef9
	ret			; c9 ;1efd
sub_cpu_state_serve_wait:
	ld a,(0c400h)		; 3a 00 c4 ;1efe
	and a			; a7 ;1f01
	ret nz			; c0 ;1f02
	ld a,(ix + entity_t.cpu_sub_state)		; dd 7e 33 ;1f03
	cp 002h		; fe 02 ;1f06
	jr z,@l1f3ch		; 28 32 ;1f08
	cp 005h		; fe 05 ;1f0a
	jr z,@l1f3ch		; 28 2e ;1f0c
	cp 003h		; fe 03 ;1f0e
	jr nz,@l1f22h		; 20 10 ;1f10
	ld a,(0c000h)		; 3a 00 c0 ;1f12
	bit 7,a		; cb 7f ;1f15
	jr z,@l1f22h		; 28 09 ;1f17
	ld (ix + entity_t.cpu_state),009h		; dd 36 30 09 ;1f19
	ld (ix + entity_t.cpu_sub_state),004h		; dd 36 33 04 ;1f1d
	ret			; c9 ;1f21
@l1f22h:
	ld a,(ix + entity_t.ball_incoming)		; dd 7e 27 ;1f22
	and a			; a7 ;1f25
	jr nz,@l1f41h		; 20 19 ;1f26
	ld (ix + entity_t.shot_button),a		; dd 77 28 ;1f28
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;1f2b
	ld a,(ix + entity_t.cpu_state_timer)		; dd 7e 31 ;1f2e
	and 003h		; e6 03 ;1f31
	cp 003h		; fe 03 ;1f33
	ret nz			; c0 ;1f35
	ld a,(0c000h)		; 3a 00 c0 ;1f36
	and 080h		; e6 80 ;1f39
	ret nz			; c0 ;1f3b
@l1f3ch:
	ld (ix + entity_t.cpu_state),005h		; dd 36 30 05 ;1f3c
	ret			; c9 ;1f40
@l1f41h:
	ld a,(0c000h)		; 3a 00 c0 ;1f41
	ld b,003h		; 06 03 ;1f44
	bit 7,a		; cb 7f ;1f46
	jr z,@l1f68h		; 28 1e ;1f48
	ld a,(0c401h)		; 3a 01 c4 ;1f4a
	cp 019h		; fe 19 ;1f4d
	jr z,@l1f68h		; 28 17 ;1f4f
	ld a,(ix + entity_t.cpu_sub_state)		; dd 7e 33 ;1f51
	and a			; a7 ;1f54
	ret z			; c8 ;1f55
	ld b,003h		; 06 03 ;1f56
	cp 001h		; fe 01 ;1f58
	jr z,@l1f68h		; 28 0c ;1f5a
	ld b,005h		; 06 05 ;1f5c
	cp 002h		; fe 02 ;1f5e
	jr z,@l1f68h		; 28 06 ;1f60
	ld b,009h		; 06 09 ;1f62
	cp 003h		; fe 03 ;1f64
	jr z,@l1f68h		; 28 00 ;1f66
@l1f68h:
	ld (ix + entity_t.cpu_state),b		; dd 70 30 ;1f68
	ret			; c9 ;1f6b
sub_cpu_state_net:
	ld a,(ix + entity_t.ball_incoming)		; dd 7e 27 ;1f6c
	and a			; a7 ;1f6f
	jr nz,@l1f7fh		; 20 0d ;1f70
	ld (ix + entity_t.cpu_state),000h		; dd 36 30 00 ;1f72
	ld (ix + entity_t.cpu_sub_state),000h		; dd 36 33 00 ;1f76
	ld (ix + entity_t.shot_button),000h		; dd 36 28 00 ;1f7a
	ret			; c9 ;1f7e
@l1f7fh:
	bit 0,(ix + entity_t.side_state)		; dd cb 01 46 ;1f7f
	jr nz,@l1f97h		; 20 12 ;1f83
	ld a,(0c30bh)		; 3a 0b c3 ;1f85
	add a,008h		; c6 08 ;1f88
	ld e,(ix + entity_t.y_pos + 1)		; dd 5e 0b ;1f8a
	sub e			; 93 ;1f8d
	jr c,@l1fe0h		; 38 50 ;1f8e
	cp 006h		; fe 06 ;1f90
	jr nc,@l1fe0h		; 30 4c ;1f92
	jp @l1fa6h		; c3 a6 1f ;1f94
@l1f97h:
	ld a,(0c30bh)		; 3a 0b c3 ;1f97
	sub 008h		; d6 08 ;1f9a
	ld e,(ix + entity_t.y_pos + 1)		; dd 5e 0b ;1f9c
	sub e			; 93 ;1f9f
	jr nc,@l1fc0h		; 30 1e ;1fa0
	cp 0fah		; fe fa ;1fa2
	jr nc,@l1fc0h		; 30 1a ;1fa4
@l1fa6h:
	ld a,(0c000h)		; 3a 00 c0 ;1fa6
	bit 7,a		; cb 7f ;1fa9
	ld a,004h		; 3e 04 ;1fab
	ld b,002h		; 06 02 ;1fad
	jr z,@l1fb5h		; 28 04 ;1faf
	ld a,00ah		; 3e 0a ;1fb1
	ld b,001h		; 06 01 ;1fb3
@l1fb5h:
	ld (ix + entity_t.cpu_state),a		; dd 77 30 ;1fb5
	ld (iy+033h),b		; fd 70 33 ;1fb8
	ld (ix + entity_t.shot_button),000h		; dd 36 28 00 ;1fbb
	ret			; c9 ;1fbf
@l1fc0h:
	ld e,04ch		; 1e 4c ;1fc0
	call sub_game_ball_compute_horizontal_deflection		; cd 0a 16 ;1fc2
	ld l,000h		; 2e 00 ;1fc5
	ld h,a			; 67 ;1fc7
	ld de,04c00h		; 11 00 4c ;1fc8
	call sub_221eh_collision_broad		; cd 1e 22 ;1fcb
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;1fce
	call sub_game_cpu_evaluate_y_dist_1		; cd 20 23 ;1fd1
	ld a,(ix + entity_t.hit_readiness)		; dd 7e 18 ;1fd4
	and a			; a7 ;1fd7
	ld (ix + entity_t.shot_button),a		; dd 77 28 ;1fd8
	ret z			; c8 ;1fdb
	inc (ix + entity_t.cpu_state_timer)		; dd 34 31 ;1fdc
	ret			; c9 ;1fdf
@l1fe0h:
	ld e,080h		; 1e 80 ;1fe0
	call sub_game_ball_compute_horizontal_deflection		; cd 0a 16 ;1fe2
	ld l,000h		; 2e 00 ;1fe5
	ld h,a			; 67 ;1fe7
	ld de,08000h		; 11 00 80 ;1fe8
	call sub_2298h_collision		; cd 98 22 ;1feb
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;1fee
	call sub_game_cpu_evaluate_y_dist_2		; cd aa 23 ;1ff1
	ld a,(ix + entity_t.hit_readiness)		; dd 7e 18 ;1ff4
	and a			; a7 ;1ff7
	ld (ix + entity_t.shot_button),a		; dd 77 28 ;1ff8
	ret z			; c8 ;1ffb
@l1ffch:
	inc (ix + entity_t.cpu_state_timer)		; dd 34 31 ;1ffc
	ret			; c9 ;1fff
sub_cpu_state_baseline_attack:
	ld a,(ix + entity_t.ball_incoming)		; dd 7e 27 ;2000
	and a			; a7 ;2003
	jr nz,@l2013h		; 20 0d ;2004
	ld (ix + entity_t.cpu_state),009h		; dd 36 30 09 ;2006
	ld (ix + entity_t.cpu_sub_state),000h		; dd 36 33 00 ;200a
	ld (ix + entity_t.shot_button),000h		; dd 36 28 00 ;200e
	ret			; c9 ;2012
@l2013h:
	bit 0,(ix + entity_t.side_state)		; dd cb 01 46 ;2013
	jr z,@l2037h		; 28 1e ;2017
	ld e,028h		; 1e 28 ;2019
	call sub_game_ball_compute_horizontal_deflection		; cd 0a 16 ;201b
	ld l,000h		; 2e 00 ;201e
	ld h,a			; 67 ;2020
	ld de,02800h		; 11 00 28 ;2021
	call sub_221eh_collision_broad		; cd 1e 22 ;2024
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;2027
	call sub_game_cpu_evaluate_y_dist_1		; cd 20 23 ;202a
	ld a,(ix + entity_t.hit_readiness)		; dd 7e 18 ;202d
	ld (ix + entity_t.shot_button),a		; dd 77 28 ;2030
	inc (ix + entity_t.cpu_state_timer)		; dd 34 31 ;2033
	ret			; c9 ;2036
@l2037h:
	ld e,0b0h		; 1e b0 ;2037
	call sub_game_ball_compute_horizontal_deflection		; cd 0a 16 ;2039
	ld l,000h		; 2e 00 ;203c
	ld h,a			; 67 ;203e
	ld de,0b000h		; 11 00 b0 ;203f
	call sub_2298h_collision		; cd 98 22 ;2042
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;2045
	call sub_game_cpu_evaluate_y_dist_2		; cd aa 23 ;2048
	ld a,(ix + entity_t.hit_readiness)		; dd 7e 18 ;204b
	ld (ix + entity_t.shot_button),a		; dd 77 28 ;204e
	inc (ix + entity_t.cpu_state_timer)		; dd 34 31 ;2051
	ret			; c9 ;2054
sub_cpu_state_return_center:
	bit 0,(ix + entity_t.ball_incoming)		; dd cb 27 46 ;2055
	jr nz,@l207eh		; 20 23 ;2059
	ld a,(ix+02eh)		; dd 7e 2e ;205b
	bit 0,(ix + entity_t.side_state)		; dd cb 01 46 ;205e
	jr z,@l2075h		; 28 11 ;2062
	cp 002h		; fe 02 ;2064
	jr c,@l207eh		; 38 16 ;2066
	ld (ix + entity_t.input_dirs),001h		; dd 36 15 01 ;2068
	ld (ix + entity_t.shot_button),000h		; dd 36 28 00 ;206c
	ld (iy+033h),005h		; fd 36 33 05 ;2070
	ret			; c9 ;2074
@l2075h:
	cp 0b0h		; fe b0 ;2075
	jr nc,@l207eh		; 30 05 ;2077
	ld (ix + entity_t.input_dirs),002h		; dd 36 15 02 ;2079
	ret			; c9 ;207d
@l207eh:
	xor a			; af ;207e
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;207f
	ld (ix + entity_t.cpu_state_timer),a		; dd 77 31 ;2082
	ld (ix + entity_t.cpu_state),003h		; dd 36 30 03 ;2085
	ld (iy+033h),005h		; fd 36 33 05 ;2089
	ret			; c9 ;208d
sub_cpu_state_wait:
	ld a,(0c400h)		; 3a 00 c4 ;208e
	and a			; a7 ;2091
	ret nz			; c0 ;2092
	bit 0,(ix + entity_t.ball_incoming)		; dd cb 27 46 ;2093
	jr nz,@l20b2h		; 20 19 ;2097
@l2099h:
	ld a,(0c000h)		; 3a 00 c0 ;2099
	bit 7,a		; cb 7f ;209c
	ld a,002h		; 3e 02 ;209e
	jr z,@l20a5h		; 28 03 ;20a0
	call sub_238dh		; cd 8d 23 ;20a2
@l20a5h:
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;20a5
	ld a,(ix+02eh)		; dd 7e 2e ;20a8
	cp 006h		; fe 06 ;20ab
	ret c			; d8 ;20ad
	ld (ix + entity_t.cpu_sub_state),000h		; dd 36 33 00 ;20ae
@l20b2h:
	ld a,(0c000h)		; 3a 00 c0 ;20b2
	bit 7,a		; cb 7f ;20b5
	jr z,@l20c0h		; 28 07 ;20b7
	ld a,(ix + entity_t.cpu_sub_state)		; dd 7e 33 ;20b9
	cp 005h		; fe 05 ;20bc
	jr z,@l2099h		; 28 d9 ;20be
@l20c0h:
	xor a			; af ;20c0
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;20c1
	ld (ix + entity_t.cpu_state_timer),a		; dd 77 31 ;20c4
	ld (ix + entity_t.cpu_state),000h		; dd 36 30 00 ;20c7
	ret			; c9 ;20cb
sub_cpu_state_baseline_defense:
	ld a,(ix + entity_t.ball_incoming)		; dd 7e 27 ;20cc
	and a			; a7 ;20cf
	jr nz,@l20dfh		; 20 0d ;20d0
	ld (ix + entity_t.cpu_state),004h		; dd 36 30 04 ;20d2
	ld (ix + entity_t.shot_button),000h		; dd 36 28 00 ;20d6
	ld (iy+033h),005h		; fd 36 33 05 ;20da
	ret			; c9 ;20de
@l20dfh:
	bit 0,(ix + entity_t.side_state)		; dd cb 01 46 ;20df
	jr z,@l2106h		; 28 21 ;20e3
	ld e,028h		; 1e 28 ;20e5
	call sub_game_ball_compute_horizontal_deflection		; cd 0a 16 ;20e7
	ld l,000h		; 2e 00 ;20ea
	ld h,a			; 67 ;20ec
	ld de,02800h		; 11 00 28 ;20ed
	call sub_221eh_collision_broad		; cd 1e 22 ;20f0
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;20f3
	call sub_game_cpu_evaluate_y_dist_1		; cd 20 23 ;20f6
	ld a,(ix + entity_t.hit_readiness)		; dd 7e 18 ;20f9
	and a			; a7 ;20fc
	ret z			; c8 ;20fd
	ld (ix + entity_t.shot_button),a		; dd 77 28 ;20fe
	ld (iy+033h),005h		; fd 36 33 05 ;2101
	ret			; c9 ;2105
@l2106h:
	ld e,0b0h		; 1e b0 ;2106
	call sub_game_ball_compute_horizontal_deflection		; cd 0a 16 ;2108
	ld l,000h		; 2e 00 ;210b
	ld h,a			; 67 ;210d
	ld de,000b0h		; 11 b0 00 ;210e
	call sub_2298h_collision		; cd 98 22 ;2111
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;2114
	call sub_game_cpu_evaluate_y_dist_2		; cd aa 23 ;2117
	ld a,(ix + entity_t.hit_readiness)		; dd 7e 18 ;211a
	and a			; a7 ;211d
	ret z			; c8 ;211e
	ld (ix + entity_t.shot_button),a		; dd 77 28 ;211f
	ret			; c9 ;2122
sub_cpu_state_doubles_cover_1:
	bit 7,(ix + entity_t.cpu_state)		; dd cb 30 7e ;2123
	jr nz,@l2132h		; 20 09 ;2127
	set 7,(ix + entity_t.cpu_state)		; dd cb 30 fe ;2129
	ld (ix + entity_t.shot_button),000h		; dd 36 28 00 ;212d
	ret			; c9 ;2131
@l2132h:
	ld a,(ix + entity_t.cpu_sub_state)		; dd 7e 33 ;2132
	cp 002h		; fe 02 ;2135
	jr z,@l2146h		; 28 0d ;2137
	cp 005h		; fe 05 ;2139
	jr z,@l2146h		; 28 09 ;213b
	cp 001h		; fe 01 ;213d
	jr nz,@l214bh		; 20 0a ;213f
	ld (ix + entity_t.cpu_state),003h		; dd 36 30 03 ;2141
	ret			; c9 ;2145
@l2146h:
	ld (ix + entity_t.cpu_state),005h		; dd 36 30 05 ;2146
	ret			; c9 ;214a
@l214bh:
	ld b,(ix+02fh)		; dd 46 2f ;214b
	ld a,(iy+015h)		; fd 7e 15 ;214e
	and 00ch		; e6 0c ;2151
	jr nz,@l2162h		; 20 0d ;2153
	ld a,(iy+02fh)		; fd 7e 2f ;2155
	cp 004h		; fe 04 ;2158
	ld b,008h		; 06 08 ;215a
	jr c,@l217ah		; 38 1c ;215c
	ld b,004h		; 06 04 ;215e
	jr @l217ah		; 18 18 ;2160
@l2162h:
	bit 3,a		; cb 5f ;2162
	jr z,@l216fh		; 28 09 ;2164
	ld a,b			; 78 ;2166
	cp 003h		; fe 03 ;2167
	ld b,004h		; 06 04 ;2169
	jr c,@l217ah		; 38 0d ;216b
	jr @l2176h		; 18 07 ;216d
@l216fh:
	ld a,b			; 78 ;216f
	cp 005h		; fe 05 ;2170
	jr nc,@l217ah		; 30 06 ;2172
	ld b,008h		; 06 08 ;2174
@l2176h:
	ld (ix + entity_t.input_dirs),b		; dd 70 15 ;2176
	ret			; c9 ;2179
@l217ah:
	xor a			; af ;217a
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;217b
	ld (ix + entity_t.cpu_state),001h		; dd 36 30 01 ;217e
	ret			; c9 ;2182
sub_cpu_state_doubles_cover_2:
	ld b,(ix+02fh)		; dd 46 2f ;2183
	ld a,(iy+015h)		; fd 7e 15 ;2186
	and 00ch		; e6 0c ;2189
	jr nz,@l219ah		; 20 0d ;218b
	ld a,(iy+02fh)		; fd 7e 2f ;218d
	cp 004h		; fe 04 ;2190
	ld b,008h		; 06 08 ;2192
	jr c,@l21b2h		; 38 1c ;2194
	ld b,004h		; 06 04 ;2196
	jr @l21b2h		; 18 18 ;2198
@l219ah:
	bit 3,a		; cb 5f ;219a
	jr z,@l21a7h		; 28 09 ;219c
	ld a,b			; 78 ;219e
	cp 003h		; fe 03 ;219f
	ld b,004h		; 06 04 ;21a1
	jr c,@l21b2h		; 38 0d ;21a3
	jr @l21aeh		; 18 07 ;21a5
@l21a7h:
	ld a,b			; 78 ;21a7
	cp 005h		; fe 05 ;21a8
	jr nc,@l21b2h		; 30 06 ;21aa
	ld b,008h		; 06 08 ;21ac
@l21aeh:
	ld (ix + entity_t.input_dirs),b		; dd 70 15 ;21ae
	ret			; c9 ;21b1
@l21b2h:
	xor a			; af ;21b2
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;21b3
	ld (ix + entity_t.cpu_state),000h		; dd 36 30 00 ;21b6
	ret			; c9 ;21ba
sub_cpu_state_idle_wander:
	bit 7,(ix + entity_t.cpu_state)		; dd cb 30 7e ;21bb
	jr nz,@l21cdh		; 20 0c ;21bf
	set 7,(ix + entity_t.cpu_state)		; dd cb 30 fe ;21c1
	ld a,r		; ed 5f ;21c5
	and 01fh		; e6 1f ;21c7
	inc a			; 3c ;21c9
	ld (ix + entity_t.cpu_state_timer),a		; dd 77 31 ;21ca
@l21cdh:
	dec (ix + entity_t.cpu_state_timer)		; dd 35 31 ;21cd
	ret nz			; c0 ;21d0
	ld a,(0c000h)		; 3a 00 c0 ;21d1
	bit 3,a		; cb 5f ;21d4
	ld a,000h		; 3e 00 ;21d6
	jr nz,@l21e6h		; 20 0c ;21d8
	ld a,r		; ed 5f ;21da
	cp 03fh		; fe 3f ;21dc
	jr nc,@l21e4h		; 30 04 ;21de
	and 008h		; e6 08 ;21e0
	jr @l21e6h		; 18 02 ;21e2
@l21e4h:
	and 004h		; e6 04 ;21e4
@l21e6h:
	ld (ix + entity_t.input_dirs),a		; dd 77 15 ;21e6
	res 7,(ix + entity_t.cpu_state)		; dd cb 30 be ;21e9
	ret			; c9 ;21ed
sub_cpu_state_smash:
	bit 7,(ix + entity_t.cpu_state)		; dd cb 30 7e ;21ee
	jr nz,@l21fch		; 20 08 ;21f2
	set 7,(ix + entity_t.cpu_state)		; dd cb 30 fe ;21f4
	ld (ix + entity_t.cpu_state_timer),000h		; dd 36 31 00 ;21f8
@l21fch:
	ld a,(0c501h)		; 3a 01 c5 ;21fc
	cp 02ah		; fe 2a ;21ff
	jr c,@l2207h		; 38 04 ;2201
	set 0,(ix + entity_t.cpu_state_timer)		; dd cb 31 c6 ;2203
@l2207h:
	bit 0,(ix + entity_t.cpu_state_timer)		; dd cb 31 46 ;2207
	ret z			; c8 ;220b
	cp 028h		; fe 28 ;220c
	ret nc			; d0 ;220e
	cp 01ah		; fe 1a ;220f
	ret c			; d8 ;2211
	ld a,r		; ed 5f ;2212
	ld a,r		; ed 5f ;2214
	and 001h		; e6 01 ;2216
	ret nz			; c0 ;2218
	ld (ix + entity_t.shot_button),001h		; dd 36 28 01 ;2219
	ret			; c9 ;221d

sub_game_cpu_update:
	ld a,(ix + entity_t.id)		;1e25
	and 003h		;1e28
	ld e,a			;1e2a
	ld d,000h		;1e2b
	ld hl,partner_offset_table		;1e2d
	add hl,de			;1e30
	ld e,(hl)			;1e31
	ld hl,entities.player		;1e32
	add hl,de			;1e35
	push hl			;1e36
	pop iy		;1e37
	ld a,(ix + entity_t.cpu_state)		;1e39
	and 00fh		;1e3c
	ld hl,cpu_state_table		;1e3e
	jp l0807h_game_fsm		;1e41

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
	ld a,(ix + entity_t.ball_incoming)		;1e5e
	and a			;1e61
	jr nz,@l1e83h		;1e62
	ld (ix + entity_t.shot_button),a		;1e64
	ld (ix + entity_t.input_dirs),a		;1e67
	ld a,(iy+033h)		;1e6a
	cp 004h		;1e6d
	jr nz,@l1e75h		;1e6f
	ld (iy+033h),003h		;1e71
@l1e75h:
	ld a,(ix + entity_t.cpu_state_timer)		;1e75
	and 007h		;1e78
	cp 007h		;1e7a
	ret nz			;1e7c
	ld (ix + entity_t.cpu_state),004h		;1e7d
	jr @l1ef0h		;1e81
@l1e83h:
	ld a,(0c401h)		;1e83
	cp 019h		;1e86
	jr z,@l1ee8h		;1e88
	cp 01ch		;1e8a
	jr nz,@l1e9bh		;1e8c
	ld a,(0c000h)		;1e8e
	bit 7,a		;1e91
	jr nz,@l1edfh		;1e93
	ld (ix + entity_t.cpu_state),006h		;1e95
	jr @l1ef0h		;1e99
@l1e9bh:
	bit 0,(ix + entity_t.id)		;1e9b
	jr nz,@l1eb3h		;1e9f
	ld a,(0c30bh)		;1ea1
	add a,008h		;1ea4
	ld e,(ix + entity_t.y_pos + 1)		;1ea6
	sub e			;1ea9
	jr c,@l1ec2h		;1eaa
	cp 006h		;1eac
	jr c,@l1ee8h		;1eae
	jp @l1ec2h		;1eb0
@l1eb3h:
	ld a,(0c30bh)		;1eb3
	sub 008h		;1eb6
	ld e,(ix + entity_t.y_pos + 1)		;1eb8
	sub e			;1ebb
	jr nc,@l1ec2h		;1ebc
	cp 0fah		;1ebe
	jr c,@l1ee8h		;1ec0
@l1ec2h:
	ld a,(0c401h)		;1ec2
	cp 01ch		;1ec5
	jr z,@l1ef5h		;1ec7
	ld a,(0c000h)		;1ec9
	bit 7,a		;1ecc
	jr z,@l1edfh		;1ece
	call sub_game_ball_compute_horizontal_deflection		;1ed0
	ld h,(ix + entity_t.x_pos + 1)		;1ed3
	sub h			;1ed6
	jr nc,@l1edbh		;1ed7
	neg		;1ed9
@l1edbh:
	cp 020h		;1edb
	jr nc,@l1ef5h		;1edd
@l1edfh:
	ld (iy+033h),003h		;1edf
	ld (ix + entity_t.cpu_state),002h		;1ee3
	ret			;1ee7
@l1ee8h:
	xor a			;1ee8
	ld (ix + entity_t.shot_button),a		;1ee9
	ld (ix + entity_t.input_dirs),a		;1eec
	ret			;1eef
@l1ef0h:
	ld (iy+033h),002h		;1ef0
	ret			;1ef4
@l1ef5h:
	ld (iy+033h),001h		;1ef5
	ld (ix + entity_t.cpu_state),00ah		;1ef9
	ret			;1efd
sub_cpu_state_serve_wait:
	ld a,(0c400h)		;1efe
	and a			;1f01
	ret nz			;1f02
	ld a,(ix + entity_t.cpu_sub_state)		;1f03
	cp 002h		;1f06
	jr z,@l1f3ch		;1f08
	cp 005h		;1f0a
	jr z,@l1f3ch		;1f0c
	cp 003h		;1f0e
	jr nz,@l1f22h		;1f10
	ld a,(0c000h)		;1f12
	bit 7,a		;1f15
	jr z,@l1f22h		;1f17
	ld (ix + entity_t.cpu_state),009h		;1f19
	ld (ix + entity_t.cpu_sub_state),004h		;1f1d
	ret			;1f21
@l1f22h:
	ld a,(ix + entity_t.ball_incoming)		;1f22
	and a			;1f25
	jr nz,@l1f41h		;1f26
	ld (ix + entity_t.shot_button),a		;1f28
	ld (ix + entity_t.input_dirs),a		;1f2b
	ld a,(ix + entity_t.cpu_state_timer)		;1f2e
	and 003h		;1f31
	cp 003h		;1f33
	ret nz			;1f35
	ld a,(0c000h)		;1f36
	and 080h		;1f39
	ret nz			;1f3b
@l1f3ch:
	ld (ix + entity_t.cpu_state),005h		;1f3c
	ret			;1f40
@l1f41h:
	ld a,(0c000h)		;1f41
	ld b,003h		;1f44
	bit 7,a		;1f46
	jr z,@l1f68h		;1f48
	ld a,(0c401h)		;1f4a
	cp 019h		;1f4d
	jr z,@l1f68h		;1f4f
	ld a,(ix + entity_t.cpu_sub_state)		;1f51
	and a			;1f54
	ret z			;1f55
	ld b,003h		;1f56
	cp 001h		;1f58
	jr z,@l1f68h		;1f5a
	ld b,005h		;1f5c
	cp 002h		;1f5e
	jr z,@l1f68h		;1f60
	ld b,009h		;1f62
	cp 003h		;1f64
	jr z,@l1f68h		;1f66
@l1f68h:
	ld (ix + entity_t.cpu_state),b		;1f68
	ret			;1f6b
sub_cpu_state_net:
	ld a,(ix + entity_t.ball_incoming)		;1f6c
	and a			;1f6f
	jr nz,@l1f7fh		;1f70
	ld (ix + entity_t.cpu_state),000h		;1f72
	ld (ix + entity_t.cpu_sub_state),000h		;1f76
	ld (ix + entity_t.shot_button),000h		;1f7a
	ret			;1f7e
@l1f7fh:
	bit 0,(ix + entity_t.id)		;1f7f
	jr nz,@l1f97h		;1f83
	ld a,(0c30bh)		;1f85
	add a,008h		;1f88
	ld e,(ix + entity_t.y_pos + 1)		;1f8a
	sub e			;1f8d
	jr c,@l1fe0h		;1f8e
	cp 006h		;1f90
	jr nc,@l1fe0h		;1f92
	jp @l1fa6h		;1f94
@l1f97h:
	ld a,(0c30bh)		;1f97
	sub 008h		;1f9a
	ld e,(ix + entity_t.y_pos + 1)		;1f9c
	sub e			;1f9f
	jr nc,@l1fc0h		;1fa0
	cp 0fah		;1fa2
	jr nc,@l1fc0h		;1fa4
@l1fa6h:
	ld a,(0c000h)		;1fa6
	bit 7,a		;1fa9
	ld a,004h		;1fab
	ld b,002h		;1fad
	jr z,@l1fb5h		;1faf
	ld a,00ah		;1fb1
	ld b,001h		;1fb3
@l1fb5h:
	ld (ix + entity_t.cpu_state),a		;1fb5
	ld (iy+033h),b		;1fb8
	ld (ix + entity_t.shot_button),000h		;1fbb
	ret			;1fbf
@l1fc0h:
	ld e,04ch		;1fc0
	call sub_game_ball_compute_horizontal_deflection		;1fc2
	ld l,000h		;1fc5
	ld h,a			;1fc7
	ld de,04c00h		;1fc8
	call sub_221eh_collision_broad		;1fcb
	ld (ix + entity_t.input_dirs),a		;1fce
	call sub_game_cpu_evaluate_y_dist_1		;1fd1
	ld a,(ix + entity_t.hit_readiness)		;1fd4
	and a			;1fd7
	ld (ix + entity_t.shot_button),a		;1fd8
	ret z			;1fdb
	inc (ix + entity_t.cpu_state_timer)		;1fdc
	ret			;1fdf
@l1fe0h:
	ld e,080h		;1fe0
	call sub_game_ball_compute_horizontal_deflection		;1fe2
	ld l,000h		;1fe5
	ld h,a			;1fe7
	ld de,08000h		;1fe8
	call sub_2298h_collision		;1feb
	ld (ix + entity_t.input_dirs),a		;1fee
	call sub_game_cpu_evaluate_y_dist_2		;1ff1
	ld a,(ix + entity_t.hit_readiness)		;1ff4
	and a			;1ff7
	ld (ix + entity_t.shot_button),a		;1ff8
	ret z			;1ffb
@l1ffch:
	inc (ix + entity_t.cpu_state_timer)		;1ffc
	ret			;1fff
sub_cpu_state_baseline_attack:
	ld a,(ix + entity_t.ball_incoming)		;2000
	and a			;2003
	jr nz,@l2013h		;2004
	ld (ix + entity_t.cpu_state),009h		;2006
	ld (ix + entity_t.cpu_sub_state),000h		;200a
	ld (ix + entity_t.shot_button),000h		;200e
	ret			;2012
@l2013h:
	bit 0,(ix + entity_t.id)		;2013
	jr z,@l2037h		;2017
	ld e,028h		;2019
	call sub_game_ball_compute_horizontal_deflection		;201b
	ld l,000h		;201e
	ld h,a			;2020
	ld de,02800h		;2021
	call sub_221eh_collision_broad		;2024
	ld (ix + entity_t.input_dirs),a		;2027
	call sub_game_cpu_evaluate_y_dist_1		;202a
	ld a,(ix + entity_t.hit_readiness)		;202d
	ld (ix + entity_t.shot_button),a		;2030
	inc (ix + entity_t.cpu_state_timer)		;2033
	ret			;2036
@l2037h:
	ld e,0b0h		;2037
	call sub_game_ball_compute_horizontal_deflection		;2039
	ld l,000h		;203c
	ld h,a			;203e
	ld de,0b000h		;203f
	call sub_2298h_collision		;2042
	ld (ix + entity_t.input_dirs),a		;2045
	call sub_game_cpu_evaluate_y_dist_2		;2048
	ld a,(ix + entity_t.hit_readiness)		;204b
	ld (ix + entity_t.shot_button),a		;204e
	inc (ix + entity_t.cpu_state_timer)		;2051
	ret			;2054
sub_cpu_state_return_center:
	bit 0,(ix + entity_t.ball_incoming)		;2055
	jr nz,@l207eh		;2059
	ld a,(ix+02eh)		;205b
	bit 0,(ix + entity_t.id)		;205e
	jr z,@l2075h		;2062
	cp 002h		;2064
	jr c,@l207eh		;2066
	ld (ix + entity_t.input_dirs),001h		;2068
	ld (ix + entity_t.shot_button),000h		;206c
	ld (iy+033h),005h		;2070
	ret			;2074
@l2075h:
	cp 0b0h		;2075
	jr nc,@l207eh		;2077
	ld (ix + entity_t.input_dirs),002h		;2079
	ret			;207d
@l207eh:
	xor a			;207e
	ld (ix + entity_t.input_dirs),a		;207f
	ld (ix + entity_t.cpu_state_timer),a		;2082
	ld (ix + entity_t.cpu_state),003h		;2085
	ld (iy+033h),005h		;2089
	ret			;208d
sub_cpu_state_wait:
	ld a,(0c400h)		;208e
	and a			;2091
	ret nz			;2092
	bit 0,(ix + entity_t.ball_incoming)		;2093
	jr nz,@l20b2h		;2097
@l2099h:
	ld a,(0c000h)		;2099
	bit 7,a		;209c
	ld a,002h		;209e
	jr z,@l20a5h		;20a0
	call sub_238dh		;20a2
@l20a5h:
	ld (ix + entity_t.input_dirs),a		;20a5
	ld a,(ix+02eh)		;20a8
	cp 006h		;20ab
	ret c			;20ad
	ld (ix + entity_t.cpu_sub_state),000h		;20ae
@l20b2h:
	ld a,(0c000h)		;20b2
	bit 7,a		;20b5
	jr z,@l20c0h		;20b7
	ld a,(ix + entity_t.cpu_sub_state)		;20b9
	cp 005h		;20bc
	jr z,@l2099h		;20be
@l20c0h:
	xor a			;20c0
	ld (ix + entity_t.input_dirs),a		;20c1
	ld (ix + entity_t.cpu_state_timer),a		;20c4
	ld (ix + entity_t.cpu_state),000h		;20c7
	ret			;20cb
sub_cpu_state_baseline_defense:
	ld a,(ix + entity_t.ball_incoming)		;20cc
	and a			;20cf
	jr nz,@l20dfh		;20d0
	ld (ix + entity_t.cpu_state),004h		;20d2
	ld (ix + entity_t.shot_button),000h		;20d6
	ld (iy+033h),005h		;20da
	ret			;20de
@l20dfh:
	bit 0,(ix + entity_t.id)		;20df
	jr z,@l2106h		;20e3
	ld e,028h		;20e5
	call sub_game_ball_compute_horizontal_deflection		;20e7
	ld l,000h		;20ea
	ld h,a			;20ec
	ld de,02800h		;20ed
	call sub_221eh_collision_broad		;20f0
	ld (ix + entity_t.input_dirs),a		;20f3
	call sub_game_cpu_evaluate_y_dist_1		;20f6
	ld a,(ix + entity_t.hit_readiness)		;20f9
	and a			;20fc
	ret z			;20fd
	ld (ix + entity_t.shot_button),a		;20fe
	ld (iy+033h),005h		;2101
	ret			;2105
@l2106h:
	ld e,0b0h		;2106
	call sub_game_ball_compute_horizontal_deflection		;2108
	ld l,000h		;210b
	ld h,a			;210d
	ld de,000b0h		;210e
	call sub_2298h_collision		;2111
	ld (ix + entity_t.input_dirs),a		;2114
	call sub_game_cpu_evaluate_y_dist_2		;2117
	ld a,(ix + entity_t.hit_readiness)		;211a
	and a			;211d
	ret z			;211e
	ld (ix + entity_t.shot_button),a		;211f
	ret			;2122
sub_cpu_state_doubles_cover_1:
	bit 7,(ix + entity_t.cpu_state)		;2123
	jr nz,@l2132h		;2127
	set 7,(ix + entity_t.cpu_state)		;2129
	ld (ix + entity_t.shot_button),000h		;212d
	ret			;2131
@l2132h:
	ld a,(ix + entity_t.cpu_sub_state)		;2132
	cp 002h		;2135
	jr z,@l2146h		;2137
	cp 005h		;2139
	jr z,@l2146h		;213b
	cp 001h		;213d
	jr nz,@l214bh		;213f
	ld (ix + entity_t.cpu_state),003h		;2141
	ret			;2145
@l2146h:
	ld (ix + entity_t.cpu_state),005h		;2146
	ret			;214a
@l214bh:
	ld b,(ix+02fh)		;214b
	ld a,(iy+015h)		;214e
	and 00ch		;2151
	jr nz,@l2162h		;2153
	ld a,(iy+02fh)		;2155
	cp 004h		;2158
	ld b,008h		;215a
	jr c,@l217ah		;215c
	ld b,004h		;215e
	jr @l217ah		;2160
@l2162h:
	bit 3,a		;2162
	jr z,@l216fh		;2164
	ld a,b			;2166
	cp 003h		;2167
	ld b,004h		;2169
	jr c,@l217ah		;216b
	jr @l2176h		;216d
@l216fh:
	ld a,b			;216f
	cp 005h		;2170
	jr nc,@l217ah		;2172
	ld b,008h		;2174
@l2176h:
	ld (ix + entity_t.input_dirs),b		;2176
	ret			;2179
@l217ah:
	xor a			;217a
	ld (ix + entity_t.input_dirs),a		;217b
	ld (ix + entity_t.cpu_state),001h		;217e
	ret			;2182
sub_cpu_state_doubles_cover_2:
	ld b,(ix+02fh)		;2183
	ld a,(iy+015h)		;2186
	and 00ch		;2189
	jr nz,@l219ah		;218b
	ld a,(iy+02fh)		;218d
	cp 004h		;2190
	ld b,008h		;2192
	jr c,@l21b2h		;2194
	ld b,004h		;2196
	jr @l21b2h		;2198
@l219ah:
	bit 3,a		;219a
	jr z,@l21a7h		;219c
	ld a,b			;219e
	cp 003h		;219f
	ld b,004h		;21a1
	jr c,@l21b2h		;21a3
	jr @l21aeh		;21a5
@l21a7h:
	ld a,b			;21a7
	cp 005h		;21a8
	jr nc,@l21b2h		;21aa
	ld b,008h		;21ac
@l21aeh:
	ld (ix + entity_t.input_dirs),b		;21ae
	ret			;21b1
@l21b2h:
	xor a			;21b2
	ld (ix + entity_t.input_dirs),a		;21b3
	ld (ix + entity_t.cpu_state),000h		;21b6
	ret			;21ba
sub_cpu_state_idle_wander:
	bit 7,(ix + entity_t.cpu_state)		;21bb
	jr nz,@l21cdh		;21bf
	set 7,(ix + entity_t.cpu_state)		;21c1
	ld a,r		;21c5
	and 01fh		;21c7
	inc a			;21c9
	ld (ix + entity_t.cpu_state_timer),a		;21ca
@l21cdh:
	dec (ix + entity_t.cpu_state_timer)		;21cd
	ret nz			;21d0
	ld a,(0c000h)		;21d1
	bit 3,a		;21d4
	ld a,000h		;21d6
	jr nz,@l21e6h		;21d8
	ld a,r		;21da
	cp 03fh		;21dc
	jr nc,@l21e4h		;21de
	and 008h		;21e0
	jr @l21e6h		;21e2
@l21e4h:
	and 004h		;21e4
@l21e6h:
	ld (ix + entity_t.input_dirs),a		;21e6
	res 7,(ix + entity_t.cpu_state)		;21e9
	ret			;21ed
sub_cpu_state_smash:
	bit 7,(ix + entity_t.cpu_state)		;21ee
	jr nz,@l21fch		;21f2
	set 7,(ix + entity_t.cpu_state)		;21f4
	ld (ix + entity_t.cpu_state_timer),000h		;21f8
@l21fch:
	ld a,(0c501h)		;21fc
	cp 02ah		;21ff
	jr c,@l2207h		;2201
	set 0,(ix + entity_t.cpu_state_timer)		;2203
@l2207h:
	bit 0,(ix + entity_t.cpu_state_timer)		;2207
	ret z			;220b
	cp 028h		;220c
	ret nc			;220e
	cp 01ah		;220f
	ret c			;2211
	ld a,r		;2212
	ld a,r		;2214
	and 001h		;2216
	ret nz			;2218
	ld (ix + entity_t.shot_button),001h		;2219
	ret			;221d

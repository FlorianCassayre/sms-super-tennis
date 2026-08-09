sub_player_ball_collision:
	ld a,(state.match_state_flags)		; 3a 00 c0 ;1878
	rrca			; 0f ;187b
	ret nc			; d0 ;187c
	ld hl,l19cbh_bounding_box		; 21 cb 19 ;187d
	ld ix,players		; dd 21 00 c3 ;1880
	call sub_17f1h_aabb		; cd f1 17 ;1884
	ld (0c082h),bc		; ed 43 82 c0 ;1887
	ld (0c084h),de		; ed 53 84 c0 ;188b
	ld a,(players.player_pair_index)		; 3a 12 c3 ;188f
	rrca			; 0f ;1892
	jr c,@check_partners		; 38 0a ;1893
	ld iy,player.1.bottom		; fd 21 00 c2 ;1895
	ld ix,player.2.bottom		; dd 21 80 c2 ;1899
	jr @check_direction		; 18 08 ;189d
@check_partners:
	ld iy,player.1.top		; fd 21 40 c2 ;189f
	ld ix,player.2.top		; dd 21 c0 c2 ;18a3
@check_direction:
	ld a,(state.match_state_flags)		; 3a 00 c0 ;18a7
	rlca			; 07 ;18aa
	jr nc,@towards_p1		; 30 04 ;18ab
	call sub_racket_hit_trajectory		; cd b5 18 ;18ad
	ret c			; d8 ;18b0
@towards_p1:
	push iy		; fd e5 ;18b1
	pop ix		; dd e1 ;18b3
sub_racket_hit_trajectory:
	bit 7,(ix + player_t.state_flags)		; dd cb 19 7e ;18b5
	jp z,@miss		; ca 67 19 ;18b9
	ld a,(state.hit_flags)		; 3a 40 c0 ;18bc
	rlca			; 07 ;18bf
	jp nc,@miss		; d2 67 19 ;18c0
	ld hl,l19dbh_bounding_boxes		; 21 db 19 ;18c3
	ld a,(ix + player_t.animation_frame)		; dd 7e 1e ;18c6
	call 017ebh		; cd eb 17 ;18c9
	ld (0c08eh),bc		; ed 43 8e c0 ;18cc
	ld (0c090h),de		; ed 53 90 c0 ;18d0
	call sub_1806h_bound_check		; cd 06 18 ;18d4
	ld a,e			; 7b ;18d7
	or a			; b7 ;18d8
	jp z,@miss		; ca 67 19 ;18d9
	ld hl,l1a1dh_bounding_boxe_offsets		; 21 1d 1a ;18dc
	ld a,(ix + player_t.animation_frame)		; dd 7e 1e ;18df
	add a,a			; 87 ;18e2
	ld e,a			; 5f ;18e3
	ld d,000h		; 16 00 ;18e4
	add hl,de			; 19 ;18e6
	ld a,(ix + player_t.y_pos + 1)		; dd 7e 0b ;18e7
	add a,(hl)			; 86 ;18ea
	ld b,a			; 47 ;18eb
	inc hl			; 23 ;18ec
	add a,(hl)			; 86 ;18ed
	ld c,a			; 4f ;18ee
	ld a,(0c34bh)		; 3a 4b c3 ;18ef
	cp c			; b9 ;18f2
	jp c,@miss		; da 67 19 ;18f3
	inc hl			; 23 ;18f6
	cp b			; b8 ;18f7
	jp nc,@miss		; d2 67 19 ;18f8
	ld hl,state.hit_flags		; 21 40 c0 ;18fb
	bit 0,(hl)		; cb 46 ;18fe
	jr z,@hit_success		; 28 4f ;1900
	ld bc,l1a3fh_side_state_shot_type		; 01 3f 1a ;1902
	ld a,(0c000h)		; 3a 00 c0 ;1905
	bit 7,a		; cb 7f ;1908
	jr z,@check_serve_result		; 28 09 ;190a
	ld a,(0c044h)		; 3a 44 c0 ;190c
	or a			; b7 ;190f
	jr z,@check_serve_result		; 28 03 ;1910
	ld bc,l1a4fh_side_state_shot_type		; 01 4f 1a ;1912
@check_serve_result:
	ld a,(state.shot_type)		; 3a 41 c0 ;1915
	add a,a			; 87 ;1918
	add a,a			; 87 ;1919
	ld e,a			; 5f ;191a
	ld d,000h		; 16 00 ;191b
	ld h,d			; 62 ;191d
	ld l,(ix + player_t.side_state)		; dd 6e 01 ;191e
	add hl,de			; 19 ;1921
	add hl,bc			; 09 ;1922
	ld a,(hl)			; 7e ;1923
	or a			; b7 ;1924
	jp z,@hit_success		; ca 51 19 ;1925
	dec a			; 3d ;1928
	jp z,@miss		; ca 67 19 ;1929
	ld hl,state.hit_flags		; 21 40 c0 ;192c
	res 0,(hl)		; cb 86 ;192f
	dec a			; 3d ;1931
	jr z,@fault_type_2		; 28 0d ;1932
	ld a,(ball.foul_triggered_flag)		; 3a 19 c5 ;1934
	or a			; b7 ;1937
	jr z,@fault_type_3_end		; 28 0d ;1938
	cp 002h		; fe 02 ;193a
	jr z,@fault_type_3_end		; 28 09 ;193c
	jp @miss		; c3 67 19 ;193e
@fault_type_2:
	ld a,(ball.foul_triggered_flag)		; 3a 19 c5 ;1941
	or a			; b7 ;1944
	jr nz,@hit_success		; 20 0a ;1945
@fault_type_3_end:
	ld a,004h		; 3e 04 ;1947
	ld (ball.foul),a		; 32 18 c5 ;1949
	ld hl,0c000h		; 21 00 c0 ;194c
	res 0,(hl)		; cb 86 ;194f
@hit_success:
	set 7,(ix + player_t.unknown_hit_flags)		; dd cb 1d fe ;1951
	xor a			; af ;1955
	ld (players.ball_hit_flag),a		; 32 03 c3 ;1956
	ld (ball.bounces_count),a		; 32 17 c5 ;1959
	ld (ball.foul_triggered_flag),a		; 32 19 c5 ;195c
	ld a,(ix + player_t.side_state)		; dd 7e 01 ;195f
	ld (state.last_hit_player_id),a		; 32 42 c0 ;1962
	scf			; 37 ;1965
	ret			; c9 ;1966
@miss:
	ld a,(ball.z_pos + 1)		; 3a 01 c5 ;1967
	cp 018h		; fe 18 ;196a
	ret nc			; d0 ;196c
	ld hl,l19cfh_bounding_boxes		; 21 cf 19 ;196d
	ld a,(ix + player_t.side_state)		; dd 7e 01 ;1970
	call 017ebh		; cd eb 17 ;1973
	ld (0c08eh),bc		; ed 43 8e c0 ;1976
	ld (0c090h),de		; ed 53 90 c0 ;197a
	ld a,(players.ball_logical_y + 1)		; 3a 0b c3 ;197e
	cp c			; b9 ;1981
	jr c,@no_body_collision		; 38 45 ;1982
	cp b			; b8 ;1984
	jr nc,@no_body_collision		; 30 42 ;1985
	ld a,(players.ball_logical_x + 1)		; 3a 0d c3 ;1987
	cp e			; bb ;198a
	jr c,@no_body_collision		; 38 3c ;198b
	cp d			; ba ;198d
	jr nc,@no_body_collision		; 30 39 ;198e
	ld a,(0c040h)		; 3a 40 c0 ;1990
	bit 0,a		; cb 47 ;1993
	jr z,@trigger_body_foul		; 28 0e ;1995
	ld c,001h		; 0e 01 ;1997
	ld a,(0c041h)		; 3a 41 c0 ;1999
	and c			; a1 ;199c
	ld e,a			; 5f ;199d
	ld a,(ix + player_t.side_state)		; dd 7e 01 ;199e
	and c			; a1 ;19a1
	cp e			; bb ;19a2
	jr z,@no_body_collision		; 28 24 ;19a3
@trigger_body_foul:
	ld a,003h		; 3e 03 ;19a5
	ld (ball.foul),a		; 32 18 c5 ;19a7
	ld c,090h		; 0e 90 ;19aa
	ld a,(ix + player_t.side_state)		; dd 7e 01 ;19ac
	and 001h		; e6 01 ;19af
	jr z,@_unknown_play_sound		; 28 02 ;19b1
	ld c,091h		; 0e 91 ;19b3
@_unknown_play_sound:
	ld a,c			; 79 ;19b5
	ld (psg_engine.track_request_id),a		; 32 00 de ;19b6
	ld hl,0c000h		; 21 00 c0 ;19b9
	res 0,(hl)		; cb 86 ;19bc
	ld hl,0		; 21 00 00 ;19be
	ld (ball.y_vel),hl		; 22 0c c5 ;19c1
	ld (ball.x_vel),hl		; 22 0e c5 ;19c4
	scf			; 37 ;19c7
	ret			; c9 ;19c8
@no_body_collision:
	and a			; a7 ;19c9
	ret			; c9 ;19ca

l19cbh_bounding_box:
	; y_min, y_max, x_min, x_max
	.DB $fc, $07, $fc, $07

l19cfh_bounding_boxes:
	.DB $f8, $08, $fc, $08
	.DB $fc, $04, $fe, $04
	.DB $f8, $08, $fc, $08 ; Unreferenced?

l19dbh_bounding_boxes:
	.DB $fc, $04, $fe, $04
	.DB $f9, $05, $0d, $0c
	.DB $f9, $05, $ea, $0c
	.DB $f9, $05, $0d, $0c
	.DB $f9, $05, $ea, $0c
	.DB $f0, $10, $0d, $0c
	.DB $f0, $10, $ec, $0c
	.DB $f0, $10, $05, $0c

	.DB $f0, $10, $05, $0c
	.DB $f9, $05, $f0, $08
	.DB $f9, $05, $f0, $08
	.DB $f9, $05, $03, $08
	.DB $f9, $05, $03, $08
	.DB $fc, $08, $f4, $08
	.DB $fc, $08, $04, $08
	.DB $fc, $0c, $f4, $08
	.DB $fc, $08

l1a1dh_bounding_boxe_offsets:
	.DB $f4, $08
	.DB $00, $e8
	.DB $00, $e8
	.DB $00, $e8
	.DB $00, $e8
	.DB $f0, $e8
	.DB $f0, $e8
	.DB $e0, $f0

	.DB $e0, $f8
	.DB $00, $e8
	.DB $00, $e8
	.DB $00, $e8
	.DB $00, $e8
	.DB $f0, $f0
	.DB $f0, $f0
	.DB $f0, $f0
	.DB $f4, $ec

l1a3fh_side_state_shot_type:
	.DB $00 $02 $01 $03
	.DB $02 $00 $03 $01
	.DB $01 $02 $00 $03
	.DB $02 $01 $03 $00

l1a4fh_side_state_shot_type:
	.DB $00 $03 $01 $02
	.DB $03 $00 $02 $01
	.DB $01 $03 $00 $02
	.DB $03 $01 $02 $00

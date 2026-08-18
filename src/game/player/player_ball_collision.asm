sub_player_ball_collision:
	ld a,(state.match_state_flags)		;1878
	rrca			;187b
	ret nc			;187c
	ld hl,game_ball_aabb_relative		;187d
	ld ix,entities.ball		;1880
	call sub_game_entity_aabb_intersection		;1884
	ld (state.aabb_1.y_min),bc		;1887
	ld (state.aabb_1.x_min),de		;188b
	ld a,(entities.ball.allowed_dirs)		;188f
	rrca			;1892
	jr c,@check_partners		;1893
	ld iy,entities.player.1.bottom		;1895
	ld ix,entities.player.2.bottom		;1899
	jr @check_direction		;189d
@check_partners:
	ld iy,entities.player.1.top		;189f
	ld ix,entities.player.2.top		;18a3
@check_direction:
	ld a,(state.match_state_flags)		;18a7
	rlca			;18aa
	jr nc,@towards_p1		;18ab
	call sub_racket_hit_trajectory		;18ad
	ret c			;18b0
@towards_p1:
	push iy		;18b1
	pop ix		;18b3
sub_racket_hit_trajectory:
	bit 7,(ix + entity_t.state_flags)		;18b5
	jp z,@miss		;18b9
	ld a,(state.match_flags)		;18bc
	rlca			;18bf
	jp nc,@miss		;18c0
	ld hl,game_racket_aabb_relative		;18c3
	ld a,(ix + entity_t.animation_frame)		;18c6
	call sub_game_entity_aabb_intersection_index		;18c9
	ld (state.aabb_2.y_min),bc		;18cc
	ld (state.aabb_2.x_min),de		;18d0
	call sub_aabb_intersection		;18d4
	ld a,e			;18d7
	or a			;18d8
	jp z,@miss		;18d9
	ld hl,game_racket_z_heights		;18dc
	ld a,(ix + entity_t.animation_frame)		;18df
	add a,a			;18e2
	ld e,a			;18e3
	ld d,000h		;18e4
	add hl,de			;18e6
	ld a,(ix + entity_t.y_pos + 1)		;18e7
	add a,(hl)			;18ea
	ld b,a			;18eb
	inc hl			;18ec
	add a,(hl)			;18ed
	ld c,a			;18ee
	ld a,(entities.ball_shadow.y_pos + 1)		;18ef
	cp c			;18f2
	jp c,@miss		;18f3
	inc hl			;18f6
	cp b			;18f7
	jp nc,@miss		;18f8
	ld hl,state.match_flags		;18fb
	bit 0,(hl)		;18fe
	jr z,@hit_success		;1900
	ld bc,game_racket_shot_result_table_1		;1902
	ld a,(state.match_state_flags)		;1905
	bit 7,a		;1908
	jr z,@check_serve_result		;190a
	ld a,(0c044h)		;190c
	or a			;190f
	jr z,@check_serve_result		;1910
	ld bc,game_racket_shot_result_table_2		;1912
@check_serve_result:
	ld a,(state.current_player)		;1915
	add a,a			;1918
	add a,a			;1919
	ld e,a			;191a
	ld d,000h		;191b
	ld h,d			;191d
	ld l,(ix + entity_t.id)		;191e
	add hl,de			;1921
	add hl,bc			;1922
	ld a,(hl)			;1923
	or a			;1924
	jp z,@hit_success		;1925
	dec a			;1928
	jp z,@miss		;1929
	ld hl,state.match_flags		;192c
	res 0,(hl)		;192f
	dec a			;1931
	jr z,@fault_type_2		;1932
	ld a,(ball.foul_triggered_flag)		;1934
	or a			;1937
	jr z,@fault_type_3_end		;1938
	cp 002h		;193a
	jr z,@fault_type_3_end		;193c
	jp @miss		;193e
@fault_type_2:
	ld a,(ball.foul_triggered_flag)		;1941
	or a			;1944
	jr nz,@hit_success		;1945
@fault_type_3_end:
	ld a,004h		;1947
	ld (ball.foul_type),a		;1949
	ld hl,state.match_state_flags		;194c
	res 0,(hl)		;194f
@hit_success:
	set 7,(ix + entity_t.racket_contact_flag)		;1951
	xor a			;1955
	ld (entities.ball.ball_hit_flag),a		;1956
	ld (ball.bounces_count),a		;1959
	ld (ball.foul_triggered_flag),a		;195c
	ld a,(ix + entity_t.id)		;195f
	ld (state.last_hitter),a		;1962
	scf			;1965
	ret			;1966
@miss:
	ld a,(ball.z_pos + 1)		;1967
	cp 018h		;196a
	ret nc			;196c
	ld hl,game_player_aabb_relative		;196d
	ld a,(ix + entity_t.id)		;1970
	call sub_game_entity_aabb_intersection_index		;1973
	ld (state.aabb_2.y_min),bc		;1976
	ld (state.aabb_2.x_min),de		;197a
	ld a,(entities.ball.y_pos + 1)		;197e
	cp c			;1981
	jr c,@no_body_collision		;1982
	cp b			;1984
	jr nc,@no_body_collision		;1985
	ld a,(entities.ball.x_pos + 1)		;1987
	cp e			;198a
	jr c,@no_body_collision		;198b
	cp d			;198d
	jr nc,@no_body_collision		;198e
	ld a,(state.match_flags)		;1990
	bit 0,a		;1993
	jr z,@trigger_body_foul		;1995
	ld c,001h		;1997
	ld a,(state.current_player)		;1999
	and c			;199c
	ld e,a			;199d
	ld a,(ix + entity_t.id)		;199e
	and c			;19a1
	cp e			;19a2
	jr z,@no_body_collision		;19a3
@trigger_body_foul:
	ld a,game_foul_t.body		;19a5
	ld (ball.foul_type),a		;19a7
	ld c,AUDIO_TRACK_BASE + audio_tracks_t.track_90		;19aa
	ld a,(ix + entity_t.id)		;19ac
	and 001h		;19af
	jr z,@_unknown_play_sound		;19b1
	ld c,AUDIO_TRACK_BASE + audio_tracks_t.track_91		;19b3
@_unknown_play_sound:
	ld a,c			;19b5
	ld (psg_engine.track_request_id),a		;19b6
	ld hl,state.match_state_flags		;19b9
	res 0,(hl)		;19bc
	ld hl,0		;19be
	ld (ball.y_vel),hl		;19c1
	ld (ball.x_vel),hl		;19c4
	scf			;19c7
	ret			;19c8
@no_body_collision:
	and a			;19c9
	ret			;19ca

game_ball_aabb_relative:
	; y_min, y_max, x_min, x_max
	.DB $fc, $07, $fc, $07

game_player_aabb_relative:
	.DB $f8, $08, $fc, $08
	.DB $fc, $04, $fe, $04
	.DB $f8, $08, $fc, $08 ; Unreferenced?

game_racket_aabb_relative:
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

game_racket_z_heights:
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

game_racket_shot_result_table_1:
	.DB $00 $02 $01 $03
	.DB $02 $00 $03 $01
	.DB $01 $02 $00 $03
	.DB $02 $01 $03 $00

game_racket_shot_result_table_2:
	.DB $00 $03 $01 $02
	.DB $03 $00 $02 $01
	.DB $01 $03 $00 $02
	.DB $03 $01 $02 $00

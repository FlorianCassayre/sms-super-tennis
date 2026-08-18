sub_game_ball_update_velocity_collision:
	xor a			;16af
	ld de,(ball.x_vel)		;16b0
	ld hl,(ball.x_pos)		;16b4
	adc hl,de		;16b7
	bit 7,d		;16b9
	jr nz,@check_x_moving_left		;16bb
	jr nc,@check_y_axis		;16bd
	jr @reverse_x_vel		;16bf
@check_x_moving_left:
	jr c,@check_y_axis		;16c1
@reverse_x_vel:
	xor a			;16c3
	ld hl,0		;16c4
	sbc hl,de		;16c7
	ld (ball.x_vel),hl		;16c9
@check_y_axis:
	xor a			;16cc
	ld de,(ball.y_vel)		;16cd
	ld hl,(ball.y_pos)		;16d1
	adc hl,de		;16d4
	bit 7,d		;16d6
	jr nz,@check_y_moving_backward		;16d8
	jr nc,@check_y_moving_forward		;16da
	jr @handle_wall_hit		;16dc
@check_y_moving_backward:
	jr nc,@handle_wall_sound		;16de
	ld a,(ball.y_pos + 1)		;16e0
	cp 080h		;16e3
	ret c			;16e5
	ld a,h			;16e6
	cp 081h		;16e7
	ret nc			;16e9
	jr @check_net_collision		;16ea
@check_y_moving_forward:
	ld a,(ball.y_pos + 1)		;16ec
	cp 081h		;16ef
	ret nc			;16f1
	ld a,h			;16f2
	cp 080h		;16f3
	ret c			;16f5
@check_net_collision:
	ld a,(ball.x_pos + 1)		;16f6
	cp 038h		;16f9
	ret c			;16fb
	cp 0c9h		;16fc
	ret nc			;16fe
	ld a,(ball.racket_contact_flag)		;16ff
	bit 7,a		;1702
	ret nz			;1704
	ld a,(ball.z_pos + 1)		;1705
	cp 010h		;1708
	ret nc			;170a
	ld hl,08000h		;170b
	ld (ball.y_pos),hl		;170e
	ld hl,ball.racket_contact_flag		;1711
	set 7,(hl)		;1714
	set 6,(hl)		;1716
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_ball_net		;1718
	ld (psg_engine.track_request_id),a		;171a
	ld a,(ball.foul_triggered_flag)		;171d
	or a			;1720
	jr nz,@calc_net_z_bounce		;1721
	ld a,game_foul_t.net		;1723
	ld (ball.foul_type),a		;1725
@calc_net_z_bounce:
	ld hl,(ball.z_vel)		;1728
	push hl			;172b
	call sub_game_ball_update_velocity_bounce		;172c
	pop de			;172f
	bit 7,d		;1730
	jr z,@store_z_vel		;1732
	ld hl,0		;1734
	xor a			;1737
	sbc hl,de		;1738
	ex de,hl			;173a
@store_z_vel:
	ld (ball.z_vel),de		;173b
	jr @reverse_y_and_end_play		;173f
@handle_wall_sound:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_wall		;1741
	ld (psg_engine.track_request_id),a		;1743
@handle_wall_hit:
	ld a,(ball.foul_triggered_flag)		;1746
	or a			;1749
	jr nz,@reverse_y_and_end_play		;174a
	ld a,002h		;174c
	ld (ball.foul_type),a		;174e
	ld a,001h		;1751
	ld (ball.foul_triggered_flag),a		;1753
@reverse_y_and_end_play:
	ld hl,state.match_state_flags		;1756
	res 0,(hl)		;1759
	xor a			;175b
	ld hl,0		;175c
	ld de,(ball.y_vel)		;175f
	sbc hl,de		;1763
	ld (ball.y_vel),hl		;1765
	ret			;1768

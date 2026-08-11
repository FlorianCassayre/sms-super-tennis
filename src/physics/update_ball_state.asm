sub_update_ball_state:
	xor a			; af ;16af
	ld de,(ball.x_vel)		; ed 5b 0e c5 ;16b0
	ld hl,(ball.x_pos)		; 2a 0a c5 ;16b4
	adc hl,de		; ed 5a ;16b7
	bit 7,d		; cb 7a ;16b9
	jr nz,@check_x_moving_left		; 20 04 ;16bb
	jr nc,@check_y_axis		; 30 0d ;16bd
	jr @reverse_x_vel		; 18 02 ;16bf
@check_x_moving_left:
	jr c,@check_y_axis		; 38 09 ;16c1
@reverse_x_vel:
	xor a			; af ;16c3
	ld hl,0		; 21 00 00 ;16c4
	sbc hl,de		; ed 52 ;16c7
	ld (ball.x_vel),hl		; 22 0e c5 ;16c9
@check_y_axis:
	xor a			; af ;16cc
	ld de,(ball.y_vel)		; ed 5b 0c c5 ;16cd
	ld hl,(ball.y_pos)		; 2a 08 c5 ;16d1
	adc hl,de		; ed 5a ;16d4
	bit 7,d		; cb 7a ;16d6
	jr nz,@check_y_moving_backward		; 20 04 ;16d8
	jr nc,@check_y_moving_forward		; 30 10 ;16da
	jr @handle_wall_hit		; 18 68 ;16dc
@check_y_moving_backward:
	jr nc,@handle_wall_sound		; 30 61 ;16de
	ld a,(ball.y_pos + 1)		; 3a 09 c5 ;16e0
	cp 080h		; fe 80 ;16e3
	ret c			; d8 ;16e5
	ld a,h			; 7c ;16e6
	cp 081h		; fe 81 ;16e7
	ret nc			; d0 ;16e9
	jr @check_net_collision		; 18 0a ;16ea
@check_y_moving_forward:
	ld a,(ball.y_pos + 1)		; 3a 09 c5 ;16ec
	cp 081h		; fe 81 ;16ef
	ret nc			; d0 ;16f1
	ld a,h			; 7c ;16f2
	cp 080h		; fe 80 ;16f3
	ret c			; d8 ;16f5
@check_net_collision:
	ld a,(ball.x_pos + 1)		; 3a 0b c5 ;16f6
	cp 038h		; fe 38 ;16f9
	ret c			; d8 ;16fb
	cp 0c9h		; fe c9 ;16fc
	ret nc			; d0 ;16fe
	ld a,(ball.racket_contact_flag)		; 3a 16 c5 ;16ff
	bit 7,a		; cb 7f ;1702
	ret nz			; c0 ;1704
	ld a,(ball.z_pos + 1)		; 3a 01 c5 ;1705
	cp 010h		; fe 10 ;1708
	ret nc			; d0 ;170a
	ld hl,08000h		; 21 00 80 ;170b
	ld (ball.y_pos),hl		; 22 08 c5 ;170e
	ld hl,ball.racket_contact_flag		; 21 16 c5 ;1711
	set 7,(hl)		; cb fe ;1714
	set 6,(hl)		; cb f6 ;1716
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_ball_net		; 3e 8e ;1718
	ld (psg_engine.track_request_id),a		; 32 00 de ;171a
	ld a,(ball.foul_triggered_flag)		; 3a 19 c5 ;171d
	or a			; b7 ;1720
	jr nz,@calc_net_z_bounce		; 20 05 ;1721
	ld a,001h		; 3e 01 ;1723
	ld (ball.foul),a		; 32 18 c5 ;1725
@calc_net_z_bounce:
	ld hl,(ball.z_vel)		; 2a 06 c5 ;1728
	push hl			; e5 ;172b
	call sub_ball_bounce		; cd 9c 15 ;172c
	pop de			; d1 ;172f
	bit 7,d		; cb 7a ;1730
	jr z,@store_z_vel		; 28 07 ;1732
	ld hl,0		; 21 00 00 ;1734
	xor a			; af ;1737
	sbc hl,de		; ed 52 ;1738
	ex de,hl			; eb ;173a
@store_z_vel:
	ld (ball.z_vel),de		; ed 53 06 c5 ;173b
	jr @reverse_y_and_end_play		; 18 15 ;173f
@handle_wall_sound:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_wall		; 3e 89 ;1741
	ld (psg_engine.track_request_id),a		; 32 00 de ;1743
@handle_wall_hit:
	ld a,(ball.foul_triggered_flag)		; 3a 19 c5 ;1746
	or a			; b7 ;1749
	jr nz,@reverse_y_and_end_play		; 20 0a ;174a
	ld a,002h		; 3e 02 ;174c
	ld (ball.foul),a		; 32 18 c5 ;174e
	ld a,001h		; 3e 01 ;1751
	ld (ball.foul_triggered_flag),a		; 32 19 c5 ;1753
@reverse_y_and_end_play:
	ld hl,0c000h		; 21 00 c0 ;1756
	res 0,(hl)		; cb 86 ;1759
	xor a			; af ;175b
	ld hl,0		; 21 00 00 ;175c
	ld de,(ball.y_vel)		; ed 5b 0c c5 ;175f
	sbc hl,de		; ed 52 ;1763
	ld (ball.y_vel),hl		; 22 0c c5 ;1765
	ret			; c9 ;1768

sub_update_score_points:
	call @sub_315eh
	ld a,(score.tie_break)
	cp 000h
	jp nz,@special_score_state
	ld a,(score.point.bottom)
	cp 004h
	jp c,@check_top_score
	jp nz,@bottom_wins
	ld hl,score.point.top
	sub (hl)
	jp z,@deuce
	ld a,(score.point.top)
	cp 003h
	jp c,@bottom_wins
@check_top_score:
	ld a,(score.point.top)
	cp 004h
	jp c,@l3037h
	jp nz,@bottom_wins_a
	ld a,(score.point.bottom)
	cp 003h
	jp c,@bottom_wins_a
	jp @l3037h
@bottom_wins_a:
	ld a,010h
	jp @set_winner
@bottom_wins:
	ld a,001h
	jp @set_winner
@deuce:
	ld a,003h
	ld (score.point.bottom),a
	ld (score.point.top),a
@l3037h:
	ld b,002h
	ld de,03938h
	ld hl,score.point.top
@draw_bottom_score_digit:
	push bc
	ld a,(hl)
	cp 000h
	jr nz,@bottom_score_digit_15
	ld hl,data.umpire_settings.point_0
@bottom_score_digit_15:
	cp 001h
	jr nz,@bottom_score_digit_30
	ld hl,data.umpire_settings.point_15
@bottom_score_digit_30:
	cp 002h
	jr nz,@bottom_score_digit_40
	ld hl,data.umpire_settings.point_30
@bottom_score_digit_40:
	cp 003h
	jr nz,@bottom_score_digit_a
	ld hl,data.umpire_settings.point_40
@bottom_score_digit_a:
	cp 004h
	jr nz,@draw_top_score_digit
	ld hl,data.umpire_settings.point_a
	push de
	ex de,hl
	ld bc,4
	di
	call sub_cp_ram_vram
	ei
	pop de
	ld hl,039f8h
	xor a
	sbc hl,de
	ld de,03938h
	add hl,de
	ex de,hl
	ld hl,data.umpire_settings.point_none
	pop bc
	ld b,001h
	push bc
@draw_top_score_digit:
	ex de,hl
	ld bc,4
	di
	call sub_cp_ram_vram
	ei
	pop bc
	ld hl,score.point
	ld de,039f8h
	djnz @draw_bottom_score_digit
	ld a,(hl)
	inc hl
	ld b,(hl)
	cp 003h
	jp nz,@finish_score_update
	sub b
	jp nz,@finish_score_update
	ld a,(score.point_fault_flag)
	cp 000h
	jr nz,@finish_score_update
	ld a,001h
	call sub_wait_a_frames
	call @sub_313ch
	ld a,050h
	call sub_wait_a_frames
	call @sub_315eh
@finish_score_update:
	xor a
	ld (score.announcement_step),a
	ld (score.delay_timer),a
	call sub_update_announcement_timer
	xor a
	ld (score.announcement_type),a
	ld (score.set_update_state),a
	ld a,001h
	ld (score.delay_timer),a
	ld a,(state.sound_wait_flag)
	or 080h
	ld (state.sound_wait_flag),a
	ret
@special_score_state:
	ld hl,score.point.bottom
	ld a,(hl)
	cp 007h
	jp c,@check_top_special_score
	inc hl
	sub (hl)
	jp c,@check_top_special_score
	cp 002h
	jp c,@check_top_special_score
	ld a,001h
	jp @set_winner
@check_top_special_score:
	ld hl,score.point.top
	ld a,(hl)
	cp 007h
	jp c,@draw_special_score
	dec hl
	sub (hl)
	jp c,@draw_special_score
	cp 002h
	jp c,@draw_special_score
	ld a,010h
	jp @set_winner
@draw_special_score:
	ld a,(score.point.bottom)
	call sub_div10
	ld a,d
	cp 000h
	jr z,@draw_bottom_tens_digit
	ld hl,039f8h
	ld b,002h
	jr @draw_bottom_score
@draw_bottom_tens_digit:
	ld hl,039fah
	ld b,001h
@draw_bottom_score:
	call sub_graphics_tile_draw_sequential_row
	ld a,(score.point.top)
	call sub_div10
	ld a,d
	cp 000h
	jr z,@draw_top_tens_digit
	ld hl,03938h
	ld b,002h
	jr @draw_top_score
@draw_top_tens_digit:
	ld hl,0393ah
	ld b,001h
@draw_top_score:
	call sub_graphics_tile_draw_sequential_row
	jp @finish_score_update
@sub_313ch:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_9a
	ld (psg_engine.track_request_id),a
	ld hl,03904h
	ld (score.vram_dest),hl
	ld hl,data.umpire_settings.umpire_deuce
	ld (score.vram_src),hl
	ld h,004h
	ld l,007h
	ld (score.box_dimensions),hl
	ld a,001h
	ld (score.gui_update_flag),a
	xor a
	ld (0c4afh),a
	ret
@sub_315eh:
	ld hl,038c4h
	ld (score.vram_dest),hl
	ld hl,data.umpire_settings.umpire_none
	ld (score.vram_src),hl
	ld h,005h
	ld l,007h
	ld (score.box_dimensions),hl
	ld a,001h
	ld (score.gui_update_flag),a
	ret
@set_winner:
	ld (score.winner_player),a
	ld a,001h
	ld (score.game_lost),a
	jp @finish_score_update

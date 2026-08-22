sub_update_set_scores:
	ld a,(score.delay_timer)
	cp 000h
	jr z,l31d1h
	dec a
	ld (score.delay_timer),a
l31c3h:
	ld a,(state.sound_wait_flag)
	or 080h
	ld (state.sound_wait_flag),a
	call sub_audio_event_wait
	jp sub_update_set_scores
l31d1h:
	ld a,(score.set_update_state)
	cp 001h
	jr c,l31e5h
	jp z,l3205h
	cp 003h
	jp c,l3303h
	jp z,l3353h
	jr sub_update_set_scores
l31e5h:
	ld hl,VDP_NAME_TABLE_ADDRESS(10, 13)
	ld (score.vram_dest),hl
	ld hl,data.umpire_settings
	ld (score.vram_src),hl
	ld h,7
	ld l,00bh
	ld (score.box_dimensions),hl
	ld a,001h
	ld (score.gui_update_flag),a
	ld a,001h
	ld (score.set_update_state),a
	jp l31c3h
l3205h:
	ld a,(score.winner_player)
	ld b,a
	xor a
	ld a,(score.set_current_index)
	rla
	ld hl,score.set
	ld e,a
	ld d,000h
	add hl,de
	ld a,b
	cp 010h
	jp nz,l3249h
	inc (hl)
	ld de,0
	ld a,(hl)
	cp 006h
	jr c,l322fh
	cp 7
	jr nc,l3236h
	inc hl
	ld a,(hl)
	dec hl
	cp 5
	jr c,l3236h
l322fh:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_game_lost
	ld (psg_engine.track_request_id),a
	jr l3276h
l3236h:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_set_lost
	ld (psg_engine.track_request_id),a
	ld a,(score.sets_won_top)
	inc a
	ld (score.sets_won_top),a
	ld a,001h
	ld (score.advance_set_flag),a
	jr l3276h
l3249h:
	inc hl
	inc (hl)
	ld de,0007fh+1
	ld a,(hl)
	cp 006h
	jr c,l325eh
	cp 007h
	jr nc,l3265h
	dec hl
	ld a,(hl)
	inc hl
	cp 5
	jr c,l3265h
l325eh:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_game_won
	ld (psg_engine.track_request_id),a
	jr l3276h
l3265h:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_set_won
	ld (psg_engine.track_request_id),a
	ld a,(score.sets_won_bottom)
	inc a
	ld (score.sets_won_bottom),a
	ld a,001h
	ld (score.advance_set_flag),a
l3276h:
	ld (score.vram_dest),hl
	ld (score.vram_src),de
	ld hl,score.set
	push hl
	ld e,(hl)
	ld d,000h
	ld b,001h
	ld hl,VDP_NAME_TABLE_ADDRESS(15, 16)
	ld (score.blinking_set_vram_addr),hl
	call sub_graphics_tile_draw_sequential_row
	pop hl
	inc hl
	push hl
	ld e,(hl)
	ld d,000h
	ld b,001h
	ld hl,VDP_NAME_TABLE_ADDRESS(15, 18)
	call sub_graphics_tile_draw_sequential_row
	pop hl
	inc hl
	ld e,(hl)
	inc hl
	push hl
	ld a,(score.set_current_index)
	cp 001h
	jp c,l32ebh
	ld d,000h
	ld b,001h
	ld hl,VDP_NAME_TABLE_ADDRESS(17, 16)
	ld (score.blinking_set_vram_addr),hl
	call sub_graphics_tile_draw_sequential_row
	pop hl
	push hl
	ld e,(hl)
	ld d,000h
	ld b,001h
	ld hl,VDP_NAME_TABLE_ADDRESS(17, 18)
	call sub_graphics_tile_draw_sequential_row
	pop hl
	inc hl
	ld e,(hl)
	inc hl
	push hl
	ld a,(score.set_current_index)
	cp 002h
	jp c,l32ebh
	ld d,000h
	ld b,001h
	ld hl,VDP_NAME_TABLE_ADDRESS(19, 16)
	ld (score.blinking_set_vram_addr),hl
	call sub_graphics_tile_draw_sequential_row
	pop hl
	push hl
	ld e,(hl)
	ld d,000h
	ld b,001h
	ld hl,VDP_NAME_TABLE_ADDRESS(19, 18)
	call sub_graphics_tile_draw_sequential_row
l32ebh:
	pop hl
	ld hl,(score.blinking_set_vram_addr)
	ld de,(score.vram_src)
	add hl,de
	ld (score.blinking_set_vram_addr),hl
	xor a
	ld (score.blinking_set_frame_counter),a
	ld a,002h
	ld (score.set_update_state),a
	jp l31c3h
l3303h:
	ld a,(score.blinking_set_frame_counter)
	and 001h
	cp 000h
	jr nz,l3311h
	ld de,1
	jr l3318h_write_vdp_word
l3311h:
	ld hl,(score.vram_dest)
	ld d,(hl)
	inc d			; Because ASCII_ZERO & $ff == $01
	ld e,ASCII_ZERO >> 8
l3318h_write_vdp_word:
	ld hl,(score.blinking_set_vram_addr)
	ld a,l
	di
	out (O_VDP_CTRL),a
	ld a,h
	or 040h
	out (O_VDP_CTRL),a
	ld a,d
	ex (sp),hl
	ex (sp),hl
	out (IO_VDP_DATA),a
	ld a,e
	ex (sp),hl
	ex (sp),hl
	out (IO_VDP_DATA),a
	ei
	ld a,(score.blinking_set_frame_counter)
	inc a
	ld (score.blinking_set_frame_counter),a
	cp 00ah
	jr nc,l3342h
	ld a,008h
	ld (score.delay_timer),a
	jp l31c3h
l3342h:
	xor a
	ld (score.blinking_set_frame_counter),a
	ld a,003h
	ld (score.set_update_state),a
	ld a,080h
	ld (score.delay_timer),a
	jp l31c3h
l3353h:
	ld hl,VDP_NAME_TABLE_ADDRESS(10, 13)
	ld (score.vram_dest),hl
	ld hl,data.umpire_settings + 154
	ld (score.vram_src),hl
	ld h,007h
	ld l,00bh
	ld (score.box_dimensions),hl
	ld a,001h
	ld (score.gui_update_flag),a
	ld hl,score.set
	xor a
	ld a,(score.set_current_index)
	rla
	ld d,000h
	ld e,a
	add hl,de
	ld a,(hl)
	cp 006h
	jr nz,l3382h
	inc hl
	ld a,(hl)
	cp 006h
	jr z,l33a4h
l3382h:
	ld a,(score.advance_set_flag)
	cp 000h
	jr z,l33b1h
	xor a
	ld (score.advance_set_flag),a
	ld hl,score.set_current_index
	inc (hl)
	ld a,(score.sets_won_top)
	cp 002h
	jp nc,l33ach
	ld a,(score.sets_won_bottom)
	cp 002h
	jp nc,l33ach
	jp l33b1h
l33a4h:
	ld a,001h
	ld (score.tie_break),a
	jp l33bah
l33ach:
	ld a,004h
	ld (score.game_lost),a
l33b1h:
	ld hl,score.game_lost
	set 1,(hl)
	xor a
	ld (score.tie_break),a
l33bah:
	xor a
	ld (score.point.bottom),a
	ld (score.point.top),a
	jp sub_update_score_points@l3037h

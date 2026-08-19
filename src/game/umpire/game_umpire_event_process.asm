sub_game_umpire_event_process:
	ld hl,score.umpire_event
	ld a,(hl)
	ld b,a
	and 080h
	rlca
	ld c,b
	ld b,a
	ld a,c
	and 003h
	cp 000h
	jp z,sub_game_umpire_event_process_in
	cp 001h
	jp z,sub_game_umpire_event_process_out
	cp 002h
	jp z,sub_game_umpire_event_process_fault
	cp 003h
	jp z,sub_game_umpire_event_process_net
	jr sub_game_umpire_event_process_default
sub_game_umpire_trigger_announcement:
	ld a,1
	ld (score.announcement_type),a
	xor a
	ld (score.delay_timer),a
	ld (score.announcement_step),a
sub_game_umpire_event_process_default:
	ret
sub_game_umpire_event_process_in:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_in
	ld (psg_engine.track_request_id),a
	xor a
	ld (score.point_fault_flag),a
	ld c,b
	ld b,000h
	ld hl,score.point
	add hl,bc
	inc (hl)
	ld hl,03906h
	ld (score.vram_dest),hl
	ld hl,data.umpire_settings.umpire_in
	ld (score.vram_src),hl
	ld h,004h
	ld l,004h
	ld (score.box_dimensions),hl
	ld a,001h
	ld (score.gui_update_flag),a
	jp sub_game_umpire_trigger_announcement
sub_game_umpire_event_process_out:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_out
	ld (psg_engine.track_request_id),a
	xor a
	ld (score.point_fault_flag),a
	ld c,b
	ld b,0
	ld hl,score.point.top
	xor a
	sbc hl,bc
	inc (hl)
	ld hl,03906h
	ld (score.vram_dest),hl
	ld hl,data.umpire_settings.umpire_out
	ld (score.vram_src),hl
	ld h,004h
	ld l,005h
	ld (score.box_dimensions),hl
	ld a,001h
	ld (score.gui_update_flag),a
	jp sub_game_umpire_trigger_announcement
sub_game_umpire_event_process_net:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_net
	ld (psg_engine.track_request_id),a
	xor a
	ld (score.point_fault_flag),a
	ld c,b
	ld b,000h
	ld hl,score.point.top
	xor a
	sbc hl,bc
	inc (hl)
	ld hl,03906h
	ld (score.vram_dest),hl
	ld hl,data.umpire_settings.umpire_net
	ld (score.vram_src),hl
	ld h,004h
	ld l,005h
	ld (score.box_dimensions),hl
	ld a,001h
	ld (score.gui_update_flag),a
	jp sub_game_umpire_trigger_announcement
sub_game_umpire_event_process_fault:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_fault
	ld (psg_engine.track_request_id),a
	ld hl,score.point_fault_flag
	inc (hl)
	ld a,(hl)
	cp 002h
	jp nc,sub_game_umpire_event_process_double_fault
	ld hl,03904h
	ld (score.vram_dest),hl
	ld hl,data.umpire_settings.umpire_fault
	ld (score.vram_src),hl
	ld h,004h
	ld l,007h
	ld (score.box_dimensions),hl
	ld a,001h
	ld (score.gui_update_flag),a
	jp sub_game_umpire_event_process_default
sub_game_umpire_event_process_double_fault:
	xor a
	ld (hl),a
	ld c,b
	ld b,000h
	ld hl,score.point.top
	xor a
	sbc hl,bc
	inc (hl)
	ld hl,038c4h
	ld (score.vram_dest),hl
	ld hl,data.umpire_settings.umpire_double_fault
	ld (score.vram_src),hl
	ld h,005h
	ld l,007h
	ld (score.box_dimensions),hl
	ld a,001h
	ld (score.gui_update_flag),a
	jp sub_game_umpire_event_process_default

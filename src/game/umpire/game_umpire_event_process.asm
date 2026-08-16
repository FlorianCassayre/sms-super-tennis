sub_game_umpire_event_process:
	ld hl,score.umpire_event		;2ee1
	ld a,(hl)			;2ee4
	ld b,a			;2ee5
	and 080h		;2ee6
	rlca			;2ee8
	ld c,b			;2ee9
	ld b,a			;2eea
	ld a,c			;2eeb
	and 003h		;2eec
	cp 000h		;2eee
	jp z,sub_game_umpire_event_process_in		;2ef0
	cp 001h		;2ef3
	jp z,sub_game_umpire_event_process_out		;2ef5
	cp 002h		;2ef8
	jp z,sub_game_umpire_event_process_fault		;2efa
	cp 003h		;2efd
	jp z,sub_game_umpire_event_process_net		;2eff
	jr sub_game_umpire_event_process_default		;2f02
l2f04h:
	ld a,1		;2f04
	ld (score.announcement_type),a		;2f06
	xor a			;2f09
	ld (0c49dh),a		;2f0a
	ld (score.announcement_step),a		;2f0d
sub_game_umpire_event_process_default:
	ret			;2f10
sub_game_umpire_event_process_in:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_in		;2f11
	ld (psg_engine.track_request_id),a		;2f13
	xor a			;2f16
	ld (score.point_fault_flag),a		;2f17
	ld c,b			;2f1a
	ld b,000h		;2f1b
	ld hl,score.point		;2f1d
	add hl,bc			;2f20
	inc (hl)			;2f21
	ld hl,03906h		;2f22
	ld (score.vram_dest),hl		;2f25
	ld hl,data.umpire_settings.umpire_in		;2f28
	ld (score.vram_src),hl		;2f2b
	ld h,004h		;2f2e
	ld l,004h		;2f30
	ld (score.box_dimensions),hl		;2f32
	ld a,001h		;2f35
	ld (score.gui_update_flag),a		;2f37
	jp l2f04h		;2f3a
sub_game_umpire_event_process_out:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_out		;2f3d
	ld (psg_engine.track_request_id),a		;2f3f
	xor a			;2f42
	ld (score.point_fault_flag),a		;2f43
	ld c,b			;2f46
	ld b,0		;2f47
	ld hl,score.point.top		;2f49
	xor a			;2f4c
	sbc hl,bc		;2f4d
	inc (hl)			;2f4f
	ld hl,03906h		;2f50
	ld (score.vram_dest),hl		;2f53
	ld hl,data.umpire_settings.umpire_out		;2f56
	ld (score.vram_src),hl		;2f59
	ld h,004h		;2f5c
	ld l,005h		;2f5e
	ld (score.box_dimensions),hl		;2f60
	ld a,001h		;2f63
	ld (score.gui_update_flag),a		;2f65
	jp l2f04h		;2f68
sub_game_umpire_event_process_net:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_99		;2f6b
	ld (psg_engine.track_request_id),a		;2f6d
	xor a			;2f70
	ld (score.point_fault_flag),a		;2f71
	ld c,b			;2f74
	ld b,000h		;2f75
	ld hl,score.point.top		;2f77
	xor a			;2f7a
	sbc hl,bc		;2f7b
	inc (hl)			;2f7d
	ld hl,03906h		;2f7e
	ld (score.vram_dest),hl		;2f81
	ld hl,data.umpire_settings.umpire_net		;2f84
	ld (score.vram_src),hl		;2f87
	ld h,004h		;2f8a
	ld l,005h		;2f8c
	ld (score.box_dimensions),hl		;2f8e
	ld a,001h		;2f91
	ld (score.gui_update_flag),a		;2f93
	jp l2f04h		;2f96
sub_game_umpire_event_process_fault:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_fault		;2f99
	ld (psg_engine.track_request_id),a		;2f9b
	ld hl,score.point_fault_flag		;2f9e
	inc (hl)			;2fa1
	ld a,(hl)			;2fa2
	cp 002h		;2fa3
	jp nc,sub_game_umpire_event_process_double_fault		;2fa5
	ld hl,03904h		;2fa8
	ld (score.vram_dest),hl		;2fab
	ld hl,data.umpire_settings.umpire_fault		;2fae
	ld (score.vram_src),hl		;2fb1
	ld h,004h		;2fb4
	ld l,007h		;2fb6
	ld (score.box_dimensions),hl		;2fb8
	ld a,001h		;2fbb
	ld (score.gui_update_flag),a		;2fbd
	jp sub_game_umpire_event_process_default		;2fc0
sub_game_umpire_event_process_double_fault:
	xor a			;2fc3
	ld (hl),a			;2fc4
	ld c,b			;2fc5
	ld b,000h		;2fc6
	ld hl,score.point.top		;2fc8
	xor a			;2fcb
	sbc hl,bc		;2fcc
	inc (hl)			;2fce
	ld hl,038c4h		;2fcf
	ld (score.vram_dest),hl		;2fd2
	ld hl,data.umpire_settings.umpire_double_fault		;2fd5
	ld (score.vram_src),hl		;2fd8
	ld h,005h		;2fdb
	ld l,007h		;2fdd
	ld (score.box_dimensions),hl		;2fdf
	ld a,001h		;2fe2
	ld (score.gui_update_flag),a		;2fe4
	jp sub_game_umpire_event_process_default		;2fe7

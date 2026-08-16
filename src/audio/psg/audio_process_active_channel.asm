sub_audio_process_active_channel:
	ld e,(ix + audio_psg_channel_t.current_tick)		;7add
	ld d,(ix + audio_psg_channel_t.current_tick + 1)		;7ae0
	inc de			;7ae3
	ld (ix + audio_psg_channel_t.current_tick),e		;7ae4
	ld (ix + audio_psg_channel_t.current_tick + 1),d		;7ae7
	ld l,(ix + audio_psg_channel_t.target_duration)		;7aea
	ld h,(ix + audio_psg_channel_t.target_duration + 1)		;7aed
	or a			;7af0
	sbc hl,de		;7af1
	call z,sub_7c43h		;7af3
	ld e,(ix + audio_psg_channel_t.base_frequency)		;7af6
	ld d,(ix + audio_psg_channel_t.base_frequency + 1)		;7af9
	ld a,e			;7afc
	or d			;7afd
	jr nz,l7b07h		;7afe
	ld (ix + audio_psg_channel_t.current_volume),00fh		;7b00
	jp sub_audio_volume_process@l7bb5h		;7b04
l7b07h:
	bit 5,(ix + audio_psg_channel_t.status_flags)		;7b07
	jr nz,sub_audio_calculate_pitch_slide		;7b0b
	ld a,(ix + audio_psg_channel_t.effect_timer)		;7b0d
	or a			;7b10
	jr nz,audio_envelope_pitch_process		;7b11
	ld (ix + audio_psg_channel_t.final_frequency),e		;7b13
	ld (ix + audio_psg_channel_t.final_frequency + 1),d		;7b16
	jp sub_audio_volume_process		;7b19

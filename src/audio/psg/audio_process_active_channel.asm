sub_audio_process_active_channel:
	ld e,(ix + audio_psg_channel_t.current_tick)
	ld d,(ix + audio_psg_channel_t.current_tick + 1)
	inc de
	ld (ix + audio_psg_channel_t.current_tick),e
	ld (ix + audio_psg_channel_t.current_tick + 1),d
	ld l,(ix + audio_psg_channel_t.target_duration)
	ld h,(ix + audio_psg_channel_t.target_duration + 1)
	or a
	sbc hl,de
	call z,sub_7c43h
	ld e,(ix + audio_psg_channel_t.base_frequency)
	ld d,(ix + audio_psg_channel_t.base_frequency + 1)
	ld a,e
	or d
	jr nz,l7b07h
	ld (ix + audio_psg_channel_t.current_volume),00fh
	jp sub_audio_volume_process@l7bb5h
l7b07h:
	bit 5,(ix + audio_psg_channel_t.status_flags)
	jr nz,sub_audio_calculate_pitch_slide
	ld a,(ix + audio_psg_channel_t.effect_timer)
	or a
	jr nz,audio_envelope_pitch_process
	ld (ix + audio_psg_channel_t.final_frequency),e
	ld (ix + audio_psg_channel_t.final_frequency + 1),d
	jp sub_audio_volume_process

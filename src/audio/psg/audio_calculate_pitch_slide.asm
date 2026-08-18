sub_audio_calculate_pitch_slide:
	push de
	ld l,(ix + audio_psg_channel_t.slide_target_frequency_low)
	ld h,(ix + audio_psg_channel_t.slide_target_frequency_high)
	or a
	sbc hl,de
	push af
	ld a,l
	jp p,l7b43h
	neg
l7b43h:
	ld h,a
	ld e,(ix + audio_psg_channel_t.current_tick)
	call sub_mul_h_e
	ld e,(ix + audio_psg_channel_t.target_duration)
	call sub_div_hl_e
	ld e,a
	ld d,000h
	pop af
	ld a,e
	jp p,l7b5eh
	neg
	jr z,l7b5eh
	dec d
	ld e,a
l7b5eh:
	pop hl
	add hl,de
	ex de,hl
	ld (ix + audio_psg_channel_t.final_frequency),e
	ld (ix + audio_psg_channel_t.final_frequency + 1),d
	ld a,(ix + audio_psg_channel_t.effect_timer)
	or a
	jp nz,audio_envelope_pitch_process

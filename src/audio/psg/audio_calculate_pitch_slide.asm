sub_audio_calculate_pitch_slide:
	push de			;7b32
	ld l,(ix + audio_psg_channel_t.slide_target_frequency_low)		;7b33
	ld h,(ix + audio_psg_channel_t.slide_target_frequency_high)		;7b36
	or a			;7b39
	sbc hl,de		;7b3a
	push af			;7b3c
	ld a,l			;7b3d
	jp p,l7b43h		;7b3e
	neg		;7b41
l7b43h:
	ld h,a			;7b43
	ld e,(ix + audio_psg_channel_t.current_tick)		;7b44
	call sub_mul_h_e		;7b47
	ld e,(ix + audio_psg_channel_t.target_duration)		;7b4a
	call sub_div_hl_e		;7b4d
	ld e,a			;7b50
	ld d,000h		;7b51
	pop af			;7b53
	ld a,e			;7b54
	jp p,l7b5eh		;7b55
	neg		;7b58
	jr z,l7b5eh		;7b5a
	dec d			;7b5c
	ld e,a			;7b5d
l7b5eh:
	pop hl			;7b5e
	add hl,de			;7b5f
	ex de,hl			;7b60
	ld (ix + audio_psg_channel_t.final_frequency),e		;7b61
	ld (ix + audio_psg_channel_t.final_frequency + 1),d		;7b64
	ld a,(ix + audio_psg_channel_t.effect_timer)		;7b67
	or a			;7b6a
	jp nz,audio_envelope_pitch_process		;7b6b

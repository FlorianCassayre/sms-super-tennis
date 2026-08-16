audio_envelope_pitch_process:
	ld hl,audio_envelope_pitch_data		;7b27
	call sub_audio_pointer_get_by_id		;7b2a
	call sub_audio_envelope_pitch_apply		;7b2d
	jr sub_audio_volume_process		;7b30

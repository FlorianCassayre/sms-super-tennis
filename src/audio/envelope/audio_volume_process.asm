sub_audio_volume_process:
	ld a,(ix + audio_psg_channel_t.envelope_id_pointer)		;7b6e
	or a			;7b71
	jr nz,@audio_envelope_volume_process		;7b72
	ld a,(ix + audio_psg_channel_t.base_volume)		;7b74
	cpl			;7b77
	and 00fh		;7b78
	ld (ix + audio_psg_channel_t.current_volume),a		;7b7a
	jr @audio_psg_frequency_update		;7b7d
@audio_envelope_volume_process:
	res 7,a		;7b7f
	ld hl,audio_envelope_volume_data		;7b81
	call sub_audio_pointer_get_by_id		;7b84
	call sub_audio_envelope_volume_apply		;7b87
@audio_psg_frequency_update:
	bit 6,(ix + audio_psg_channel_t.status_flags)		;7b8a
	jr nz,@l7bb5h		;7b8e
	ld a,(ix + audio_psg_channel_t.psg_channel_map)		;7b90
	and 00fh		;7b93
	ld c,a			;7b95
	ld b,000h		;7b96
	ld hl,l7bc8h_audio		;7b98
	add hl,bc			;7b9b
	ld c,(hl)			;7b9c
	ld a,(ix + audio_psg_channel_t.final_frequency)		;7b9d
	and 00fh		;7ba0
	or c			;7ba2
	call sub_audio_psg_write		;7ba3
	ld a,(ix + audio_psg_channel_t.final_frequency)		;7ba6
	and 0f0h		;7ba9
	or (ix + audio_psg_channel_t.final_frequency + 1)		;7bab
	rrca			;7bae
	rrca			;7baf
	rrca			;7bb0
	rrca			;7bb1
	call sub_audio_psg_write		;7bb2
@l7bb5h:
	ld a,(ix + audio_psg_channel_t.psg_channel_map)		;7bb5
	and 00fh		;7bb8
	ld c,a			;7bba
	ld b,000h		;7bbb
	ld hl,l7bcch_audio		;7bbd
	add hl,bc			;7bc0
	ld a,(hl)			;7bc1
	or (ix + audio_psg_channel_t.current_volume)		;7bc2
	jp sub_audio_psg_write		;7bc5

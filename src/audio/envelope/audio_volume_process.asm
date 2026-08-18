sub_audio_volume_process:
	ld a,(ix + audio_psg_channel_t.envelope_id_pointer)
	or a
	jr nz,@audio_envelope_volume_process
	ld a,(ix + audio_psg_channel_t.base_volume)
	cpl
	and 00fh
	ld (ix + audio_psg_channel_t.current_volume),a
	jr @audio_psg_frequency_update
@audio_envelope_volume_process:
	res 7,a
	ld hl,audio_envelope_volume_data
	call sub_audio_pointer_get_by_id
	call sub_audio_envelope_volume_apply
@audio_psg_frequency_update:
	bit 6,(ix + audio_psg_channel_t.status_flags)
	jr nz,@l7bb5h
	ld a,(ix + audio_psg_channel_t.psg_channel_map)
	and 00fh
	ld c,a
	ld b,000h
	ld hl,l7bc8h_audio
	add hl,bc
	ld c,(hl)
	ld a,(ix + audio_psg_channel_t.final_frequency)
	and 00fh
	or c
	call sub_audio_psg_write
	ld a,(ix + audio_psg_channel_t.final_frequency)
	and 0f0h
	or (ix + audio_psg_channel_t.final_frequency + 1)
	rrca
	rrca
	rrca
	rrca
	call sub_audio_psg_write
@l7bb5h:
	ld a,(ix + audio_psg_channel_t.psg_channel_map)
	and 00fh
	ld c,a
	ld b,000h
	ld hl,l7bcch_audio
	add hl,bc
	ld a,(hl)
	or (ix + audio_psg_channel_t.current_volume)
	jp sub_audio_psg_write

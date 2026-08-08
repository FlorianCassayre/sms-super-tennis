sub_audio_volume_process:
	ld a,(ix + psg_channel_t.envelope_id_pointer)		; dd 7e 07 ;7b6e
	or a			; b7 ;7b71
	jr nz,@audio_envelope_volume_process		; 20 0b ;7b72
	ld a,(ix + psg_channel_t.base_volume)		; dd 7e 08 ;7b74
	cpl			; 2f ;7b77
	and 00fh		; e6 0f ;7b78
	ld (ix + psg_channel_t.current_volume),a		; dd 77 16 ;7b7a
	jr @audio_psg_frequency_update		; 18 0b ;7b7d
@audio_envelope_volume_process:
	res 7,a		; cb bf ;7b7f
	ld hl,audio_envelope_volume_data		; 21 05 79 ;7b81
	call sub_audio_pointer_get_by_id		; cd 1c 7b ;7b84
	call sub_audio_envelope_volume_apply		; cd d3 7b ;7b87
@audio_psg_frequency_update:
	bit 6,(ix + psg_channel_t.status_flags)		; dd cb 00 76 ;7b8a
	jr nz,@l7bb5h		; 20 25 ;7b8e
	ld a,(ix + psg_channel_t.psg_channel_map)		; dd 7e 01 ;7b90
	and 00fh		; e6 0f ;7b93
	ld c,a			; 4f ;7b95
	ld b,000h		; 06 00 ;7b96
	ld hl,l7bc8h_audio		; 21 c8 7b ;7b98
	add hl,bc			; 09 ;7b9b
	ld c,(hl)			; 4e ;7b9c
	ld a,(ix + psg_channel_t.final_frequency)		; dd 7e 12 ;7b9d
	and 00fh		; e6 0f ;7ba0
	or c			; b1 ;7ba2
	call sub_audio_psg_write		; cd c0 7d ;7ba3
	ld a,(ix + psg_channel_t.final_frequency)		; dd 7e 12 ;7ba6
	and 0f0h		; e6 f0 ;7ba9
	or (ix + psg_channel_t.final_frequency + 1)		; dd b6 13 ;7bab
	rrca			; 0f ;7bae
	rrca			; 0f ;7baf
	rrca			; 0f ;7bb0
	rrca			; 0f ;7bb1
	call sub_audio_psg_write		; cd c0 7d ;7bb2
@l7bb5h:
	ld a,(ix + psg_channel_t.psg_channel_map)		; dd 7e 01 ;7bb5
	and 00fh		; e6 0f ;7bb8
	ld c,a			; 4f ;7bba
	ld b,000h		; 06 00 ;7bbb
	ld hl,l7bcch_audio		; 21 cc 7b ;7bbd
	add hl,bc			; 09 ;7bc0
	ld a,(hl)			; 7e ;7bc1
	or (ix + psg_channel_t.current_volume)		; dd b6 16 ;7bc2
	jp sub_audio_psg_write		; c3 c0 7d ;7bc5

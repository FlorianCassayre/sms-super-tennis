sub_audio_channel_update:
	.IFDEF _J
    	ld a,($c000)
    	bit 3,a
    	ret nz
    .ENDIF
	call sub_audio_track_loader
	call sub_audio_fade_out_update
	ld ix,psg_channel
	ld b,PSG_CHANNELS
-:
	push bc
	bit 7,(ix + audio_psg_channel_t.status_flags)
	call nz,sub_audio_process_active_channel
	ld de,_sizeof_audio_psg_channel_t
	add ix,de
	pop bc
	djnz -
	ret

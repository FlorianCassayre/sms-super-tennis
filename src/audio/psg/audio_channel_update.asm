sub_audio_channel_update:
	.IFDEF _J
    	ld a,($c000)
    	bit 3,a
    	ret nz
    .ENDIF
	call sub_audio_track_loader		;796f
	call sub_audio_fade_out_update		;7972
	ld ix,psg_channel		;7975
	ld b,PSG_CHANNELS		;7979
-:
	push bc			;797b
	bit 7,(ix + audio_psg_channel_t.status_flags)		;797c
	call nz,sub_audio_process_active_channel		;7980
	ld de,_sizeof_audio_psg_channel_t		;7983
	add ix,de		;7986
	pop bc			;7988
	djnz -		;7989
	ret			;798b

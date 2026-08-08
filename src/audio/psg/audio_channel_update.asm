sub_audio_channel_update:
	call sub_audio_track_loader		; cd a8 79 ;796f
	call sub_798ch		; cd 8c 79 ;7972
	ld ix,psg_channel		; dd 21 05 de ;7975
	ld b,PSG_CHANNELS		; 06 07 ;7979
-:
	push bc			; c5 ;797b
	bit 7,(ix + audio_psg_channel_t.status_flags)		; dd cb 00 7e ;797c
	call nz,sub_audio_process_active_channel		; c4 dd 7a ;7980
	ld de,_sizeof_audio_psg_channel_t		; 11 20 00 ;7983
	add ix,de		; dd 19 ;7986
	pop bc			; c1 ;7988
	djnz -		; 10 f0 ;7989
	ret			; c9 ;798b

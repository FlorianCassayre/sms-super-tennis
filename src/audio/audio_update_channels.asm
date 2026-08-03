sub_audio_update_channels:
	call sub_79a8h_jump_table		; cd a8 79 ;796f
	call sub_798ch		; cd 8c 79 ;7972
	ld ix,0de05h		; dd 21 05 de ;7975
	ld b,007h		; 06 07 ;7979
l797bh:
	push bc			; c5 ;797b
	bit 7,(ix+000h)		; dd cb 00 7e ;797c
	call nz,sub_audio_process_active_channel		; c4 dd 7a ;7980
	ld de,32		; 11 20 00 ;7983
	add ix,de		; dd 19 ;7986
	pop bc			; c1 ;7988
	djnz l797bh		; 10 f0 ;7989
	ret			; c9 ;798b

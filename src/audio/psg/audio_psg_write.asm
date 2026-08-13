sub_audio_psg_write:
	bit 2,(ix + audio_psg_channel_t.status_flags)		;7dc0
	ret nz			;7dc4
	out (O_PSG_ALT),a		;7dc5
	ret			;7dc7

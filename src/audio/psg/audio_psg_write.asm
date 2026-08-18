sub_audio_psg_write:
	bit 2,(ix + audio_psg_channel_t.status_flags)
	ret nz
	out (O_PSG_ALT),a
	ret

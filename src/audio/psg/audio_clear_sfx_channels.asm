sub_audio_clear_sfx_channels:
	xor a
	ld (psg_channel.5),a
	ld (psg_channel.6),a
	ld (psg_channel.7),a
	ret

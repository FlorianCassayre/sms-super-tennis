sub_audio_clear_sfx_channels:
	xor a			;7de3
	ld (psg_channel.5),a		;7de4
	ld (psg_channel.6),a		;7de7
	ld (psg_channel.7),a		;7dea
	ret			;7ded

sub_audio_fade_out_update:
	ld a,(psg_engine.state)
	or a
	ret z
	ld hl,psg_engine.tempo_countdown
	dec (hl)
	ret nz
	ld a,a
	dec a
	ld (psg_channel.1.base_volume),a
	ld (psg_channel.2.base_volume),a
	ld (psg_channel.3.base_volume),a
	ld (psg_engine.state),a
	ld a,018h
	ld (hl),a
	ret

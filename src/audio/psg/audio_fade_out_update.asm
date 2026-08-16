sub_audio_fade_out_update:
	ld a,(psg_engine.state)		;798c
	or a			;798f
	ret z			;7990
	ld hl,psg_engine.tempo_countdown		;7991
	dec (hl)			;7994
	ret nz			;7995
	ld a,a			;7996
	dec a			;7997
	ld (psg_channel.1.base_volume),a		;7998
	ld (psg_channel.2.base_volume),a		;799b
	ld (psg_channel.3.base_volume),a		;799e
	ld (psg_engine.state),a		;79a1
	ld a,018h		;79a4
	ld (hl),a			;79a6
	ret			;79a7

sub_audio_channel_mute:
	ld a,(ix + audio_psg_channel_t.psg_channel_map)		;7db1
	and 00fh		;7db4
	ld c,a			;7db6
	ld b,000h		;7db7
	ld hl,l7bcch_audio		;7db9
	add hl,bc			;7dbc
	ld a,(hl)			;7dbd
	or 00fh		;7dbe
	.INCLUDE "audio/psg/audio_psg_write.asm"

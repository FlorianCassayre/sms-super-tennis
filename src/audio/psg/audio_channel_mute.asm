sub_audio_channel_mute:
	ld a,(ix + audio_psg_channel_t.psg_channel_map)
	and 00fh
	ld c,a
	ld b,000h
	ld hl,l7bcch_audio
	add hl,bc
	ld a,(hl)
	or 00fh
	.INCLUDE "audio/psg/audio_psg_write.asm"

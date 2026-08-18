sub_audio_track_routine_sound_alt:
	.IFDEF _J
		ld e, $08
	.ENDIF
	.IFDEF _UE
		or a
		jr nz,l7ad7h
		jr l7a99h
	.ENDIF
l7a92h:
	cp e
	jr nc,l7ad7h
	ld a,e
	ld (psg_engine.priority_flag),a
	.IFDEF _J
		call sub_audio_silence
	.ENDIF
l7a99h:
	call sub_audio_clear_sfx_channels
	jr l7aa1h
.INCLUDE "audio/track/routine/audio_track_routine_sound_unknown.asm"
l7aa1h:
	ld de,psg_channel.1
	jr l7aafh
.INCLUDE "audio/track/routine/audio_track_routine_sound.asm"

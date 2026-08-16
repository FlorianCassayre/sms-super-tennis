sub_audio_track_routine_sound_alt:
	.IFDEF _J
		ld e, $08
	.ENDIF
	.IFDEF _UE
		or a			;7a8d
		jr nz,l7ad7h		;7a8e
		jr l7a99h		;7a90
	.ENDIF
l7a92h:
	cp e			;7a92
	jr nc,l7ad7h		;7a93
	ld a,e			;7a95
	ld (psg_engine.priority_flag),a		;7a96
	.IFDEF _J
		call sub_audio_silence
	.ENDIF
l7a99h:
	call sub_audio_clear_sfx_channels		;7a99
	jr l7aa1h		;7a9c
.INCLUDE "audio/track/routine/audio_track_routine_sound_unknown.asm"
l7aa1h:
	ld de,psg_channel.1		;7aa1
	jr l7aafh		;7aa4
.INCLUDE "audio/track/routine/audio_track_routine_sound.asm"

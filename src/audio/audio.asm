.INCLUDE "audio/psg/audio_channel_update.asm"
.INCLUDE "audio/psg/audio_fade_out_update.asm"
.INCLUDE "audio/track/audio_track_loader.asm"
.INCLUDE "audio/track/audio_tracks.asm"
.INCLUDE "audio/track/routine/audio_track_routine_pause.asm"
.INCLUDE "audio/track/routine/audio_track_routine_stop_all.asm"
.INCLUDE "audio/track/routine/audio_track_routine_music.asm"
.INCLUDE "audio/track/routine/audio_track_routine_sound_group_a.asm"
.INCLUDE "audio/track/routine/audio_track_routine_sound_group_b.asm"
.INCLUDE "audio/track/routine/audio_track_routine_sound_alt.asm"
.INCLUDE "audio/psg/audio_process_active_channel.asm"
.INCLUDE "audio/audio_pointer_get_by_id.asm"
.INCLUDE "audio/envelope/audio_envelope_pitch_process.asm"
.INCLUDE "audio/psg/audio_calculate_pitch_slide.asm"
.INCLUDE "audio/envelope/audio_volume_process.asm"
l7bc8h_audio:
	.DB $80 $a0 $c0 $c0			;7bc8
l7bcch_audio:
	.DB $90 $b0 $d0 $f0			;7bcc
.INCLUDE "audio/envelope/audio_envelope_volume_apply.asm"
.INCLUDE "audio/envelope/audio_envelope_pitch_apply.asm"
.INCLUDE "audio/psg/7c43h.asm"
.INCLUDE "audio/track/audio_track_parse_data.asm"
l7ceah:
	inc de			;7cea
	jp sub_audio_track_parse_data		;7ceb
.INCLUDE "audio/command/audio_command_routine.asm"
.INCLUDE "audio/command/audio_command_routines.asm"
l7daah:
	inc de			;7daa
	dec (hl)			;7dab
	jp nz,audio_command_routine_goto		;7dac
	inc de			;7daf
	ret			;7db0
.INCLUDE "audio/psg/audio_channel_mute.asm"
.INCLUDE "audio/psg/audio_reset_engine_state.asm"
.INCLUDE "audio/psg/audio_clear_sfx_channels.asm"
.INCLUDE "audio/silence/audio_silence_data.asm"
.INCLUDE "audio/note/audio_note_frequencies.asm"
.INCLUDE "math/mul_h_e.asm"
.INCLUDE "math/div_hl_e.asm"

audio_track_data_theme_game_start:
	.DB 4
	CHANNEL_HEADER $80, $20, 5, @channel_1, $f5, $01, $08, $0d
	CHANNEL_HEADER $80, $21, 5, @channel_2, $f5, $02, $01, $0b
	CHANNEL_HEADER $80, $22, 5, @channel_3, $f5, $02, $01, $0b
	CHANNEL_HEADER $80, $23, 5, @channel_4, $03, $01, $01, $0d
@channel_1:
	.DB note.e3, 1
	.DB note.ds3
	.DB note.e3, 2
	.DB note.e3, 1
	.DB note.ds3
	.DB note.e3, 2
	.DB note.e3, 1
	.DB note.ds3
	.DB note.e3, 2
	.DB note.cs4
	.DB note.a4
	.DB note.fs3
	.DB note.e3
	.DB note.ds3
	.DB note.d3
	.DB note.b3
	.DB note.cs3, 4
	.DB note.a3, 2
	.DB note.e3, 1
	.DB note.ds3
	.DB note.e3, 2
	.DB note.e3, 1
	.DB note.ds3
	.DB note.e3, 2
	.DB note.e3, 1
	.DB note.ds3
	.DB note.e3, 2
	.DB note.cs4
	.DB note.a4
	.DB note.fs3
	.DB note.e3
	.DB note.f3
	.DB note.fs3
	.DB note.gs3
	.DB note.a4, 4
	.DB note.a4
	.DB note.cs4, 2
	.DB note.cs4, 1
	.DB note.cs4
	.DB note.cs4, 6
	.DB note.d4, 2
	.DB note.cs4
	.DB note.d4
	.DB note.cs4
	.DB note.cs4, 1
	.DB note.cs4
	.DB note.cs4, 6
	.DB note.b4, 2
	.DB note.a4
	.DB note.b4
	.DB note.cs4, 2
	.DB note.cs4, 1
	.DB note.cs4
	.DB note.cs4, 12
	.DB CMD_END_TRACK
@channel_2:
	.DB note.rest, 2
	.DB note.a3, 2
	.DB note.e3
	.DB note.a3
	.DB note.e3
	.DB note.a3
	.DB note.e3
	.DB note.a3
	.DB note.e3
	.DB note.e2
	.DB note.e3
	.DB note.e2
	.DB note.e3
	.DB note.a3
	.DB note.e3
	.DB note.a3
	.DB note.e3
	.DB note.a3
	.DB note.e3
	.DB note.a3
	.DB note.e3
	.DB note.a3
	.DB note.e3
	.DB note.a3
	.DB note.e3
	.DB note.e2
	.DB note.e3
	.DB note.e2
	.DB note.d3
	.DB note.a3
	.DB note.e3
	.DB note.a3, 4
	.DB note.e3, 2
	.DB note.e3, 1
	.DB note.e3
	.DB note.e3, 6
	.DB note.fs3, 2
	.DB note.e3
	.DB note.fs3
	.DB note.e3
	.DB note.e3, 1
	.DB note.e3
	.DB note.e3, 6
	.DB note.d3, 2
	.DB note.cs3
	.DB note.d3
	.DB note.e3
	.DB note.e3, 1
	.DB note.e3
	.DB CMD_SET_INSTRUMENT, $01
	.DB note.e3, 12
	.DB CMD_END_TRACK
@channel_3:
	.DB note.rest, 2
	.DB CMD_SET_INSTRUMENT, $0a
	.DB note.a3, 2
	.DB note.cs3
	.DB note.a3
	.DB note.cs3
	.DB note.a3
	.DB note.cs3
	.DB note.a3
	.DB note.cs3
	.DB note.e2
	.DB note.b3
	.DB note.e2
	.DB note.b3
	.DB note.a3
	.DB note.cs3
	.DB note.a3
	.DB note.cs3
	.DB note.a3
	.DB note.cs3
	.DB note.a3
	.DB note.cs3
	.DB note.a3
	.DB note.cs3
	.DB note.a3
	.DB note.cs3
	.DB note.e2
	.DB note.b3
	.DB note.e2
	.DB note.b3
	.DB note.a3
	.DB note.cs3
	.DB note.a3, 4
	.DB note.a3, 2
	.DB note.a3, 1
	.DB note.a3
	.DB note.a3, 6
	.DB note.a3, 2
	.DB note.a3
	.DB note.a3
	.DB note.a3
	.DB note.a3, 1
	.DB note.a3
	.DB note.a3, 6
	.DB note.a3, 2
	.DB note.a3
	.DB note.a3
	.DB note.a3
	.DB note.a3, 1
	.DB note.a3
	.DB CMD_SET_INSTRUMENT, $01
	.DB note.a3, 12
	.DB note.rest, 8
	.DB CMD_STOP_ALT
@channel_4:
	.DB CMD_PSG_NOISE, $04
	.DB note.rest, 2
@loop_7248:
	.DB CMD_SET_VOLUME, $09
	.DB CMD_SET_INSTRUMENT, $02
	.DB note.a2, 4
	.DB CMD_SET_VOLUME, $0c
	.DB CMD_SET_INSTRUMENT, $05
	AUDIO_RETRIGGER 4
	.DB CMD_SET_VOLUME, $09
	.DB CMD_SET_INSTRUMENT, $02
	AUDIO_RETRIGGER 2
	AUDIO_RETRIGGER 2
	.DB CMD_SET_VOLUME, $0c
	.DB CMD_SET_INSTRUMENT, $05
	AUDIO_RETRIGGER 4
	AUDIO_LOOP $00, $04, @loop_7248
@loop_7263:
	.DB CMD_SET_VOLUME, $09
	.DB CMD_SET_INSTRUMENT, $02
	AUDIO_RETRIGGER 1
	AUDIO_RETRIGGER 1
	AUDIO_RETRIGGER 1
	AUDIO_RETRIGGER 1
	.DB CMD_SET_VOLUME, $0c
	.DB CMD_SET_INSTRUMENT, $05
	AUDIO_RETRIGGER 2
	.DB CMD_SET_VOLUME, $09
	.DB CMD_SET_INSTRUMENT, $02
	AUDIO_RETRIGGER 1
	AUDIO_RETRIGGER 1
	AUDIO_RETRIGGER 2
	.DB CMD_SET_VOLUME, $0c
	.DB CMD_SET_INSTRUMENT, $05
	AUDIO_RETRIGGER 2
	AUDIO_RETRIGGER 2
	AUDIO_RETRIGGER 2
	AUDIO_LOOP $00, $02, @loop_7263
	.DB CMD_SET_VOLUME, $09
	.DB CMD_SET_INSTRUMENT, $02
	AUDIO_RETRIGGER 1
	AUDIO_RETRIGGER 1
	AUDIO_RETRIGGER 1
	AUDIO_RETRIGGER 1
	.DB CMD_SET_VOLUME, $0c
	.DB CMD_SET_INSTRUMENT, $05
	AUDIO_RETRIGGER 2
	.DB CMD_END_TRACK

audio_track_data_theme_game_wonn:
	.DB 3
	CHANNEL_HEADER $80, $20, 4, @channel_1, $f7, $03, $05, $0d
	CHANNEL_HEADER $80, $21, 4, @channel_2, $f7, $04, $05, $0b
	CHANNEL_HEADER $80, $22, 4, @channel_3, $f7, $04, $05, $0b
@channel_1:
	.DB note.e4, 4
	.DB note.e4
	.DB note.gs4
	.DB note.gs4
	.DB note.a5, 2
	.DB note.fs4
	.DB note.fs4
	.DB CMD_SET_INSTRUMENT, $01
	.DB note.a5, 10
	.DB CMD_END_TRACK
@channel_2:
	.DB note.cs4, 4
	.DB note.cs4
	.DB note.b4
	.DB note.b4
	.DB note.cs4, 2
	.DB note.cs4
	.DB note.cs4
	.DB CMD_SET_INSTRUMENT, $01
	.DB note.cs4, 10
	.DB note.rest, 8
	.DB CMD_STOP_ALT
@channel_3:
	.DB note.a3, 2
	.DB note.e3
	.DB note.cs3
	.DB note.e3
	.DB note.e2
	.DB note.d3
	.DB note.b3
	.DB note.d3
	.DB note.a3
	.DB note.e3
	.DB note.cs3
	.DB note.e3
	.DB CMD_SET_INSTRUMENT, $01
	.DB note.a3, 8
	.DB CMD_END_TRACK

audio_track_data_theme_game_lost:
	.DB 3
	CHANNEL_HEADER $80, $20, 4, @channel_1, $f9, $01, $08, $0d
	CHANNEL_HEADER $80, $21, 4, @channel_2, $f9, $02, $06, $0a
	CHANNEL_HEADER $80, $22, 4, @channel_3, $f9, $02, $06, $09
@channel_1:
	.DB note.a4, 4
	.DB note.e3
	.DB note.cs3
	.DB note.a3
	.DB note.e3, 2
	.DB note.d3
	.DB note.cs3
	.DB note.b3
	.DB note.a3, 4
	.DB note.rest
	.DB CMD_END_TRACK
@channel_2:
	.DB note.a3, 2
	.DB note.e3
	.DB note.a3
	.DB note.e3
	.DB note.a3
	.DB note.e3
	.DB note.a3
	.DB note.e3
	.DB note.e2
	.DB note.e3
	.DB note.e2
	.DB note.d3
	.DB note.cs3, 4
	.DB note.a3
	.DB CMD_END_TRACK
@channel_3:
	.DB note.a3, 2
	.DB note.cs3
	.DB note.a3
	.DB note.cs3
	.DB note.a3
	.DB note.cs3
	.DB note.a3
	.DB note.cs3
	.DB note.e2
	.DB note.b3
	.DB note.e2
	.DB note.gs2
	.DB note.a3, 4
	.DB note.a3
	.DB note.rest, 8
	.DB CMD_STOP_ALT

audio_track_data_theme_set_won:
	.DB 3
	CHANNEL_HEADER $80, $20, 5, @channel_1, $f7, $04, $08, $0d
	CHANNEL_HEADER $80, $21, 5, @channel_2, $f7, $04, $08, $0b
	CHANNEL_HEADER $80, $22, 5, @channel_3, $f7, $04, $08, $0b
@channel_1:
	.DB note.e4, 4
	.DB note.e4, 3
	.DB note.e4, 1
	.DB note.gs4, 2
	.DB note.gs4, 4
	.DB note.gs4, 2
	.DB note.a5
	.DB note.a5, 14
	.DB CMD_END_TRACK
@channel_2:
	.DB note.cs4, 4
	.DB note.cs4, 3
	.DB note.cs4, 1
	.DB note.b4, 2
	.DB note.b4, 4
	.DB note.b4, 2
	.DB note.cs4
	.DB note.cs4, 14
	.DB CMD_END_TRACK
@channel_3:
	.DB note.a4, 4
	.DB note.a4, 3
	.DB note.a4, 1
	.DB note.e3, 2
	.DB note.e3, 4
	.DB note.e3, 2
	.DB note.a4
	.DB note.gs3, 1
	.DB note.fs3
	.DB note.e3
	.DB note.d3
	.DB note.cs3
	.DB note.b3
	.DB note.a3, 8
	.DB note.rest, 8
	.DB CMD_STOP_ALT

audio_track_data_theme_set_lost:
	.DB 3
	CHANNEL_HEADER $80, $20, 6, @channel_1, $f5, $04, $09, $0d
	CHANNEL_HEADER $80, $21, 6, @channel_2, $f5, $03, $01, $0b
	CHANNEL_HEADER $80, $22, 6, @channel_3, $f5, $03, $01, $0b
@channel_1:
	.DB note.gs4, 2
	.DB note.a5, 1
	.DB note.ds4, 2
	.DB note.e3, 1
	.DB note.c4, 2
	.DB note.cs4, 1
	.DB note.gs3, 2
	.DB note.a4, 1
	.DB note.e3, 2
	.DB note.e3, 1
	.DB note.e3
	.DB note.fs3
	.DB note.gs3
	.DB note.a4, 3
	.DB note.a4
	.DB CMD_END_TRACK
@channel_2:
	.DB note.cs3, 6
	.DB CMD_SET_INSTRUMENT, $0a
	.DB note.cs3, 3
	.DB note.cs3
	.DB note.d3
	.DB note.d3
	.DB note.cs3
	.DB note.cs3
	.DB CMD_END_TRACK
@channel_3:
	.DB note.a3, 6
	.DB CMD_SET_INSTRUMENT, $0a
	.DB note.a3, 3
	.DB note.a3
	.DB note.e2
	.DB note.e2
	.DB note.a3
	.DB note.a3
	.DB note.rest, 8
	.DB CMD_STOP_ALT

audio_track_data_theme_match_won:
	.DB 4
	CHANNEL_HEADER $80, $20, 5, @channel_1, $f7, $01, $08, $0d
	CHANNEL_HEADER $80, $21, 5, @channel_2, $f7, $01, $08, $0b
	CHANNEL_HEADER $80, $22, 5, @channel_3, $f7, $02, $09, $0b
	CHANNEL_HEADER $80, $23, 5, @channel_4, $03, $01, $01, $0d
@channel_1:
	.DB note.e4, 4
	.DB note.e4, 3
	.DB note.e4, 1
	.DB note.fs4, 2
	.DB note.fs4, 4
	.DB note.fs4, 2
	.DB note.e4, 4
	.DB note.e4, 3
	.DB note.e4, 1
	.DB note.d4, 2
	.DB note.d4, 4
	.DB note.d4, 2
	.DB note.e4, 4
	.DB note.e4, 3
	.DB note.e4, 1
	.DB note.gs4, 2
	.DB note.gs4, 4
	.DB note.gs4, 2
	.DB note.a5, 2
	.DB note.a5, 1
	.DB note.a5
	.DB note.a5, 12
	.DB CMD_END_TRACK
@channel_2:
	.DB note.cs4, 4
	.DB note.cs4, 3
	.DB note.cs4, 1
	.DB note.d4, 2
	.DB note.d4, 4
	.DB note.d4, 2
	.DB note.cs4, 4
	.DB note.cs4, 3
	.DB note.cs4, 1
	.DB note.b4, 2
	.DB note.b4, 4
	.DB note.b4, 2
	.DB note.cs4, 4
	.DB note.cs4, 3
	.DB note.cs4, 1
	.DB note.b4, 2
	.DB note.b4, 4
	.DB note.b4, 2
	.DB note.cs4, 2
	.DB note.cs4, 1
	.DB note.cs4
	.DB note.cs4, 12
	.DB CMD_END_TRACK
@channel_3:
	.DB note.a4, 4
	.DB note.a4, 3
	.DB note.a4, 1
	.DB note.d3, 2
	.DB note.d3, 4
	.DB note.d3, 2
	.DB note.a4, 4
	.DB note.a4, 3
	.DB note.a4, 1
	.DB note.e3, 2
	.DB note.e3, 4
	.DB note.e3, 2
	.DB note.a4, 4
	.DB note.a4, 3
	.DB note.a4, 1
	.DB note.e3, 2
	.DB note.e3, 4
	.DB note.e3, 2
	.DB note.a4, 2
	.DB note.gs3, 1
	.DB note.fs3
	.DB note.e3
	.DB note.f3
	.DB note.fs3
	.DB note.gs3
	.DB note.a4, 8
	.DB note.rest, 8
	.DB CMD_STOP_ALT
@channel_4:
	.DB CMD_PSG_NOISE, $04
@loop_7482:
	.DB CMD_SET_VOLUME, $09
	.DB CMD_SET_INSTRUMENT, $02
	.DB note.a2, 4
	.DB CMD_SET_VOLUME, $0c
	.DB CMD_SET_INSTRUMENT, $05
	AUDIO_RETRIGGER 4
	.DB CMD_SET_VOLUME, $09
	.DB CMD_SET_INSTRUMENT, $02
	AUDIO_RETRIGGER 2
	AUDIO_RETRIGGER 2
	.DB CMD_SET_VOLUME, $0c
	.DB CMD_SET_INSTRUMENT, $05
	AUDIO_RETRIGGER 4
	AUDIO_LOOP $00, $04, @loop_7482
	.DB CMD_END_TRACK

audio_track_data_theme_match_lost:
	.DB 4
	CHANNEL_HEADER $80, $20, 4, @channel_1, $f7, $04, $09, $0d
	CHANNEL_HEADER $80, $21, 4, @channel_2, $f7, $04, $01, $0b
	CHANNEL_HEADER $80, $22, 4, @channel_3, $f7, $04, $01, $0b
	CHANNEL_HEADER $80, $23, 4, @channel_4, $03, $04, $08, $0b
@channel_1:
	.DB note.a5, 2
	.DB note.gs4
	.DB note.a5
	.DB note.e4
	.DB note.ds4
	.DB note.e4
	.DB note.cs4
	.DB note.c4
	.DB note.cs4
	.DB note.a4
	.DB note.gs3
	.DB note.a4
	.DB note.e4, 4
	.DB note.e4, 2
	.DB note.e4
	.DB note.d4
	.DB note.cs4
	.DB note.b4, 4
	.DB note.b4, 2
	.DB note.e3
	.DB note.fs3
	.DB note.gs3
	.DB note.a4, 6
	.DB note.a4, 1
	.DB note.cs4
	.DB note.e4
	.DB note.a5, 3
	.DB note.a4, 6
	.DB CMD_END_TRACK
@channel_2:
	.DB note.cs3, 12
	.DB CMD_SET_INSTRUMENT, $0a
	.DB note.cs3, 6
	.DB note.cs3
	.DB note.b3
	.DB note.b3
	.DB note.d3
	.DB note.d3
	.DB note.a3
	.DB note.cs3
	.DB note.a3
	.DB CMD_END_TRACK
@channel_3:
	.DB note.a3, 12
	.DB CMD_SET_INSTRUMENT, $0a
	.DB note.a3, 6
	.DB note.a3
	.DB note.e2
	.DB note.e2
	.DB note.e2
	.DB note.e2
	.DB note.a3
	.DB note.a3
	.DB note.a3
	.DB note.rest, 8
	.DB CMD_STOP_ALT
@channel_4:
	.DB CMD_PSG_NOISE, $04
@loop_750b:
	.DB CMD_SET_VOLUME, $09
	.DB CMD_SET_INSTRUMENT, $02
	.DB note.a2, 4
	AUDIO_RETRIGGER 2
	.DB CMD_SET_VOLUME, $0c
	.DB CMD_SET_INSTRUMENT, $05
	AUDIO_RETRIGGER 4
	.DB CMD_SET_VOLUME, $09
	.DB CMD_SET_INSTRUMENT, $02
	AUDIO_RETRIGGER 2
	AUDIO_LOOP $00, $06, @loop_750b
	.DB CMD_END_TRACK

audio_track_data_theme_splash_screen:
	.DB 3
	CHANNEL_HEADER $80, $20, 4, @channel_1, $00, $01, $04, $0e
	CHANNEL_HEADER $80, $21, 4, @channel_2, $00, $01, $05, $0d
	CHANNEL_HEADER $80, $22, 4, @channel_3, $00, $00, $03, $0d
@channel_1:
	.DB note.e3, 2
	AUDIO_RETRIGGER 2
	.DB note.d3, 4
	.DB note.cs3, 2
	AUDIO_RETRIGGER 2
	.DB note.d3, 4
	.DB note.e3, 2
	AUDIO_RETRIGGER 2
	AUDIO_RETRIGGER 2
	AUDIO_RETRIGGER 6
	.DB note.rest, 4
	.DB note.b3, 4
	AUDIO_RETRIGGER 4
	AUDIO_RETRIGGER 4
	.DB note.cs3
	.DB note.a3, 2
	AUDIO_RETRIGGER 2
	AUDIO_RETRIGGER 2
	AUDIO_RETRIGGER 4
	.DB CMD_END_TRACK
@channel_2:
	.DB note.cs3, 2
	AUDIO_RETRIGGER 2
	.DB note.b3, 4
	.DB note.a3, 2
	AUDIO_RETRIGGER 2
	AUDIO_RETRIGGER 4
	.DB note.cs3, 2
	AUDIO_RETRIGGER 2
	AUDIO_RETRIGGER 2
	AUDIO_RETRIGGER 6
	.DB note.rest, 4
	.DB note.gs2, 4
	AUDIO_RETRIGGER 4
	AUDIO_RETRIGGER 4
	.DB note.a3
	.DB note.fs2, 2
	AUDIO_RETRIGGER 2
	AUDIO_RETRIGGER 2
	AUDIO_RETRIGGER 4
	.DB CMD_END_TRACK
@channel_3:
	.DB note.a1, 2
	.DB note.a2
	AUDIO_LOOP $00, $08, @channel_3
	.DB note.e1
	.DB note.e2
	.DB note.e1
	.DB note.e2
	.DB note.e1
	.DB note.e2
	.DB note.e1
	.DB note.e2
	.DB note.a1
	.DB note.a2
	.DB note.a1
	.DB note.a2
	.DB note.rest, 8
	.DB CMD_STOP_ALT

audio_track_data_sound_racket_hit:
	.DB 2
	CHANNEL_HEADER $a8, $21, 6, @channel_1, $00, $00, $05, $0e
	CHANNEL_HEADER $a8, $22, 6, @channel_2, $00, $00, $06, $0d
@channel_1:
	AUDIO_RAW_FREQ_SLIDE $01, $03, $01, $02, 2
	.DB CMD_END_TRACK
@channel_2:
	AUDIO_RAW_FREQ_SLIDE $01, $f0, $01, $ef, 2
	.DB CMD_END_TRACK

audio_track_data_sound_ball_high:
	.DB 2
	CHANNEL_HEADER $a8, $21, 6, @channel_1, $00, $00, $05, $0e
	CHANNEL_HEADER $a8, $22, 6, @channel_2, $00, $00, $06, $0d
@channel_1:
	AUDIO_RAW_FREQ_SLIDE $01, $50, $01, $52, 2
	.DB CMD_SET_INSTRUMENT, $00
	.DB CMD_SET_VOLUME, $0b
	.DB CMD_SET_TEMPO, $01
	AUDIO_RAW_FREQ_SLIDE $02, $80, $01, $01, 76
	AUDIO_RAW_FREQ_SLIDE $02, $02, $02, $02, 10
	.DB CMD_END_TRACK
@channel_2:
	AUDIO_RAW_FREQ_SLIDE $02, $00, $02, $02, 2
	.DB CMD_SET_INSTRUMENT, $00
	.DB CMD_EFFECT, $01
	.DB CMD_SET_VOLUME, $0e
	.DB CMD_SET_TEMPO, $01
	AUDIO_RAW_FREQ_SLIDE $02, $00, $00, $0f, 76
	AUDIO_RAW_FREQ_SLIDE $01, $10, $01, $30, 10
	.DB CMD_END_TRACK

	.IFDEF _J
	audio_track_data_sound_racket_hit_legacy:
		.DB 3
		CHANNEL_HEADER $a8, $20, 1, @channel_1, $00, $00, $05, $0d
		CHANNEL_HEADER $a8, $21, 1, @channel_2, $00, $00, $06, $0d
		CHANNEL_HEADER $a0, $23, 1, @channel_3, $03, $00, $08, $0f
	@channel_1:
		AUDIO_RAW_FREQ_SLIDE $01, $03, $01, $02, 1
		AUDIO_RAW_FREQ_SLIDE $00, $70, $02, $d0, 8
		.DB CMD_END_TRACK
	@channel_2:
		AUDIO_RAW_FREQ_SLIDE $01, $f0, $01, $ef, 1
		AUDIO_RAW_FREQ_SLIDE $00, $e0, $02, $bf, 5
		.DB CMD_END_TRACK
	@channel_3:
		AUDIO_NOTE_SLIDE note.a6, note.a3, 14
		.DB CMD_END_TRACK
    .ENDIF

l75ech:
	.DB 3
	CHANNEL_HEADER $a0, $20, 3, @channel_1, $00, $00, $01, $0a
	CHANNEL_HEADER $a0, $21, 3, @channel_2, $03, $01, $00, $0a
	CHANNEL_HEADER $a0, $23, 3, @channel_3, $03, $01, $08, $0a
@channel_1:
	AUDIO_NOTE_SLIDE note.a1, note.a6, 6
	.DB CMD_END_TRACK
@channel_2:
	AUDIO_NOTE_SLIDE note.a4, note.a5, 4
	.DB CMD_END_TRACK
@channel_3:
	.IFDEF _UE
		.DB CMD_PSG_NOISE, $07
	.ENDIF
	AUDIO_NOTE_SLIDE note.ds4, note.b5, 4
	.DB CMD_STOP_SFX

audio_track_data_sound_ball_net:
	.DB 2
	CHANNEL_HEADER $a0, $21, 1, @channel_1, $03, $01, $01, $0e
	CHANNEL_HEADER $a0, $22, 1, @channel_1, $02, $01, $01, $0e
@channel_1:
	AUDIO_NOTE_SLIDE note.a4, note.gs3, 3
	AUDIO_NOTE_SLIDE note.fs3, note.f3, 3
	AUDIO_NOTE_SLIDE note.d3, note.cs3, 6
	.DB CMD_END_TRACK

audio_track_data_sound_ball_bounce:
	.IFDEF _J
		.DB 2
		CHANNEL_HEADER $a0, $21, 1, @channel_1, $03, $01, $05, $0d
		CHANNEL_HEADER $a0, $23, 1, @channel_2, $03, $01, $01, $0d
	@channel_1:
		AUDIO_NOTE_SLIDE note.a2, note.gs1, 2
		AUDIO_NOTE_SLIDE note.d2, note.e2, 8
		.DB CMD_END_TRACK
	@channel_2:
		AUDIO_NOTE_SLIDE note.d2, note.b2, 2
		AUDIO_NOTE_SLIDE note.a3, note.fs2, 8
		.DB CMD_END_TRACK
	.ENDIF
	.IFDEF _UE
		.DB 3
		CHANNEL_HEADER $a8, $20, 1, @channel_1, $00, $00, $02, $0d
		CHANNEL_HEADER $a8, $21, 1, @channel_2, $00, $00, $02, $0d
		CHANNEL_HEADER $a8, $23, 1, @channel_3, $00, $00, $02, $0f
	@channel_1:
		AUDIO_RAW_FREQ_SLIDE $02, $20, $02, $30, 6
		.DB CMD_END_TRACK
	@channel_2:
		AUDIO_RAW_FREQ_SLIDE $02, $40, $02, $50, 6
		.DB CMD_END_TRACK
	@channel_3:
		.DB CMD_PSG_NOISE, $07
		AUDIO_RAW_FREQ_SLIDE $00, $40, $00, $50, 2
		AUDIO_RAW_FREQ_SLIDE $00, $00, $00, $00, 4
		.DB CMD_END_TRACK
	.ENDIF

l7668h:
	.DB 2
	CHANNEL_HEADER $88, $21, 2, @channel_1, $03, $01, $03, $0e
	CHANNEL_HEADER $80, $23, 2, @channel_2, $03, $00, $03, $0d
@channel_1:
	AUDIO_RAW_FREQ $01, $20, 2
	AUDIO_RAW_FREQ $00, $e0, 6
	.DB CMD_END_TRACK
@channel_2:
	.DB CMD_PSG_NOISE, $07
	.DB note.a2, 2
	.DB note.a5, 6
	.DB CMD_END_TRACK

l7689h:
	.DB 2
	CHANNEL_HEADER $a8, $21, 2, @channel_1, $03, $01, $01, $0e
	CHANNEL_HEADER $a8, $22, 2, @channel_2, $03, $00, $01, $0d
@channel_1:
	AUDIO_RAW_FREQ_SLIDE $01, $00, $00, $30, 4
	AUDIO_LOOP $00, $04, @channel_1
	AUDIO_RAW_FREQ_SLIDE $00, $40, $00, $30, 9
	.DB CMD_END_TRACK
@channel_2:
	AUDIO_RAW_FREQ_SLIDE $01, $30, $01, $00, 4
	AUDIO_LOOP $00, $04, @channel_2
	AUDIO_RAW_FREQ_SLIDE $00, $60, $00, $43, 9
	.DB CMD_END_TRACK

l76bch:
	.DB 1
	CHANNEL_HEADER $80, $20, 2, @channel_1, $03, $00, $01, $0b
@channel_1:
	.DB note.a2, 1
	.DB CMD_END_TRACK

l76c9h:
	.DB 1
	CHANNEL_HEADER $a0, $20, 1, @channel_1, $03, $00, $01, $0b
@channel_1:
	AUDIO_NOTE_SLIDE note.cs2, note.d2, 3
	.DB CMD_END_TRACK

l76d7h:
	.DB 2
	CHANNEL_HEADER $a8, $21, 1, @channel_1, $03, $00, $00, $0b
	CHANNEL_HEADER $a8, $22, 1, @channel_2, $03, $01, $00, $0e
@channel_1:
	AUDIO_RAW_FREQ_SLIDE $02, $02, $02, $02, 10
	AUDIO_RAW_FREQ_SLIDE $02, $01, $02, $80, 38
	.DB CMD_END_TRACK
@channel_2:
	AUDIO_RAW_FREQ_SLIDE $01, $10, $01, $30, 10
	AUDIO_RAW_FREQ_SLIDE $01, $30, $02, $00, 38
	.DB CMD_END_TRACK

audio_track_data_sound_ball_in:
	.DB 3
	CHANNEL_HEADER $88, $20, 1, @channel_1, $00, $02, $03, $0a
	CHANNEL_HEADER $88, $21, 1, @channel_2, $00, $01, $03, $0d
	CHANNEL_HEADER $88, $22, 1, @channel_3, $00, $02, $03, $0a
@channel_1:
	AUDIO_RAW_FREQ $00, $50, 1
	AUDIO_RAW_FREQ $00, $40, 1
	AUDIO_RAW_FREQ $00, $30, 1
	AUDIO_RAW_FREQ $00, $00, 4
	AUDIO_RAW_FREQ $00, $90, 1
	AUDIO_RAW_FREQ $00, $a0, 1
	AUDIO_RAW_FREQ $00, $b0, 1
	AUDIO_RAW_FREQ $00, $d0, 1
	.DB CMD_END_TRACK
@channel_2:
	AUDIO_RAW_FREQ $00, $48, 1
	AUDIO_RAW_FREQ $00, $38, 1
	AUDIO_RAW_FREQ $00, $40, 1
	AUDIO_RAW_FREQ $00, $00, 4
	AUDIO_RAW_FREQ $00, $a0, 1
	AUDIO_RAW_FREQ $00, $90, 1
	AUDIO_RAW_FREQ $00, $b0, 1
	AUDIO_RAW_FREQ $00, $c0, 1
	.DB CMD_END_TRACK
@channel_3:
	AUDIO_RAW_FREQ $00, $70, 1
	AUDIO_RAW_FREQ $00, $60, 1
	AUDIO_RAW_FREQ $00, $50, 1
	AUDIO_RAW_FREQ $00, $00, 4
	AUDIO_RAW_FREQ $00, $b0, 1
	AUDIO_RAW_FREQ $00, $c0, 1
	AUDIO_RAW_FREQ $00, $d0, 1
	AUDIO_RAW_FREQ $00, $f0, 1
	.DB CMD_END_TRACK

audio_track_data_ball_out:
	.DB 3
	CHANNEL_HEADER $88, $20, 1, @channel_1, $03, $00, $04, $0f
	CHANNEL_HEADER $88, $21, 1, @channel_2, $03, $01, $03, $0d
	CHANNEL_HEADER $88, $22, 1, @channel_3, $00, $02, $02, $0b
@channel_1:
	.DB CMD_SET_VOLUME, $0e
	AUDIO_RAW_FREQ $00, $60, 1
	AUDIO_RAW_FREQ $00, $58, 1
	AUDIO_RAW_FREQ $00, $50, 1
	AUDIO_RAW_FREQ $00, $00, 2
	.DB CMD_SET_VOLUME, $0d
	AUDIO_RAW_FREQ $00, $80, 1
	AUDIO_RAW_FREQ $00, $90, 1
	AUDIO_RAW_FREQ $00, $c0, 1
	AUDIO_RAW_FREQ $00, $d0, 1
	AUDIO_RAW_FREQ $00, $f0, 1
	AUDIO_RAW_FREQ $00, $00, 2
	.DB CMD_SET_VOLUME, $0b
	AUDIO_RAW_FREQ $01, $10, 1
	AUDIO_RAW_FREQ $01, $20, 1
	AUDIO_RAW_FREQ $01, $40, 1
	AUDIO_RAW_FREQ $01, $70, 1
	.DB CMD_END_TRACK
@channel_2:
	.DB CMD_SET_VOLUME, $0d
	AUDIO_RAW_FREQ $00, $70, 1
	AUDIO_RAW_FREQ $00, $68, 1
	AUDIO_RAW_FREQ $00, $60, 1
	AUDIO_RAW_FREQ $00, $00, 2
	.DB CMD_SET_VOLUME, $0b
	AUDIO_RAW_FREQ $00, $90, 1
	AUDIO_RAW_FREQ $00, $a0, 1
	AUDIO_RAW_FREQ $00, $d0, 1
	AUDIO_RAW_FREQ $00, $e0, 1
	AUDIO_RAW_FREQ $01, $00, 1
	AUDIO_RAW_FREQ $00, $00, 2
	.DB CMD_SET_VOLUME, $0a
	AUDIO_RAW_FREQ $01, $20, 1
	AUDIO_RAW_FREQ $01, $30, 1
	AUDIO_RAW_FREQ $01, $50, 1
	AUDIO_RAW_FREQ $01, $80, 1
	.DB CMD_END_TRACK
@channel_3:
	.DB CMD_SET_VOLUME, $0d
	AUDIO_RAW_FREQ $00, $80, 1
	AUDIO_RAW_FREQ $00, $78, 1
	AUDIO_RAW_FREQ $00, $70, 1
	AUDIO_RAW_FREQ $00, $00, 2
	.DB CMD_SET_VOLUME, $0b
	AUDIO_RAW_FREQ $00, $a0, 1
	AUDIO_RAW_FREQ $00, $b0, 1
	AUDIO_RAW_FREQ $00, $e0, 1
	AUDIO_RAW_FREQ $01, $00, 1
	AUDIO_RAW_FREQ $01, $20, 1
	AUDIO_RAW_FREQ $00, $00, 2
	.DB CMD_SET_VOLUME, $0a
	AUDIO_RAW_FREQ $01, $40, 1
	AUDIO_RAW_FREQ $01, $50, 1
	AUDIO_RAW_FREQ $01, $70, 1
	AUDIO_RAW_FREQ $01, $a0, 1
	.DB CMD_END_TRACK

audio_track_data_sound_fault:
	.DB 3
	CHANNEL_HEADER $a8, $20, 2, @channel_1, $00, $00, $04, $0d
	CHANNEL_HEADER $a8, $21, 2, @channel_2, $00, $01, $04, $0e
	CHANNEL_HEADER $a8, $22, 2, @channel_3, $00, $00, $03, $0d
@channel_1:
	AUDIO_RAW_FREQ_SLIDE $00, $67, $00, $5e, 6
	AUDIO_RAW_FREQ_SLIDE $00, $c0, $01, $f0, 3
	AUDIO_RAW_FREQ_SLIDE $00, $d0, $01, $f0, 4
	.DB CMD_END_TRACK
@channel_2:
	AUDIO_RAW_FREQ_SLIDE $00, $66, $00, $54, 6
	AUDIO_RAW_FREQ_SLIDE $00, $90, $00, $f6, 3
	AUDIO_RAW_FREQ_SLIDE $00, $c0, $00, $f0, 2
	.DB CMD_END_TRACK
@channel_3:
	AUDIO_RAW_FREQ_SLIDE $00, $60, $00, $43, 6
	AUDIO_RAW_FREQ_SLIDE $00, $90, $00, $c0, 7
	.DB CMD_END_TRACK

l785dh:
	.DB 3
	CHANNEL_HEADER $a8, $20, 2, @channel_1, $03, $00, $05, $0b
	CHANNEL_HEADER $a8, $21, 2, @channel_2, $03, $01, $03, $0e
	CHANNEL_HEADER $a8, $22, 2, @channel_3, $03, $00, $03, $0d
@channel_1:
	AUDIO_RAW_FREQ_SLIDE $00, $35, $00, $26, 4
	AUDIO_RAW_FREQ_SLIDE $00, $00, $00, $00, 4
	AUDIO_RAW_FREQ_SLIDE $00, $50, $00, $60, 3
	.DB CMD_END_TRACK
@channel_2:
	AUDIO_RAW_FREQ_SLIDE $00, $50, $00, $37, 6
	AUDIO_RAW_FREQ_SLIDE $00, $00, $00, $00, 2
	AUDIO_RAW_FREQ_SLIDE $00, $80, $00, $e0, 3
	.DB CMD_END_TRACK
@channel_3:
	AUDIO_RAW_FREQ_SLIDE $00, $80, $00, $10, 6
	AUDIO_RAW_FREQ_SLIDE $00, $00, $00, $00, 2
	AUDIO_RAW_FREQ_SLIDE $00, $70, $00, $40, 3
	.DB CMD_END_TRACK

l78a9h:
	.DB 3
	CHANNEL_HEADER $a8, $20, 2, @channel_1, $03, $00, $05, $0f
	CHANNEL_HEADER $a8, $21, 2, @channel_2, $03, $01, $04, $08
	CHANNEL_HEADER $a8, $22, 2, @channel_3, $03, $00, $06, $09
@channel_1:
	AUDIO_RAW_FREQ_SLIDE $00, $40, $00, $32, 6
	AUDIO_RAW_FREQ_SLIDE $00, $40, $00, $60, 3
	.DB CMD_END_TRACK
@channel_2:
	AUDIO_RAW_FREQ_SLIDE $00, $60, $00, $40, 6
	AUDIO_RAW_FREQ_SLIDE $00, $60, $00, $98, 3
	.DB CMD_END_TRACK
@channel_3:
	AUDIO_RAW_FREQ_SLIDE $00, $50, $02, $80, 6
	AUDIO_RAW_FREQ_SLIDE $00, $a0, $00, $f0, 3
	.DB CMD_END_TRACK

audio_track_data_sound_ball_wall:
	.DB 2
	CHANNEL_HEADER $a8, $21, 4, @channel_1, $03, $01, $01, $0e
	CHANNEL_HEADER $a8, $22, 1, @channel_2, $00, $00, $06, $0d
@channel_1:
	AUDIO_RAW_FREQ_SLIDE $01, $00, $01, $02, 4
	.DB CMD_END_TRACK
@channel_2:
	AUDIO_RAW_FREQ_SLIDE $00, $f8, $00, $fb, 4
	.DB CMD_END_TRACK

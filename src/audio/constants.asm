.equ PORT_PSG $7f

.STRUCT psg_engine_t
	track_request_id DB		;de00
	state DB		;de01
	tempo_countdown DB		;de02
	priority_flag DB		;de03
	_unknown DB		;de04
.ENDST

.equ PSG_CHANNELS 7

.STRUCT psg_channel_t
	status_flags DB			;00
	psg_channel_map DB		;01
	note_length_multiplier DB		;02
	track_data_pointer DW		;03
	transpose_offset DB		;05
	effect_timer DB		;06
	envelope_id_pointer DB		;07
	base_volume DB			;08
	_unknown_0 DB			;09
	target_duration DW		;0a
	current_tick DW			;0c
	volume_envelope_index DB		;0e
	pitch_envelope_index DB		;0f
	base_frequency DW		;10
	final_frequency DW		;12
	slide_target_frequency_low DB		;14
	slide_target_frequency_high DB		;15
	current_volume DB		;16
	_unknown_1 DSB 9		;17
.ENDST

.ENUM $de00
	psg_engine INSTANCEOF psg_engine_t		;de00
	psg_channel INSTANCEOF psg_channel_t PSG_CHANNELS		;de05 de25 de45 de65 de85 dea5 dec5
.ENDE

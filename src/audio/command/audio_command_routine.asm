audio_command_routine:
	.DW audio_command_routine_set_tempo		;7cee
	.DW audio_command_routine_set_volume		;7cf0
	.DW audio_command_routine_end_track		;7cf2
	.DW audio_command_routine_psg_noise		;7cf4
	.DW audio_command_routine_set_instrument		;7cf6
	.DW audio_command_routine_goto		;7cf8
	.DW audio_command_routine_stop_alt		;7cfa
	.DW audio_command_routine_stop_sfx		;7cfc
	.DW audio_command_routine_stop_sfx		;7cfe
	.DW audio_command_routine_stop_sfx		;7d00
	.DW audio_command_routine_call		;7d02
	.DW audio_command_routine_return		;7d04
	.DW audio_command_routine_loop		;7d06
	.DW audio_command_routine_set_effect		;7d08
	.DW audio_command_routine_add_transpose		;7d0a
	.DW audio_command_routine_stop_sfx		;7d0c

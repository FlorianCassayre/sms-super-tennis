.STRUCT game_settings_t
	speed_level DB
	control_level DB
	player_type DB
	computer_level DB
.ENDST

.ENUM $c047
	game_settings INSTANCEOF game_settings_t
.ENDE

.STRUCT gui_t
	cursor_y DB		;c491
	_unknown_0 DB		;c492
	joystick DB		;c493
	joystick_previous DB		;c494
	_unknown_1 DB		;c495
	tick_counter DB		;c496
.ENDST

.ENUM $c491
	gui INSTANCEOF gui_t
.ENDE

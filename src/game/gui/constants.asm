.STRUCT game_settings
	speed_level DB
	control_level DB
	player_type DB
	computer_level DB
.ENDST

.equ GUI_GAME_SETTINGS $c047

.equ GUI_CURSOR_Y $c491

.equ GUI_JOYSTICK $c493
.equ GUI_JOYSTICK_PREVIOUS $c494

.equ GUI_TICK_COUNTER $c496

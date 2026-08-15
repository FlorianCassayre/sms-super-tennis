.STRUCT ball_t
	z_pos DW		; $c500
	z_gravity DW		; $c502
	_unknown_0 DW		; $c504
	z_vel DW		; $c506
	y_pos DW		; $c508
	x_pos DW		; $c50a
	y_vel DW		; $c50c
	x_vel DW		; $c50e
	_unknown_1 DSB 6		; $c510
	racket_contact_flag DB		; $c516
	bounces_count DB		; $c517
	foul_type DB		; $c518
	foul_triggered_flag DB ; $c519
	deflection_temp DB	; $c51a
	tie_break_switch_sides DB	; $c51b
	tie_break_saved_server DB	; $c51c
	out_flag DB	; $c51d
.ENDST

.ENUM $c500
	ball INSTANCEOF ball_t
.ENDE

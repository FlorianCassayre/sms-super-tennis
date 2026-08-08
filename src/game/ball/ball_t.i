.STRUCT ball_t
	z_pos DW		; $c500
	z_gravity DW		; $c502
	_unknown_0 DW		; $c504
	z_vel DW		; $c506
	y_pos DW		; $c508
	x_pos DW		; $c50a
	y_vel DW		; $c50c
	x_vel DW		; $c50e
	_unknown_1 DSB 7		; $c510
	state DB		; $c517
.ENDST

.ENUM $c500
	ball INSTANCEOF ball_t
.ENDE

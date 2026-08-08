.STRUCT state_t
	_unknown_0 DSB 16
	hardware_type DB	;c010
.ENDST

.ENUM $c000
	state INSTANCEOF state_t
.ENDE

.STRUCT state_t
	match_state_flags DB	;c000
	_unknown_0 DSB 15
	hardware_type DB	;c010
	_unknown_1 DSB 47
	hit_flags DB	;c040
	shot_type DB	;c041
	last_hit_player_id DB	;c042
.ENDST

.ENUM $c000
	state INSTANCEOF state_t
.ENDE

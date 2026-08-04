.equ MATCH_STATE_FLAG       $C044   ; Global state (serve quadrant?)

.STRUCT score_set_t
	top DB
	bottom DB
.ENDST

.STRUCT score_point_t
	bottom DB
	top DB
.ENDST

.STRUCT score_t
	set INSTANCEOF score_set_t 3		;c482
	point INSTANCEOF score_point_t		;c488
	set_current_index DB		;c48a
	point_fault_flag DB		;c48b
.ENDST

.ENUM $c482
	score INSTANCEOF score_t
.ENDE

.equ WINNER_PLAYER $c497
.equ SCORE_DELAY_TIMER $c49d
.equ SCORE_BLINKING_SET_VRAM_ADDR $c4a0
.equ SCORE_BLINKING_SET_FRAME_COUNTER $c4a4

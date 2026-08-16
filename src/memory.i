.ENUM $c000
	state INSTANCEOF state_t
.ENDE

.ENUM $c040
	game INSTANCEOF game_t
.ENDE

.ENUM $c1c0
	joy INSTANCEOF joy_t 2	; c1c0 c1c1 c1c2 c1c3
.ENDE

.ENUM $c200
	entities INSTANCEOF entities_t		; $c200 $c240 $c280 $c2c0 $c300 $c340
.ENDE

.ENUM $c480
	score INSTANCEOF score_t
.ENDE

.ENUM $c500
	ball INSTANCEOF ball_t
.ENDE

.ENUM $c720
	data INSTANCEOF data_t
.ENDE

.ENUM $de00
	psg_engine INSTANCEOF audio_psg_engine_t		;de00
	psg_channel INSTANCEOF audio_psg_channel_t PSG_CHANNELS		;de05 de25 de45 de65 de85 dea5 dec5
.ENDE

.ENUM $dffe
	stack_bottom DW	; Note: stack grows downwards
.ENDE

sub_game_tick:
	ld a,(ball.foul_type)
	or a
	jr nz,sub_0b28h
.INCLUDE "game/game_frame_update.asm"

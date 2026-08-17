sub_game_tick:
	ld a,(ball.foul_type)		;0b18
	or a			;0b1b
	jr nz,sub_0b28h		;0b1c
.INCLUDE "game/game_frame_update.asm"

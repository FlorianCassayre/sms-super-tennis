sub_game_tick:
	ld a,(ball.foul_type)
	or a
	jr nz,sub_game_umpire_check_announcement
.INCLUDE "game/game_frame_update.asm"

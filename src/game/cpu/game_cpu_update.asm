sub_game_cpu_update:
	ld a,(ix + entity_t.id)
	and 003h
	ld e,a
	ld d,000h
	ld hl,game_cpu_partner_offset
	add hl,de
	ld e,(hl)
	ld hl,entities.player
	add hl,de
	push hl
	pop iy
	ld a,(ix + entity_t.cpu_state)
	and $0f
	ld hl,game_cpu_state
	jp game_fsm

.INCLUDE "game/cpu/state/game_cpu_state.asm"
.INCLUDE "game/cpu/state/game_cpu_partner_offset.asm"
.INCLUDE "game/cpu/state/game_cpu_state_track_ball.asm"
.INCLUDE "game/cpu/state/game_cpu_state_serve_wait.asm"
.INCLUDE "game/cpu/state/game_cpu_state_net.asm"
.INCLUDE "game/cpu/state/game_cpu_state_baseline_attack.asm"
.INCLUDE "game/cpu/state/game_cpu_state_return_center.asm"
.INCLUDE "game/cpu/state/game_cpu_state_wait.asm"
.INCLUDE "game/cpu/state/game_cpu_state_baseline_defense.asm"
.INCLUDE "game/cpu/state/game_cpu_state_doubles_cover_1.asm"
.INCLUDE "game/cpu/state/game_cpu_state_doubles_cover_2.asm"
.INCLUDE "game/cpu/state/game_cpu_state_idle_wander.asm"
.INCLUDE "game/cpu/state/game_cpu_state_smash.asm"

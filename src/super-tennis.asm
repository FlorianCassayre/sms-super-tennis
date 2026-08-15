; --- generated header ---
.MEMORYMAP
    SLOTSIZE $8000
    SLOT 0 $0000
    DEFAULTSLOT 0
.ENDME
.ROMBANKMAP
    BANKSTOTAL 1
    BANKSIZE $8000
    BANKS 1
.ENDRO
; --- end generated header ---
; z80dasm 1.1.6
; command line: z80dasm -g 0x0000 -a -l super-tennis-usa-europe.sms

	.ORGA	00000h

.INCLUDE "definitions.i"

start:
	jp init		;0000
.INCLUDE "game/court/game_court_palette.asm"
	.DB $30		;0023
	.DB $0f		;0024
	.DB $07		;0025
	.DB $02		;0026
	.DB $00		;0027
	.DB $00		;0028
	.DB $00		;0029
	.DB $00		;002a
	.DB $00		;002b
	.DB $3f		;002c
	.INCLUDE "graphics/palette/l002dh_palette.asm"
	.DSB 9 $ff		;002f
l0038h_interrupt:
	jp isr_vblank_update		;0038
	.ASSERT l0038h_interrupt == $0038, LDERROR
	.INCLUDE "hardware/hardware_vdp_initial_register_values.asm"
	.DSB 5 $00		;0051
	.DSB 16 $ff		;0056
	.INCLUDE "io/pause_handler.asm"
	.INCLUDE "init.asm"
	.INCLUDE "graphics/delay_vdp.asm"
	.INCLUDE "graphics/palette/graphics_palette_secondary_update_conditionally_first.asm"
	.INCLUDE "io/027bh_joy.asm"
	.INCLUDE "audio/event/audio_event_wait.asm"
	.INCLUDE "audio/event/audio_idle_wait.asm"
	.INCLUDE "graphics/tile/blank_tile_data.asm"
	.INCLUDE "graphics/sprite/sprite_y_position_hidden.asm"
	.INCLUDE "graphics/name/graphics_name_fill_blank_tile.asm"
	.INCLUDE "graphics/display.asm"
	.INCLUDE "graphics/decrement_pause_counter.asm"
	.INCLUDE "graphics/upload_vram_chunks.asm"
	.INCLUDE "math/prng.asm"
	.INCLUDE "math/mul_h_e_impl.asm" ; Duplicated
	.INCLUDE "math/mul_de_bc.asm"
	.INCLUDE "math/div_hl_de_bc.asm"
	.INCLUDE "graphics/set_vdp_write_addr.asm"
	.INCLUDE "graphics/cp_ram_vram.asm"
	.INCLUDE "graphics/vram_fill_byte.asm"
	.INCLUDE "graphics/vram_fill_word.asm"
	.INCLUDE "graphics/load_vram_rect.asm"
	.INCLUDE "graphics/palette/graphics_palette_load.asm"
	.INCLUDE "graphics/tile/graphics_tile_expand_1bpp_ram_to_vdp.asm"
	.INCLUDE "algorithm/rle_decompress_bitplanes.asm"
	.INCLUDE "game/entity/game_entity_render_all.asm"
	.INCLUDE "game/entity/game_entity_render_one.asm"
	.INCLUDE "graphics/sprite/graphics_sprite_clean_unused.asm"
	.INCLUDE "game/entity/game_entity_y_ordering.asm"
	.INCLUDE "game/entity/game_entity_animation_update_frame.asm"
	.INCLUDE "game/ball/game_ball_shadow_update_sizes.asm"
	.INCLUDE "game/entity/game_entity_update_all.asm"
	.INCLUDE "io/joy_debounce.asm"
	.INCLUDE "game/game_fsm.asm"
	.INCLUDE "game/gui/l0811h.asm"
	.INCLUDE "game/gui/game_gui_splash_draw.asm"
	.INCLUDE "game/init_tennis_court.asm"
	.INCLUDE "game/reset_state.asm"
	.INCLUDE "game/draw_settings_menu.asm"
	.INCLUDE "game/gui/handle_gui_control.asm"
	.INCLUDE "graphics/vdp_build_sprite_buffer.asm"
	.INCLUDE "graphics/sprite/graphics_sprite_apply_xy_offset.asm"
	.INCLUDE "math/mul_a_c_add_b.asm"
	.INCLUDE "graphics/draw_0abd_tennis_court.asm"
	.INCLUDE "game/game_tick.asm"
	.INCLUDE "game/0b28h.asm"
	.INCLUDE "game/game_prepare_serve.asm"
	.INCLUDE "game/l0c67h.asm"
	.INCLUDE "game/umpire/game_umpire_announcement.asm"
	.INCLUDE "game/gui/l0dd0h.asm"
	.INCLUDE "game/umpire/l0e00h.asm"
	.INCLUDE "game/ball/game_ball_check_out_of_bounds_bounce.asm"
	.INCLUDE "game/ball/update_ball_out_of_bounds.asm"
	.INCLUDE "game/init_splash_screen.asm"
	.INCLUDE "graphics/palette/graphics_palette_swap_flags.asm"
	.INCLUDE "graphics/l0f02h.asm"
	.INCLUDE "game/ball/game_ball_normal_update.asm"
	.INCLUDE "game/ball/game_ball_shadow_update.asm"
	.INCLUDE "game/ball/game_ball_toss_update.asm"
	.INCLUDE "game/ball/game_ball_serve_perspective_update.asm"
	.INCLUDE "game/l101h_racket_hit.asm"
	.INCLUDE "game/l11b1h_racket_hit.asm"
	.INCLUDE "game/l1227h.asm"
	.INCLUDE "game/l126ch_ball_high.asm"
	.INCLUDE "game/l12deh_racket_hit.asm"
	.INCLUDE "game/ball/l1362h_ball.asm"
	.INCLUDE "game/ball/load_ball_z_gravity.asm"
	.INCLUDE "game/ball/compute_ball_x_velocity.asm"
	.INCLUDE "game/ball/game_ball_update_physics.asm"
	.INCLUDE "game/ball/game_ball_sprite_perspective_x.asm"
	.INCLUDE "game/ball/game_ball_update_velocity_bounce.asm"
	.INCLUDE "game/ball/game_ball_compute_horizontal_deflection.asm"
	.INCLUDE "game/ball/game_ball_update_velocity_collision.asm"
	.INCLUDE "physics/l1769h.asm"
	.INCLUDE "game/player/l1775h.asm"
	.INCLUDE "game/player/check_player_location.asm"
	.INCLUDE "game/17f1h_aabb.asm"
	.INCLUDE "physics/1806h_bound_check.asm"
	.INCLUDE "physics/classify_zone.asm"
	.INCLUDE "game/player/player_ball_collision.asm"
	.INCLUDE "game/player/game_player_update_server_state.asm"
	.INCLUDE "game/player/1af2.asm"
	.INCLUDE "game/player/1b68h.asm"
	.INCLUDE "game/1b9fh_decrement_timer.asm"
	.INCLUDE "game/player/1bafh_nop.asm"
	.INCLUDE "game/player/game_player_init_top.asm"
	.INCLUDE "game/player/game_player_action_update_top.asm"
	.INCLUDE "game/player/l1c4ah_jump_table.asm"
	.INCLUDE "game/player/1d89.asm"
	.INCLUDE "game/cpu/game_cpu_update.asm"
	.INCLUDE "physics/221eh_collision_broad.asm"
	.INCLUDE "physics/l2290h.asm"
	.INCLUDE "physics/2298h_collision.asm"
	.INCLUDE "math/neg_hl.asm"
	.INCLUDE "game/cpu/game_cpu_evaluate_y_dist_1.asm"
	.INCLUDE "game/cpu/238dh.asm"
	.INCLUDE "game/cpu/game_cpu_evaluate_y_dist_2.asm"
	.INCLUDE "game/player/game_player_init_bottom.asm"
	.INCLUDE "game/player/game_player_update.asm"
	.INCLUDE "game/player/game_player_read_input.asm"
	.INCLUDE "game/player/game_player_apply_movement.asm"
	.INCLUDE "game/player/game_player_joypad_poll.asm"
	.INCLUDE "game/player/player_movement.asm"
	.INCLUDE "game/player/apply_player_movement.asm"
	.INCLUDE "game/level/game_level_speed_base_table.asm"
	.INCLUDE "game/level/game_level_control_boost_table.asm"
	.INCLUDE "game/level/game_level_cpu_velocity_table.asm"
	.INCLUDE "game/player/game_player_update_animation.asm"
	.INCLUDE "data/animation_table.asm"
	.INCLUDE "game/racket/game_racket_update_hitbox.asm"
	.INCLUDE "game/racket/game_racket_evaluate_swing_type.asm"
	.INCLUDE "game/racket/game_racket_process_swing_contact.asm"
	.INCLUDE "math/abs10.asm"
	.INCLUDE "game/ball/game_ball_trajectory_data.asm"
	.INCLUDE "game/entity/game_entity_calculate_court_perspective.asm"
	.INCLUDE "math/div_a_b_c.asm"
	.INCLUDE "game/umpire/game_umpire_event_process.asm"
	.INCLUDE "game/score/update_score_points.asm"
	.INCLUDE "math/div10.asm"
	.INCLUDE "graphics/tile/graphics_tile_draw_sequential_row.asm"
	.INCLUDE "game/score/update_set_scores.asm"
	.INCLUDE "graphics/draw_game_end.asm"
	.INCLUDE "graphics/3457h_clean_vram.asm"
	.INCLUDE "graphics/draw_game_end_line.asm"
	.INCLUDE "game/gui/game_gui_draw_typewriter_match_end.asm"
	.INCLUDE "game/gui/text/gui_text_game_set_match.asm"
	.INCLUDE "game/gui/text/gui_text_win.asm"
	.INCLUDE "game/gui/text/gui_text_lost.asm"
	.INCLUDE "graphics/3543h.asm"
	.INCLUDE "game/update_announcement_timer.asm"
	.INCLUDE "graphics/load_vram_rect_dynamic.asm"
	.INCLUDE "game/player/game_player_palette_load_clothes.asm"
	.INCLUDE "graphics/wait_a_frames.asm"
	.INCLUDE "game/delay_loop.asm"
	.INCLUDE "game/gui/game_gui_win_special.asm"
	.INCLUDE "game/gui/text/gui_text_win_special.asm"
	.INCLUDE "game/gui/game_gui_win_special_tile_eye.asm"
data_tiles_2:
	.INCLUDE "tiles/tiles_2.asm"
data_planes_0_0:
	.INCLUDE "tiles/planes_0_0.asm"
	.INCLUDE "tiles/planes_0_1.asm"
	.INCLUDE "tiles/planes_0_2.asm"
	.INCLUDE "tiles/planes_0_3.asm"
	.INCLUDE "game/gui/game_gui_splash_palette_primary.asm"
	.INCLUDE "game/gui/game_gui_splash_palette_secondary.asm"
data_planes_1_0:
	.INCLUDE "tiles/planes_1_0.asm"
	.INCLUDE "tiles/planes_1_1.asm"
	.INCLUDE "tiles/planes_1_2.asm"
	.INCLUDE "tiles/planes_1_3.asm"
data_tiles_1_super:
	.INCLUDE "tiles/tiles_1_super.asm"
data_planes_2_0:
	.INCLUDE "tiles/planes_2_0.asm"
	.INCLUDE "tiles/planes_2_1.asm"
	.INCLUDE "tiles/planes_2_2.asm"
	.INCLUDE "tiles/planes_2_3.asm"
	.INCLUDE "data/chunks_0.asm"
	.INCLUDE "game/gui/l40f0h_name_table.asm"
	.INCLUDE "hardware/hardware_self_test.asm"
	.INCLUDE "data/unknown_table_0.asm"
	.INCLUDE "graphics/sprite/l489bh_sprite_attributes.asm"
	.INCLUDE "data/animation_frames.asm"
data_planes_3_0:
	.INCLUDE "tiles/planes_3_0.asm"
	.INCLUDE "tiles/planes_3_1.asm"
	.INCLUDE "tiles/planes_3_2.asm"
	.INCLUDE "tiles/planes_3_3.asm"
data_planes_4_0:
	.INCLUDE "tiles/planes_4_0.asm"
	.INCLUDE "tiles/planes_4_1.asm"
	.INCLUDE "tiles/planes_4_2.asm"
	.INCLUDE "tiles/planes_4_3.asm"
data_planes_5_0:
	.INCLUDE "tiles/planes_5_0.asm"
	.INCLUDE "tiles/planes_5_1.asm"
	.INCLUDE "tiles/planes_5_2.asm"
	.INCLUDE "tiles/planes_5_3.asm"
data_planes_6_0:
	.INCLUDE "tiles/planes_6_0.asm"
	.INCLUDE "tiles/planes_6_1.asm"
	.INCLUDE "tiles/planes_6_2.asm"
data_planes_7_0:
	.INCLUDE "tiles/planes_7_0.asm"
	.INCLUDE "tiles/planes_7_1.asm"
data_planes_7_2:
	.INCLUDE "tiles/planes_7_2.asm"
	.INCLUDE "tiles/planes_7_3.asm"
	.INCLUDE "tiles/planes_7_4.asm"
	.INCLUDE "tiles/planes_7_5.asm"
	.INCLUDE "graphics/unknown_word.asm"
data_planes_8_0:
	.INCLUDE "tiles/planes_8_0.asm"
	.INCLUDE "tiles/planes_8_1.asm"
	.INCLUDE "tiles/planes_8_2.asm"
	.INCLUDE "tiles/planes_8_3.asm"
data_planes_9_0:
	.INCLUDE "tiles/planes_9_0.asm"
	.INCLUDE "tiles/planes_9_1.asm"
	.INCLUDE "tiles/planes_9_2.asm"
	.INCLUDE "tiles/planes_9_3.asm"
data_planes_10_0:
	.INCLUDE "tiles/planes_10_0.asm"
	.INCLUDE "tiles/planes_10_1.asm"
	.INCLUDE "tiles/planes_10_2.asm"
	.INCLUDE "tiles/planes_10_3.asm"
data_planes_11_0:
	.INCLUDE "tiles/planes_11_0.asm"
	.INCLUDE "tiles/planes_11_1.asm"
	.INCLUDE "tiles/planes_11_2.asm"
	.INCLUDE "tiles/planes_11_3.asm"
	.IFDEF _J
	    .INCLUDE "audio/audio.asm"
	.ENDIF
	.INCLUDE "audio/audio_data.asm"
	.IFDEF _UE
		.INCLUDE "audio/audio.asm"
	.ENDIF
	.INCLUDE "padding.asm"
	.INCLUDE "header.asm"

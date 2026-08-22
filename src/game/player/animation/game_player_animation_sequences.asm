game_player_animation_sequence_bottom_1_left_await:
	.DB 2
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_1_left_await_0, 50
	.DB entity_animation_frame_t.frame_bottom_1_left_await_1, 50

game_player_animation_sequence_bottom_1_right_await:
	.DB 2
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_1_right_await_0, 50
	.DB entity_animation_frame_t.frame_bottom_1_right_await_1, 50

game_player_animation_sequence_bottom_1_right_stand:
	.DB 1
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_1_right_walk_0, 1

game_player_animation_sequence_bottom_1_right_walk:
	.DB 2
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_1_right_walk_0, 4
	.DB entity_animation_frame_t.frame_bottom_1_right_walk_1, 4

game_player_animation_sequence_bottom_1_left_stand:
	.DB 1
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_1_left_walk_0, 1

game_player_animation_sequence_bottom_1_left_walk:
	.DB 2
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_1_left_walk_0, 4
	.DB entity_animation_frame_t.frame_bottom_1_left_walk_1, 4

game_player_animation_sequence_bottom_1_right_stroke:
	.DB 5
	.DB %00000100
	.DB $0b
	.DB $03
	.DB $01

	.DB entity_animation_frame_t.frame_bottom_1_right_09, 3
	.DB entity_animation_frame_t.frame_bottom_1_right_04, 5
	.DB entity_animation_frame_t.frame_bottom_1_right_0a, 5
	.DB entity_animation_frame_t.frame_bottom_1_right_0b, 5
	.DB entity_animation_frame_t.frame_bottom_1_right_0c, 10

game_player_animation_sequence_bottom_1_left_stroke:
	.DB 5
	.DB %00000100
	.DB $0b
	.DB $03
	.DB $02

	.DB entity_animation_frame_t.frame_bottom_1_left_0d, 3
	.DB entity_animation_frame_t.frame_bottom_1_left_05, 5
	.DB entity_animation_frame_t.frame_bottom_1_left_0e, 5
	.DB entity_animation_frame_t.frame_bottom_1_left_0f, 5
	.DB entity_animation_frame_t.frame_bottom_1_left_10, 10

game_player_animation_sequence_bottom_1_right_lob:
	.DB 5
	.DB %00000100
	.DB $0b
	.DB $03
	.DB $03

	.DB entity_animation_frame_t.frame_bottom_1_right_09, 3
	.DB entity_animation_frame_t.frame_bottom_1_right_04, 5
	.DB entity_animation_frame_t.frame_bottom_1_right_0a, 5
	.DB entity_animation_frame_t.frame_bottom_1_right_0b, 5
	.DB entity_animation_frame_t.frame_bottom_1_right_19, 10

game_player_animation_sequence_bottom_1_left_lob:
	.DB 5
	.DB %00000100
	.DB $0b
	.DB $03
	.DB $04

	.DB entity_animation_frame_t.frame_bottom_1_left_0d, 3
	.DB entity_animation_frame_t.frame_bottom_1_left_05, 5
	.DB entity_animation_frame_t.frame_bottom_1_left_0e, 5
	.DB entity_animation_frame_t.frame_bottom_1_left_0f, 5
	.DB entity_animation_frame_t.frame_bottom_1_left_1a, 10

game_player_animation_sequence_bottom_1_right_05:
	.DB 4
	.DB %00000100
	.DB $0b
	.DB $03
	.DB $05

	.DB entity_animation_frame_t.frame_bottom_1_right_09, 5
	.DB entity_animation_frame_t.frame_bottom_1_right_04, 5
	.DB entity_animation_frame_t.frame_bottom_1_right_0a, 3
	.DB entity_animation_frame_t.frame_bottom_1_right_0b, 10

game_player_animation_sequence_bottom_1_left_volley:
	.DB 5
	.DB %00000100
	.DB $0b
	.DB $03
	.DB $06

	.DB entity_animation_frame_t.frame_bottom_1_left_0d, 5
	.DB entity_animation_frame_t.frame_bottom_1_left_05, 5
	.DB entity_animation_frame_t.frame_bottom_1_left_06, 3
	.DB entity_animation_frame_t.frame_bottom_1_left_1b, 3
	.DB entity_animation_frame_t.frame_bottom_1_left_1c, 10

game_player_animation_sequence_bottom_1_serve_ready:
	.DB 1
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_1_serve_ready, 1

game_player_animation_sequence_bottom_1_serve_tossed:
	.DB 1
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_1_serve_tossed, 1

game_player_animation_sequence_bottom_1_serve_hit:
	.DB 4
	.DB %00000110
	.DB $0f
	.DB $04
	.DB $07

	.DB entity_animation_frame_t.frame_bottom_1_serve_hit_0, 5
	.DB entity_animation_frame_t.frame_bottom_1_serve_hit_1, 4
	.DB entity_animation_frame_t.frame_bottom_1_serve_hit_2, 4
	.DB entity_animation_frame_t.frame_bottom_1_serve_hit_3, 8

game_player_animation_sequence_bottom_1_right_volley:
	.DB 5
	.DB %00000101
	.DB $0b
	.DB $03
	.DB $08

	.DB entity_animation_frame_t.frame_bottom_1_right_09, 5
	.DB entity_animation_frame_t.frame_bottom_1_serve_hit_0, 5
	.DB entity_animation_frame_t.frame_bottom_1_serve_hit_1, 4
	.DB entity_animation_frame_t.frame_bottom_1_serve_hit_2, 4
	.DB entity_animation_frame_t.frame_bottom_1_serve_hit_3, 8

game_player_animation_sequence_bottom_1_right_10:
	.DB 3
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_1_right_0a, 2
	.DB entity_animation_frame_t.frame_bottom_1_right_04, 2
	.DB entity_animation_frame_t.frame_bottom_1_right_walk_0, 2

game_player_animation_sequence_bottom_1_left_10:
	.DB 3
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_1_left_0e, 2
	.DB entity_animation_frame_t.frame_bottom_1_left_0d, 2
	.DB entity_animation_frame_t.frame_bottom_1_left_walk_0, 2

game_player_animation_sequence_bottom_1_left_turn:
	.DB 6
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_1_right_09, 1
	.DB entity_animation_frame_t.frame_bottom_1_right_0a, 1
	.DB entity_animation_frame_t.frame_bottom_1_right_0b, 1
	.DB entity_animation_frame_t.frame_bottom_1_left_0f, 1
	.DB entity_animation_frame_t.frame_bottom_1_left_0e, 1
	.DB entity_animation_frame_t.frame_bottom_1_left_0d, 1

game_player_animation_sequence_bottom_1_right_turn:
	.DB 6
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_1_left_0d, 1
	.DB entity_animation_frame_t.frame_bottom_1_left_0e, 1
	.DB entity_animation_frame_t.frame_bottom_1_left_0f, 1
	.DB entity_animation_frame_t.frame_bottom_1_right_0b, 1
	.DB entity_animation_frame_t.frame_bottom_1_right_0a, 1
	.DB entity_animation_frame_t.frame_bottom_1_right_09, 1

game_player_animation_sequence_bottom_2_left_await:
	.DB 2
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_2_left_await_0, 50
	.DB entity_animation_frame_t.frame_bottom_2_left_await_1, 50

game_player_animation_sequence_bottom_2_right_await:
	.DB 2
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_2_right_await_0, 50
	.DB entity_animation_frame_t.frame_bottom_2_right_await_1, 50

game_player_animation_sequence_bottom_2_right_stand:
	.DB 1
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_2_right_walk_0, 1

game_player_animation_sequence_bottom_2_right_walk:
	.DB 2
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_2_right_walk_0, 4
	.DB entity_animation_frame_t.frame_bottom_2_right_walk_1, 4

game_player_animation_sequence_bottom_2_left_stand:
	.DB 1
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_2_left_walk_0, 1

game_player_animation_sequence_bottom_2_left_walk:
	.DB 2
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_2_left_walk_0, 4
	.DB entity_animation_frame_t.frame_bottom_2_left_walk_1, 4

game_player_animation_sequence_bottom_2_right_stroke:
	.DB 5
	.DB %00000100
	.DB $0b
	.DB $03
	.DB $01

	.DB entity_animation_frame_t.frame_bottom_2_right_26, 3
	.DB entity_animation_frame_t.frame_bottom_2_right_21, 5
	.DB entity_animation_frame_t.frame_bottom_2_right_10, 5
	.DB entity_animation_frame_t.frame_bottom_2_right_28, 5
	.DB entity_animation_frame_t.frame_bottom_2_right_29, 10

game_player_animation_sequence_bottom_2_left_stroke:
	.DB 5
	.DB %00000100
	.DB $0b
	.DB $03
	.DB $02

	.DB entity_animation_frame_t.frame_bottom_2_left_2a, 3
	.DB entity_animation_frame_t.frame_bottom_2_left_22, 5
	.DB entity_animation_frame_t.frame_bottom_2_left_2b, 5
	.DB entity_animation_frame_t.frame_bottom_2_left_2c, 5
	.DB entity_animation_frame_t.frame_bottom_2_left_2d, 10

game_player_animation_sequence_bottom_2_right_lob:
	.DB 5
	.DB %00000100
	.DB $0b
	.DB $03
	.DB $03

	.DB entity_animation_frame_t.frame_bottom_2_right_26, 3
	.DB entity_animation_frame_t.frame_bottom_2_right_21, 5
	.DB entity_animation_frame_t.frame_bottom_2_right_10, 5
	.DB entity_animation_frame_t.frame_bottom_2_right_28, 5
	.DB entity_animation_frame_t.frame_bottom_2_right_36, 10

game_player_animation_sequence_bottom_2_left_lob:
	.DB 5
	.DB %00000100
	.DB $0b
	.DB $03
	.DB $04

	.DB entity_animation_frame_t.frame_bottom_2_left_2a, 3
	.DB entity_animation_frame_t.frame_bottom_2_left_22, 5
	.DB entity_animation_frame_t.frame_bottom_2_left_2b, 5
	.DB entity_animation_frame_t.frame_bottom_2_left_2c, 5
	.DB entity_animation_frame_t.frame_bottom_2_left_37, 10

game_player_animation_sequence_bottom_2_right_05:
	.DB 4
	.DB %00000100
	.DB $0b
	.DB $03
	.DB $05

	.DB entity_animation_frame_t.frame_bottom_2_right_26, 3
	.DB entity_animation_frame_t.frame_bottom_2_right_21, 5
	.DB entity_animation_frame_t.frame_bottom_2_right_10, 5
	.DB entity_animation_frame_t.frame_bottom_2_right_28, 10

game_player_animation_sequence_bottom_2_left_volley:
	.DB 5
	.DB %00000100
	.DB $0b
	.DB $03
	.DB $06

	.DB entity_animation_frame_t.frame_bottom_2_left_2a, 3
	.DB entity_animation_frame_t.frame_bottom_2_left_22, 5
	.DB entity_animation_frame_t.frame_bottom_2_left_23, 5
	.DB entity_animation_frame_t.frame_bottom_2_left_38, 5
	.DB entity_animation_frame_t.frame_bottom_2_left_39, 10

game_player_animation_sequence_bottom_2_serve_ready:
	.DB 1
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_2_serve_ready, 1

game_player_animation_sequence_bottom_2_serve_tossed:
	.DB 1
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_2_serve_tossed, 1

game_player_animation_sequence_bottom_2_serve_hit:
	.DB 4
	.DB %00000110
	.DB $0f
	.DB $04
	.DB $07

	.DB entity_animation_frame_t.frame_bottom_2_serve_hit_0, 5
	.DB entity_animation_frame_t.frame_bottom_2_serve_hit_1, 4
	.DB entity_animation_frame_t.frame_bottom_2_serve_hit_2, 4
	.DB entity_animation_frame_t.frame_bottom_2_serve_hit_3, 8

game_player_animation_sequence_bottom_2_right_volley:
	.DB 5
	.DB %00000101
	.DB $0f
	.DB $04
	.DB $08

	.DB entity_animation_frame_t.frame_bottom_2_right_26, 5
	.DB entity_animation_frame_t.frame_bottom_2_serve_hit_0, 5
	.DB entity_animation_frame_t.frame_bottom_2_serve_hit_1, 4
	.DB entity_animation_frame_t.frame_bottom_2_serve_hit_2, 4
	.DB entity_animation_frame_t.frame_bottom_2_serve_hit_3, 8

game_player_animation_sequence_bottom_2_right_10:
	.DB 3
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_2_right_10, 2
	.DB entity_animation_frame_t.frame_bottom_2_right_21, 2
	.DB entity_animation_frame_t.frame_bottom_2_right_walk_0, 2

game_player_animation_sequence_bottom_2_left_10:
	.DB 3
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_2_left_2b, 2
	.DB entity_animation_frame_t.frame_bottom_2_left_22, 2
	.DB entity_animation_frame_t.frame_bottom_2_left_walk_0, 2

game_player_animation_sequence_bottom_2_left_turn:
	.DB 6
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_2_right_26, 1
	.DB entity_animation_frame_t.frame_bottom_2_right_10, 1
	.DB entity_animation_frame_t.frame_bottom_2_right_28, 1
	.DB entity_animation_frame_t.frame_bottom_2_left_2c, 1
	.DB entity_animation_frame_t.frame_bottom_2_left_2b, 1
	.DB entity_animation_frame_t.frame_bottom_2_left_2a, 1

game_player_animation_sequence_bottom_2_right_turn:
	.DB 6
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_bottom_2_left_2a, 1
	.DB entity_animation_frame_t.frame_bottom_2_left_2b, 1
	.DB entity_animation_frame_t.frame_bottom_2_left_2c, 1
	.DB entity_animation_frame_t.frame_bottom_2_right_28, 1
	.DB entity_animation_frame_t.frame_bottom_2_right_10, 1
	.DB entity_animation_frame_t.frame_bottom_2_right_26, 1

game_player_animation_sequence_top_await:
	.DB 2
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_top_await_0, 50
	.DB entity_animation_frame_t.frame_top_await_1, 50

game_player_animation_sequence_top_right_stand:
	.DB 1
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_top_right_walk_0, 1

game_player_animation_sequence_top_right_walk:
	.DB 2
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_top_right_walk_0, 4
	.DB entity_animation_frame_t.frame_top_right_walk_1, 4

game_player_animation_sequence_top_left_stand:
	.DB 1
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_top_left_walk_0, 1

game_player_animation_sequence_top_left_walk:
	.DB 2
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_top_left_walk_0, 4
	.DB entity_animation_frame_t.frame_top_left_walk_1, 4

game_player_animation_sequence_top_left_stroke:
	.DB 4
	.DB %00000000
	.DB $0b
	.DB $03
	.DB $09

	.DB entity_animation_frame_t.frame_top_left_3a, 3
	.DB entity_animation_frame_t.frame_top_left_3b, 3
	.DB entity_animation_frame_t.frame_top_left_3c, 3
	.DB entity_animation_frame_t.frame_top_left_3d, 8

game_player_animation_sequence_top_left_lob:
	.DB 4
	.DB %00000000
	.DB $0b
	.DB $03
	.DB $0a

	.DB entity_animation_frame_t.frame_top_left_3a, 3
	.DB entity_animation_frame_t.frame_top_left_3b, 3
	.DB entity_animation_frame_t.frame_top_left_3c, 3
	.DB entity_animation_frame_t.frame_top_left_3d, 8

game_player_animation_sequence_top_right_stroke:
	.DB 4
	.DB %00000000
	.DB $0b
	.DB $03
	.DB $0b

	.DB entity_animation_frame_t.frame_top_right_3e, 3
	.DB entity_animation_frame_t.frame_top_right_3f, 3
	.DB entity_animation_frame_t.frame_top_right_40, 3
	.DB entity_animation_frame_t.frame_top_right_41, 8

game_player_animation_sequence_top_right_lob:
	.DB 4
	.DB %00000000
	.DB $0b
	.DB $03
	.DB $0c

	.DB entity_animation_frame_t.frame_top_right_3e, 3
	.DB entity_animation_frame_t.frame_top_right_3f, 3
	.DB entity_animation_frame_t.frame_top_right_40, 3
	.DB entity_animation_frame_t.frame_top_right_41, 8

game_player_animation_sequence_top_left_05:
	.DB 2
	.DB %00000000
	.DB $0b
	.DB $03
	.DB $0d

	.DB entity_animation_frame_t.frame_top_left_3a, 3
	.DB entity_animation_frame_t.frame_4a, 5

game_player_animation_sequence_top_right_volley:
	.DB 3
	.DB %00000000
	.DB $0b
	.DB $03
	.DB $0e

	.DB entity_animation_frame_t.frame_top_right_3e, 3
	.DB entity_animation_frame_t.frame_top_right_3f, 3
	.DB entity_animation_frame_t.frame_top_right_49, 5

game_player_animation_sequence_top_serve_ready:
	.DB 1
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_top_serve_ready, 1

game_player_animation_sequence_top_serve_tossed:
	.DB 1
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_top_serve_tossed, 1

game_player_animation_sequence_top_serve_hit:
	.DB 3
	.DB %00000110
	.DB $13
	.DB $05
	.DB $0f

	.DB entity_animation_frame_t.frame_top_left_46, 10
	.DB entity_animation_frame_t.frame_top_left_47, 7
	.DB entity_animation_frame_t.frame_top_left_48, 10

game_player_animation_sequence_top_left_volley:
	.DB 4
	.DB %00000011
	.DB $0f
	.DB $04
	.DB $10

	.DB entity_animation_frame_t.frame_top_left_3a, 3
	.DB entity_animation_frame_t.frame_top_left_46, 7
	.DB entity_animation_frame_t.frame_top_left_47, 7
	.DB entity_animation_frame_t.frame_top_left_48, 10

game_player_animation_sequence_top_left_10:
	.DB 3
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_top_await_0, 3
	.DB entity_animation_frame_t.frame_top_left_3b, 3
	.DB entity_animation_frame_t.frame_top_left_3a, 3

game_player_animation_sequence_top_right_10:
	.DB 3
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_top_await_0, 3
	.DB entity_animation_frame_t.frame_top_right_3f, 3
	.DB entity_animation_frame_t.frame_top_right_3e, 3

game_player_animation_sequence_top_right_turn:
	.DB 4
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_top_left_3a, 3
	.DB entity_animation_frame_t.frame_top_left_3b, 3
	.DB entity_animation_frame_t.frame_top_right_3f, 3
	.DB entity_animation_frame_t.frame_top_right_3e, 3

game_player_animation_sequence_top_left_turn:
	.DB 4
	.DB %01111111
	.DB $00
	.DB $00
	.DB $00

	.DB entity_animation_frame_t.frame_top_right_3e, 3
	.DB entity_animation_frame_t.frame_top_right_3f, 3
	.DB entity_animation_frame_t.frame_top_left_3b, 3
	.DB entity_animation_frame_t.frame_top_left_3a
	.DB 3

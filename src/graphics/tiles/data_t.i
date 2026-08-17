.STRUCT umpire_settings_t
	sets DSW 77 ;c84c 0
	_unknown_1 DSW 77 ;c8e6 154
	umpire_double_fault DSW 35 ;c980 308
	umpire_deuce DSW 28 ;c9c6 378
	umpire_fault DSW 28 ;c9fe 434
	umpire_net DSW 20 ;ca36 490
	umpire_out DSW 20 ;ca5e 530
	umpire_in DSW 16 ;ca86 570
	umpire_none DSW 35 ;caa6 602
	point_0 DSW 2 ;caec 672
	point_15 DSW 2 ;caf0 676
	point_30 DSW 2 ;caf4 680
	point_40 DSW 2 ;caf8 684
	point_a DSW 2 ;cafc 688
	point_none DSW 2 ;cb00 692
    player_level_select DSW 19	; cb04
    speed_level DSW 16	; cb2a
    answer_abc DSW 11	; cb4a
    control_level DSW 16	; cb60
    player_type DSW 14	; cb80
    computer_level_select DSW 21	; cb9c
    answer_12345 DSW 17	; cbc6
.ENDST

.STRUCT projection_t
	depth_to_screen_y DSB 256	;cbe8
	screen_y_to_scale DSB VDP_NAME_TABLE_COLUMNS * VDP_TILE_SIZE * 4	;cce8
	screen_y_to_depth DSB VDP_NAME_TABLE_ROWS_VISIBLE * VDP_TILE_SIZE	;d0e8
.ENDST

.STRUCT data_t
	mark3_name DSB 76		;c720
	mark3 DSB 224		;c76c
	umpire_settings INSTANCEOF umpire_settings_t		;c84c
	projection INSTANCEOF projection_t		;cbe8
.ENDST

; y_min, y_max, x_min_1, x_max_1, x_min_2, x_max_2

game_court_dimensions_two_players:
	.DB $51 $80 $52 $80 $80 $ae
	.DB $80 $ad $80 $ae $52 $80
	.DB $51 $80 $52 $80 $80 $ae
	.DB $80 $ad $80 $ae $52 $80

game_court_dimensions_four_players:
	.DB $29 $80 $52 $ae $44 $bc
	.DB $80 $d3 $52 $ae $44 $bc
	.DB $29 $80 $52 $ae $44 $bc
	.DB $80 $d3 $52 $ae $44 $bc

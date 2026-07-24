	; Character "."
	.DB RLE_REP | 5		;5c8e
	.DB %00000000		;5c8f
	.DB RLE_REP | 2		;5c90
	.DB %00011000		;5c91
	.DB RLE_REP | 2		;5c92
	.DB %00000000		;5c93
	; Character "?"
	.DB RLE_LIT | 6		;5c94
	.DB %00111100		;5c95
	.DB %01100110		;5c96
	.DB %00001100		;5c97
	.DB %00011000		;5c98
	.DB %00000000		;5c99
	.DB %00011000		;5c9a
	.DB RLE_LIT | 1		;5c9b
	.DB %00000000		;5c9c

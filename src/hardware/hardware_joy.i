.equ JOY_BIT_UP    0
.equ JOY_BIT_DOWN  1
.equ JOY_BIT_LEFT  2
.equ JOY_BIT_RIGHT 3
.equ JOY_BIT_B1    4
.equ JOY_BIT_B2    5

.equ JOY_MASK_ALL  ((1 << JOY_BIT_UP) | (1 << JOY_BIT_DOWN) | (1 << JOY_BIT_LEFT) | (1 << JOY_BIT_RIGHT) | (1 << JOY_BIT_B1) | (1 << JOY_BIT_B2))

.equ JOY_ROW_JOY_SELECT $07

.equ JOY_P1_B1_ROW    $02
.equ JOY_P1_B1_BIT    4
.equ JOY_P1_B2_ROW    $03
.equ JOY_P1_B2_BIT    4
.equ JOY_P1_DOWN_ROW  $04
.equ JOY_P1_DOWN_BIT  5
.equ JOY_P1_LEFT_ROW  $05
.equ JOY_P1_LEFT_BIT  5
.equ JOY_P1_RIGHT_ROW $06
.equ JOY_P1_RIGHT_BIT 5
.equ JOY_P1_UP_BIT    6

.equ JOY_P2_LEFT_ROW  $01
.equ JOY_P2_LEFT_BIT  2
.equ JOY_P2_DOWN_BIT  3
.equ JOY_P2_UP_ROW    $02
.equ JOY_P2_UP_BIT    1
.equ JOY_P2_RIGHT_ROW $03
.equ JOY_P2_RIGHT_BIT 2
.equ JOY_P2_B2_ROW    $05
.equ JOY_P2_B2_BIT    3
.equ JOY_P2_B1_ROW    $06
.equ JOY_P2_B1_BIT    2


.MACRO JOY_READ_ROW ARGS row, port
	ld a, row
	out (O_DE), a
	in a, (port)
.ENDM

.MACRO JOY_CHECK_KEY ARGS kbd_bit, joy_bit
	bit kbd_bit, a
	jr nz, +
		res joy_bit, c
	+:
.ENDM

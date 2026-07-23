.equ PORT_JOY1 $dc ; P1{UDLR12} + P2{UD}
.equ PORT_JOY2 $dd ; P2{LR12} + (unused)
.equ PORT_KBD_MATRIX $de

.equ JOY_BIT_UP    0
.equ JOY_BIT_DOWN  1
.equ JOY_BIT_LEFT  2
.equ JOY_BIT_RIGHT 3
.equ JOY_BIT_B1    4
.equ JOY_BIT_B2    5

.equ JOY_MASK_ALL  ((1 << JOY_BIT_UP) | (1 << JOY_BIT_DOWN) | (1 << JOY_BIT_LEFT) | (1 << JOY_BIT_RIGHT) | (1 << JOY_BIT_B1) | (1 << JOY_BIT_B2))

.equ KBD_ROW_JOY_SELECT $07

.equ KBD_P1_B1_ROW    $02
.equ KBD_P1_B1_BIT    4
.equ KBD_P1_B2_ROW    $03
.equ KBD_P1_B2_BIT    4
.equ KBD_P1_DOWN_ROW  $04
.equ KBD_P1_DOWN_BIT  5
.equ KBD_P1_LEFT_ROW  $05
.equ KBD_P1_LEFT_BIT  5
.equ KBD_P1_RIGHT_ROW $06
.equ KBD_P1_RIGHT_BIT 5
.equ KBD_P1_UP_BIT    6

.equ KBD_P2_LEFT_ROW  $01
.equ KBD_P2_LEFT_BIT  2
.equ KBD_P2_DOWN_BIT  3
.equ KBD_P2_UP_ROW    $02
.equ KBD_P2_UP_BIT    1
.equ KBD_P2_RIGHT_ROW $03
.equ KBD_P2_RIGHT_BIT 2
.equ KBD_P2_B2_ROW    $05
.equ KBD_P2_B2_BIT    3
.equ KBD_P2_B1_ROW    $06
.equ KBD_P2_B1_BIT    2

.equ RAM_INPUT_ENABLE $c002

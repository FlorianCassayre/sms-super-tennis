; Y-Axis Bounds (min/top)
.equ BOUND_Y_MIN_VERT_OBJ   $0800
.equ BOUND_Y_MIN_QUAD_A1    $4100
.equ BOUND_Y_MIN_QUAD_A2    $8d00
.equ BOUND_Y_MIN_QUAD_B1    $6000
.equ BOUND_Y_MIN_QUAD_B2    $8800
.equ BOUND_Y_MIN_DEFAULT    $3680

; Y-Axis Bounds (max/bottom)
.equ BOUND_Y_MAX_VERT_OBJ   $f800
.equ BOUND_Y_MAX_QUAD_A1    $c000
.equ BOUND_Y_MAX_QUAD_A2    $7400
.equ BOUND_Y_MAX_QUAD_B1    $9d00
.equ BOUND_Y_MAX_QUAD_B2    $7600
.equ BOUND_Y_MAX_DEFAULT    $c9ff

; X-Axis Bounds (Left Half vs Right Half)
.equ BOUND_X_MIN_RIGHT_HALF $6c00
.equ BOUND_X_MIN_LEFT_HALF  $1d00
.equ BOUND_X_MAX_RIGHT_HALF $cb00
.equ BOUND_X_MAX_LEFT_HALF  $4cff


.equ TEMP_VEL_SHIFT_MULT    $c402   ; Speed shifts (x1, x2, x4)

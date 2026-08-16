; (low X)   (low Y)  (high X)
;            (top)
; +-------------------------+
; |            |            |
; |  Far left  | Far right  |
; |            |            |
; +=========================+ (net)
; |            |            |
; | Near left  | Near right |
; |            |            |
; +-------------------------+
;          (bottom)
;          (high Y)

; Center of court is ~$8000

.equ BOUND_X_MIN_FAR_STD      $3680
.equ BOUND_X_MIN_FAR_LEFT     $6000
.equ BOUND_X_MAX_FAR_LEFT     $7600
.equ BOUND_X_MIN_FAR_RIGHT    $8800
.equ BOUND_X_MAX_FAR_RIGHT    $9d00
.equ BOUND_X_MAX_FAR_STD      $c9ff

.equ BOUND_X_MIN_NEAR_STD     $0800
.equ BOUND_X_MIN_NEAR_LEFT    $4100
.equ BOUND_X_MAX_NEAR_LEFT    $7400
.equ BOUND_X_MIN_NEAR_RIGHT   $8d00
.equ BOUND_X_MAX_NEAR_RIGHT   $c000
.equ BOUND_X_MAX_NEAR_STD     $f800

.equ BOUND_Y_MIN_FAR  $1d00
.equ BOUND_Y_MAX_FAR  $4cff
.equ BOUND_Y_MIN_NEAR $6c00
.equ BOUND_Y_MAX_NEAR $cb00

.equ TYPE_HORIZ_ONLY_1  $03
.equ TYPE_HORIZ_ONLY_2  $09

.equ TEMP_VEL_SHIFT_MULT    $c402   ; Speed shifts (x1, x2, x4)

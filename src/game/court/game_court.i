; (low X)   (low Y)  (high X)
; +-------------------------+
; |            |            |
; |  Top left  | Top right  |
; |            |            |
; +=========================+ (net)
; |            |            |
; | Bot. left  | Bot. right |
; |            |            |
; +-------------------------+
;          (high Y)

; Center of court is ~($8000, $5c00)

; Top player
.equ BOUND_X_MIN_TOP      $3680
.equ BOUND_X_MAX_TOP      $c9ff
.equ BOUND_Y_MIN_TOP  $1d00
.equ BOUND_Y_MAX_TOP  $4cff

.equ BOUND_X_MIN_TOP_SERVE_LEFT     $6000
.equ BOUND_X_MAX_TOP_SERVE_LEFT     $7600

.equ BOUND_X_MIN_TOP_SERVE_RIGHT    $8800
.equ BOUND_X_MAX_TOP_SERVE_RIGHT    $9d00

; Bottom player
.equ BOUND_X_MIN_BOTTOM     $0800
.equ BOUND_X_MAX_BOTTOM     $f800
.equ BOUND_Y_MIN_BOTTOM $6c00
.equ BOUND_Y_MAX_BOTTOM $cb00

.equ BOUND_X_MIN_BOTTOM_SERVE_LEFT    $4100
.equ BOUND_X_MAX_BOTTOM_SERVE_LEFT    $7400

.equ BOUND_X_MIN_BOTTOM_SERVE_RIGHT   $8d00
.equ BOUND_X_MAX_BOTTOM_SERVE_RIGHT   $c000


.equ TYPE_HORIZ_ONLY_1  $03
.equ TYPE_HORIZ_ONLY_2  $09

.equ TEMP_VEL_SHIFT_MULT    $c402   ; Speed shifts (x1, x2, x4)

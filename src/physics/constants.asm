; Y is 8 bits
; X and Z are 16 bits
.equ VEL_Y $c506
.equ VEL_X $c50c
.equ VEL_Z $c50e

.equ BALL_STATE $c517

.equ BOUNCE_COEF 160 ; (160 / 256 = 0.625 Restitution)
.equ FRICTION_COEF 128 ; (128 / 256 = 0.500 Damping)

.equ STATE_FROZEN $002 ; If state >= 2, object is stationary/dead
.equ ZERO $0000


; State
.equ ENT_TYPE_MASK          $7f
.equ TYPE_VERT_ONLY_1       $03 ; Restricted to vertical movement
.equ TYPE_VERT_ONLY_2       $09

; Movement
.equ DIR_LEFT               $01
.equ DIR_RIGHT              $02
.equ DIR_UP                 $04
.equ DIR_DOWN               $08
.equ DIR_MASK               $0f ; Lower 4 bits

.equ ENT_SIDE_STATE         $01 ; Court side
.equ ENT_TYPE               $02 ; Entity type ID?
.equ ENT_X_POS              $0a ; 16-bit X coordinate (Low = $0A, High = $0B)
.equ ENT_Y_POS              $0c ; 16-bit Y coordinate (Low = $0C, High = $0D)
.equ ENT_X_POS_CACHE        $14 ; Cached X high-byte
.equ ENT_X_VEL              $0e ; 16-bit X velocity
.equ ENT_Y_VEL              $10 ; 16-bit Y velocity
.equ ENT_ALLOWED_DIRS       $12 ; Output: final allowed movement bitmask
.equ ENT_INPUT_DIRS         $15 ; Input: requested movement bitmask (joypad/CPU)
.equ ENT_TILE_COLLISION     $2d ; Background tilemap collision mask
.equ ENT_CACHE_Y_MIN        $3c ; Cached Y boundary top (Low = $3C, High = $3D)
.equ ENT_CACHE_Y_MAX        $3e ; Cached Y boundary bottom (Low = $3E, High = $3F)

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
.equ P1_SPEED_STATE_A       $c047   ; Player 1 state index A
.equ P1_SPEED_STATE_B       $c049   ; Player 1 state index B (CPU?)
.equ P2_SPEED_STATE         $c04a   ; Player 2 state index

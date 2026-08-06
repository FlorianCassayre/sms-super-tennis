; Y is 8 bits
; X and Z are 16 bits
.STRUCT ball_t
	z_pos DW		; $c500
	z_gravity DW		; $c502
	_unknown_0 DW		; $c504
	z_vel DW		; $c506
	y_pos DW		; $c508
	x_pos DW		; $c50a
	y_vel DW		; $c50c
	x_vel DW		; $c50e
	_unknown_1 DSB 7		; $c510
	state DB		; $c517
.ENDST

.ENUM $c500
	ball INSTANCEOF ball_t
.ENDE

.equ BOUNCE_COEF 160 ; (160 / 256 = 0.625 Restitution)
.equ FRICTION_COEF 128 ; (128 / 256 = 0.500 Damping)

.equ BALL_MAX_BOUNCES 5

.equ STATE_FROZEN $02 ; If state >= 2, object is stationary/dead
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

.STRUCT player_t
    _unknown_0 DB		; $00 ; ???
    side_state DB		; $01 ; Court side
    type DB		; $02 ; Entity type ID?
    _unknown_1 DSB 7		; $03
    y_pos DW		; $0a ; 16-bit Y coordinate (Low = $0C, High = $0D)
    x_pos DW		; $0c ; 16-bit X coordinate (Low = $0A, High = $0B)
    y_vel DW		; $0e ; 16-bit Y velocity
    x_vel DW		; $10 ; 16-bit X velocity
    allowed_dirs DB		; $12 ; Output: final allowed movement bitmask
    _unknown_2 DB		; $13 ; ???
    y_pos_cache DB		; $14 ; Cached Y high-byte
    input_dirs DB		; $15 ; Input: requested movement bitmask (joypad/CPU)
    _unknown_3 DSB 4		; $16 ; ???
    time_before_serve DB		; $1a
    _unknown_4 DSB 5		; $1b ; ???
    _unknown_20 DB		; $20 ; ???
    _unknown_5 DSB 10		; $21 ; ???
    maybe_sprite_id DB		; $2b ; ???
    _unknown_6 DB		; $2c ; ???
    tile_collision DB		; $2d ; Background tilemap collision mask
    y_div_pos DB		; $2e ; Appears to be a "rough" position spanning only a few units
    x_div_pos DB		; $2f ; Same
    _unknown_7 DSB 12		; $3a ; ???
    cache_y_min DW		; $3c ; Cached Y boundary top (Low = $3C, High = $3D)
    cache_y_max DW		; $3e ; Cached Y boundary bottom (Low = $3E, High = $3F)
.ENDST

.STRUCT player_opponents_t
	bottom INSTANCEOF player_t
	top INSTANCEOF player_t
.ENDST

.ENUM $c200
	player INSTANCEOF player_opponents_t 2		; $c200 $c240 $c280 $c2c0
.ENDE

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

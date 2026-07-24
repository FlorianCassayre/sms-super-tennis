; Y is 8 bits
; X and Z are 16 bits
.equ VEL_Y $c506
.equ VEL_X $c50c
.equ VEL_X_HI $c50d
.equ VEL_Z $c50e
.equ VEL_Z_HI $c50f

.equ BALL_STATE $c517

.equ BOUNCE_COEF 160 ; (160 / 256 = 0.625 Restitution)
.equ FRICTION_COEF 128 ; (128 / 256 = 0.500 Damping)

.equ STATE_FROZEN $002 ; If state >= 2, object is stationary/dead
.equ ZERO $0000

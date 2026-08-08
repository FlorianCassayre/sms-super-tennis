.equ BOUNCE_COEF 160 ; (160 / 256 = 0.625 Restitution)
.equ FRICTION_COEF 128 ; (128 / 256 = 0.500 Damping)

.equ BALL_MAX_BOUNCES 5

.equ STATE_FROZEN $02 ; If state >= 2, object is stationary/dead

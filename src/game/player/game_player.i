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

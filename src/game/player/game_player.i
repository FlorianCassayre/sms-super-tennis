; State
.equ ENT_TYPE_MASK          $7f
.equ TYPE_VERT_ONLY_1       $03 ; Restricted to vertical movement
.equ TYPE_VERT_ONLY_2       $09

; Movement
.equ DIR_UP                 $01
.equ DIR_DOWN               $02
.equ DIR_LEFT               $04
.equ DIR_RIGHT              $08
.equ DIR_MASK               $0f ; Lower 4 bits

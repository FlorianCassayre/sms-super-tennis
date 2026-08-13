sub_0711h_entity_action_dispatch:
	ld hl,l074fh_memory_table		; 21 4f 07 ;0711
	ld a,(0c086h)		; 3a 86 c0 ;0714
	add a,a			; 87 ;0717
	ld e,a			; 5f ;0718
	ld d,000h		; 16 00 ;0719
	add hl,de			; 19 ;071b
	ld e,(hl)			; 5e ;071c
	inc hl			; 23 ;071d
	ld d,(hl)			; 56 ;071e
	push de			; d5 ;071f
	pop ix		; dd e1 ;0720
	ld a,(ix+002h)		; dd 7e 02 ;0722
	or a			; b7 ;0725
	jr z,l0732h		; 28 0a ;0726
	ld hl,l0732h		; 21 32 07 ;0728
	; Push return address before jumping
	push hl			; e5 ;072b
	ld hl,game_entity_state_jump_table - 2		; 21 59 07 ;072c
	jp l0807h_game_fsm		; c3 07 08 ;072f

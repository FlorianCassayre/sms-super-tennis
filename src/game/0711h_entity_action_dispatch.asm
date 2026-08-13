sub_0711h_entity_action_dispatch:
	ld hl,l074fh_memory_table		;0711
	ld a,(0c086h)		;0714
	add a,a			;0717
	ld e,a			;0718
	ld d,000h		;0719
	add hl,de			;071b
	ld e,(hl)			;071c
	inc hl			;071d
	ld d,(hl)			;071e
	push de			;071f
	pop ix		;0720
	ld a,(ix+002h)		;0722
	or a			;0725
	jr z,l0732h		;0726
	ld hl,l0732h		;0728
	; Push return address before jumping
	push hl			;072b
	ld hl,game_entity_state_jump_table - 2		;072c
	jp l0807h_game_fsm		;072f

sub_draw_tennis_court:
	ld a,(0c518h)		; 3a 18 c5 ;0b18
	or a			; b7 ;0b1b
	jr nz,sub_0b28h		; 20 0a ;0b1c
l0b1eh_update_ball:
	call sub_check_player_location		; cd 87 17 ;0b1e
	call sub_update_ball		; cd b4 14 ;0b21
	call sub_0711h_entity_action_dispatch		; cd 11 07 ;0b24
	ret			; c9 ;0b27

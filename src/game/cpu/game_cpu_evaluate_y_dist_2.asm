sub_game_cpu_evaluate_y_dist_2:
	ld a,(ball.foul_type)
	and a
	ld b,000h
	jr nz,l23fbh
	ld a,(ball.foul_triggered_flag)
	and a
	jr nz,l23beh
	ld a,(0c51dh)
	and a
	jr nz,l23fbh
l23beh:
	ld a,(entities.ball.y_pos + 1)
	ld e,a
	ld a,(ix + entity_t.y_pos + 1)
	sub e
	jr nc,l23cah
	neg
l23cah:
	ld b,a
	ld a,(ix + entity_t.y_div_pos)
	ld e,a
	ld c,010h
	cp 001h
	ld a,b
	ld b,000h
	jr c,l23dah
	ld c,018h
l23dah:
	cp c
	jr nc,l23fbh
	ld b,001h
	ld a,e
	cp 006h
	jr c,l23fbh
	ld a,(0c401h)
	cp 01ah
	jr nz,l23f3h
	ld a,r
	cp 03fh
	ld b,002h
	jr nc,l23fbh
l23f3h:
	ld a,r
	cp 030h
	jr c,l23fbh
	ld b,001h
l23fbh:
	ld (ix + entity_t.hit_readiness),b
	ret

sub_check_player_location:
	ld a,(0c000h)		; 3a 00 c0 ;1787
	rlca			; 07 ;178a
	ret nc			; d0 ;178b
	ld ix,player.1.bottom		; dd 21 00 c2 ;178c
	ld iy,player.2.bottom		; fd 21 80 c2 ;1790
	call sub_179fh		; cd 9f 17 ;1794
	ld ix,player.1.top		; dd 21 40 c2 ;1797
	ld iy,player.2.top		; fd 21 c0 c2 ;179b
sub_179fh:
	ld e,000h		; 1e 00 ;179f
	ld a,(ix + player_t.y_pos_cache)		; dd 7e 14 ;17a1
	sub (iy + player_t.y_pos_cache)		; fd 96 14 ;17a4
	jr nc,+		; 30 02 ;17a7
	neg		; ed 44 ;17a9
+:
	cp 004h		; fe 04 ;17ab
	jr nc,+		; 30 27 ;17ad
	ld hl,l17e7h_bounding_box		; 21 e7 17 ;17af
	call sub_17f1h_aabb		; cd f1 17 ;17b2
	ld (0c082h),bc		; ed 43 82 c0 ;17b5
	ld (0c084h),de		; ed 53 84 c0 ;17b9
	push ix		; dd e5 ;17bd
	push iy		; fd e5 ;17bf
	pop ix		; dd e1 ;17c1
	ld hl,l17e7h_bounding_box		; 21 e7 17 ;17c3
	call sub_17f1h_aabb		; cd f1 17 ;17c6
	pop ix		; dd e1 ;17c9
	ld (0c08eh),bc		; ed 43 8e c0 ;17cb
	ld (0c090h),de		; ed 53 90 c0 ;17cf
	call sub_1806h_bound_check		; cd 06 18 ;17d3
+:
	ld d,000h		; 16 00 ;17d6
	ld hl,l1775h		; 21 75 17 ;17d8
	add hl,de			; 19 ;17db
	add hl,de			; 19 ;17dc
	ld c,(hl)			; 4e ;17dd
	inc hl			; 23 ;17de
	ld b,(hl)			; 46 ;17df
	ld (ix + player_t.tile_collision),c		; dd 71 2d ;17e0
	ld (iy + player_t.tile_collision),b		; fd 70 2d ;17e3
	ret			; c9 ;17e6

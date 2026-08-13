sub_check_player_location:
	ld a,(0c000h)		;1787
	rlca			;178a
	ret nc			;178b
	ld ix,entities.player.1.bottom		;178c
	ld iy,entities.player.2.bottom		;1790
	call sub_179fh		;1794
	ld ix,entities.player.1.top		;1797
	ld iy,entities.player.2.top		;179b
sub_179fh:
	ld e,000h		;179f
	ld a,(ix + entity_t.y_pos_cache)		;17a1
	sub (iy + entity_t.y_pos_cache)		;17a4
	jr nc,+		;17a7
	neg		;17a9
+:
	cp 004h		;17ab
	jr nc,+		;17ad
	ld hl,l17e7h_bounding_box		;17af
	call sub_17f1h_aabb		;17b2
	ld (0c082h),bc		;17b5
	ld (0c084h),de		;17b9
	push ix		;17bd
	push iy		;17bf
	pop ix		;17c1
	ld hl,l17e7h_bounding_box		;17c3
	call sub_17f1h_aabb		;17c6
	pop ix		;17c9
	ld (0c08eh),bc		;17cb
	ld (0c090h),de		;17cf
	call sub_1806h_bound_check		;17d3
+:
	ld d,000h		;17d6
	ld hl,l1775h		;17d8
	add hl,de			;17db
	add hl,de			;17dc
	ld c,(hl)			;17dd
	inc hl			;17de
	ld b,(hl)			;17df
	ld (ix + entity_t.tile_collision),c		;17e0
	ld (iy + entity_t.tile_collision),b		;17e3
	ret			;17e6

l17e7h_bounding_box:
	.DB $fc		;17e7
	.DB $08		;17e8
	.DB $f8		;17e9
	.DB $10		;17ea
	.DB $87		;17eb
	.DB $87		;17ec
	.DB $5f		;17ed
	.DB $16		;17ee
	.DB $00		;17ef
	.DB $19		;17f0

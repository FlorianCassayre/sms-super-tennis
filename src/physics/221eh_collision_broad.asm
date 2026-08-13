sub_221eh_collision_broad:
	ld a,(ball.foul)		; 3a 18 c5 ;221e
	and a			; a7 ;2221
	ld a,0		; 3e 00 ;2222
	ret nz			; c0 ;2224
	push hl			; e5 ;2225
	exx			; d9 ;2226
	pop hl			; e1 ;2227
	ld e,(ix + entity_t.x_pos)		; dd 5e 0c ;2228
	ld d,(ix + entity_t.x_pos + 1)		; dd 56 0d ;222b
	xor a			; af ;222e
	sbc hl,de		; ed 52 ;222f
	ld b,008h		; 06 08 ;2231
	jr nc,+		; 30 05 ;2233
	call sub_neg_hl		; cd 19 23 ;2235
	ld b,004h		; 06 04 ;2238
+:
	ld a,(ix + entity_t.y_div_pos)		; dd 7e 2e ;223a
	ld de,00500h		; 11 00 05 ;223d
	cp 006h		; fe 06 ;2240
	jr nc,+		; 30 03 ;2242
	ld de,00c00h		; 11 00 0c ;2244
+:
	xor a			; af ;2247
	ld c,h			; 4c ;2248
	sbc hl,de		; ed 52 ;2249
	jr z,++		; 28 1d ;224b
	jr nc,+++		; 30 1d ;224d
	call sub_neg_hl		; cd 19 23 ;224f
	ld a,h			; 7c ;2252
	cp 003h		; fe 03 ;2253
	jr c,++		; 38 13 ;2255
	ld a,c			; 79 ;2257
	bit 2,b		; cb 50 ;2258
	jr nz,+		; 20 03 ;225a
	neg		; ed 44 ;225c
	ld d,a			; 57 ;225e
+:
	exx			; d9 ;225f
	push hl			; e5 ;2260
	exx			; d9 ;2261
	pop hl			; e1 ;2262
	add hl,de			; 19 ;2263
	ld (ix + entity_t.x_pos),l		; dd 75 0c ;2264
	ld (ix + entity_t.x_pos + 1),h		; dd 74 0d ;2267
++:
	ld b,000h		; 06 00 ;226a
+++:
	push bc			; c5 ;226c
	exx			; d9 ;226d
	pop bc			; c1 ;226e
	ld l,(ix + entity_t.y_pos)		; dd 6e 0a ;226f
	ld h,(ix + entity_t.y_pos + 1)		; dd 66 0b ;2272
	ex de,hl			; eb ;2275
	xor a			; af ;2276
	sbc hl,de		; ed 52 ;2277
	ld c,002h		; 0e 02 ;2279
	jr nc,+		; 30 05 ;227b
	ld c,001h		; 0e 01 ;227d
	call sub_neg_hl		; cd 19 23 ;227f
+:
	ld de,00300h		; 11 00 03 ;2282
	xor a			; af ;2285
	sbc hl,de		; ed 52 ;2286
	jr nc,+		; 30 02 ;2288
	ld c,000h		; 0e 00 ;228a
+:
	xor a			; af ;228c
	or c			; b1 ;228d
	or b			; b0 ;228e
	ret			; c9 ;228f

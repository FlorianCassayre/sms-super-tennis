sub_221eh_collision_broad:
	ld a,(ball.foul)		;221e
	and a			;2221
	ld a,0		;2222
	ret nz			;2224
	push hl			;2225
	exx			;2226
	pop hl			;2227
	ld e,(ix + entity_t.x_pos)		;2228
	ld d,(ix + entity_t.x_pos + 1)		;222b
	xor a			;222e
	sbc hl,de		;222f
	ld b,008h		;2231
	jr nc,+		;2233
	call sub_neg_hl		;2235
	ld b,004h		;2238
+:
	ld a,(ix + entity_t.y_div_pos)		;223a
	ld de,00500h		;223d
	cp 006h		;2240
	jr nc,+		;2242
	ld de,00c00h		;2244
+:
	xor a			;2247
	ld c,h			;2248
	sbc hl,de		;2249
	jr z,++		;224b
	jr nc,+++		;224d
	call sub_neg_hl		;224f
	ld a,h			;2252
	cp 003h		;2253
	jr c,++		;2255
	ld a,c			;2257
	bit 2,b		;2258
	jr nz,+		;225a
	neg		;225c
	ld d,a			;225e
+:
	exx			;225f
	push hl			;2260
	exx			;2261
	pop hl			;2262
	add hl,de			;2263
	ld (ix + entity_t.x_pos),l		;2264
	ld (ix + entity_t.x_pos + 1),h		;2267
++:
	ld b,000h		;226a
+++:
	push bc			;226c
	exx			;226d
	pop bc			;226e
	ld l,(ix + entity_t.y_pos)		;226f
	ld h,(ix + entity_t.y_pos + 1)		;2272
	ex de,hl			;2275
	xor a			;2276
	sbc hl,de		;2277
	ld c,002h		;2279
	jr nc,+		;227b
	ld c,001h		;227d
	call sub_neg_hl		;227f
+:
	ld de,00300h		;2282
	xor a			;2285
	sbc hl,de		;2286
	jr nc,+		;2288
	ld c,000h		;228a
+:
	xor a			;228c
	or c			;228d
	or b			;228e
	ret			;228f

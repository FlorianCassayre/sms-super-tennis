isr_vblank_update:
	push af			;0165
	in a,(I_VDP_STATUS)		;0166
	bit 7,a		;0168
	jp z,l0237h		;016a
	push ix		;016d
	push iy		;016f
	push bc			;0171
	push de			;0172
	push hl			;0173
	ex af,af'			;0174
	exx			;0175
	push af			;0176
	push bc			;0177
	push de			;0178
	push hl			;0179
	ld hl,0c003h		;017a
	in a,(I_JOYPAD_2)		;017d
	and 010h		;017f
	ld c,(hl)			;0181
	ld (hl),a			;0182
	xor c			;0183
	and c			;0184
	jp nz,l0213h		;0185
	ld a,(0c005h)		;0188
	inc a			;018b
	cp 00fh		;018c
	jr c,+		;018e
	ld a,00fh		;0190
+:
	ld (0c005h),a		;0192
	ld a,(0c004h)		;0195
	or a			;0198
	jp nz,l0219h		;0199
	ld a,(0c001h)		;019c
	or a			;019f
	jp nz,l0224h		;01a0
	ld c,0beh		;01a3
	ld a,(state.sound_wait_flag)		;01a5
	rlca			;01a8
	jp nc,l022fh		;01a9
	ld hl,01fc0h		;01ac
	call sub_set_vdp_write_addr		;01af
	ld hl,(ball.sprite_vram_pointer)		;01b2
	ld b,020h		;01b5
	otir		;01b7
	ld hl,01fe0h		;01b9
	call sub_set_vdp_write_addr		;01bc
	ld hl,(ball.shadow_vram_pointer)		;01bf
	ld b,020h		;01c2
	otir		;01c4
	ld hl,03f00h		;01c6
	call sub_set_vdp_write_addr		;01c9
	ld hl,0c100h		;01cc
	ld b,040h		;01cf
	otir		;01d1
	ld hl,03f80h		;01d3
	call sub_set_vdp_write_addr		;01d6
	ld hl,0c140h		;01d9
	ld b,080h		;01dc
	otir		;01de
	xor a			;01e0
	ld (state.sound_wait_flag),a		;01e1
l01e4h:
	call sub_game_umpire_head_rotation		;01e4
	ld c,00ch		;01e7
	call sub_delay_vdp		;01e9
	call sub_graphics_palette_secondary_update_conditionally_first		;01ec
	call sub_load_vram_rect_dynamic		;01ef
	call sub_update_announcement_timer		;01f2
	call sub_027bh_joy		;01f5
	call sub_joy_debounce		;01f8
l01fbh:
	call sub_audio_channel_update		;01fb
l01feh:
	ld hl,$c001
	ld (hl),001h		;0201
	pop hl			;0203
	pop de			;0204
	pop bc			;0205
	pop af			;0206
	exx			;0207
	ex af,af'			;0208
	pop hl			;0209
	pop de			;020a
	pop bc			;020b
	pop iy		;020c
	pop ix		;020e
	pop af			;0210
	ei			;0211
	ret			;0212
l0213h:
	call sub_audio_silence		;0213
	jp init@l00d6h		;0216
l0219h:
	ld c,018h		;0219
	call sub_delay_vdp		;021b
	call sub_graphics_palette_secondary_update_conditionally_first		;021e
	jp l01feh		;0221
l0224h:
	ld c,018h		;0224
	call sub_delay_vdp		;0226
	call sub_graphics_palette_secondary_update_conditionally_first		;0229
	jp l01fbh		;022c
l022fh:
	ld c,00dh		;022f
	call sub_delay_vdp		;0231
	jp l01e4h		;0234
l0237h:
	ld a,(state.unknown_flag)		;0237
	or a			;023a
	jr z,l025dh		;023b
	.REPT 19
		nop
	.ENDR
	ld a,010h		;0250
	out (O_VDP_CTRL),a		;0252
	ld a,0c0h		;0254
	out (O_VDP_CTRL),a		;0256
	ld a,(0001bh)		;0258
	out (IO_VDP_DATA),a		;025b
l025dh:
	pop af			;025d
	ei			;025e
	ret			;025f

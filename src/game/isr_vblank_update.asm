isr_vblank_update:
	push af
	in a,(I_VDP_STATUS)
	bit 7,a
	jp z,l0237h
	push ix
	push iy
	push bc
	push de
	push hl
	ex af,af'
	exx
	push af
	push bc
	push de
	push hl
	ld hl,0c003h
	in a,(I_JOYPAD_2)
	and 010h
	ld c,(hl)
	ld (hl),a
	xor c
	and c
	jp nz,l0213h
	ld a,(0c005h)
	inc a
	cp 00fh
	jr c,+
	ld a,00fh
+:
	ld (0c005h),a
	ld a,(0c004h)
	or a
	jp nz,l0219h
	ld a,(0c001h)
	or a
	jp nz,l0224h
	ld c,0beh
	ld a,(state.sound_wait_flag)
	rlca
	jp nc,l022fh
	ld hl,01fc0h
	call sub_set_vdp_write_addr
	ld hl,(ball.sprite_vram_pointer)
	ld b,020h
	otir
	ld hl,01fe0h
	call sub_set_vdp_write_addr
	ld hl,(ball.shadow_vram_pointer)
	ld b,020h
	otir
	ld hl,VDP_SPRITE_ATTRIBUTE_ADDRESS_BASE
	call sub_set_vdp_write_addr
	ld hl,0c100h
	ld b,040h
	otir
	ld hl,03f80h
	call sub_set_vdp_write_addr
	ld hl,0c140h
	ld b,080h
	otir
	xor a
	ld (state.sound_wait_flag),a
l01e4h:
	call sub_game_umpire_head_rotation
	ld c,00ch
	call sub_delay_vdp
	call sub_graphics_palette_secondary_update_conditionally_first
	call sub_load_vram_rect_dynamic
	call sub_update_announcement_timer
	call sub_joy_update_state
	call sub_joy_debounce
l01fbh:
	call sub_audio_channel_update
l01feh:
	ld hl,$c001
	ld (hl),001h
	pop hl
	pop de
	pop bc
	pop af
	exx
	ex af,af'
	pop hl
	pop de
	pop bc
	pop iy
	pop ix
	pop af
	ei
	ret
l0213h:
	call sub_audio_silence
	jp init@l00d6h
l0219h:
	ld c,018h
	call sub_delay_vdp
	call sub_graphics_palette_secondary_update_conditionally_first
	jp l01feh
l0224h:
	ld c,018h
	call sub_delay_vdp
	call sub_graphics_palette_secondary_update_conditionally_first
	jp l01fbh
l022fh:
	ld c,00dh
	call sub_delay_vdp
	jp l01e4h
l0237h:
	ld a,(state.unknown_flag)
	or a
	jr z,l025dh
	.REPT 19
		nop
	.ENDR
	ld a,010h
	out (O_VDP_CTRL),a
	ld a,0c0h
	out (O_VDP_CTRL),a
	ld a,(0001bh)
	out (IO_VDP_DATA),a
l025dh:
	pop af
	ei
	ret

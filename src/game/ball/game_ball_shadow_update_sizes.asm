sub_game_ball_shadow_update_sizes:
	ld hl,@table_near
	ld a,(ball.y_pos + 1)
	cp $50
	jr nc,@is_near
	ld hl,@table_far
@is_near:
	ld a,(ball.z_pos + 1)
	cp $50
	jr c,@l0672h
	ld a,04fh
@l0672h:
	rrca
	rrca
	rrca
	and 00fh
	add a,a
	ld e,a
	ld d,000h
	add hl,de
	ld a,(state.sound_wait_flag)
	ld c,a
	ld a,(ball.shadow_size_index)
	cp (hl)
	jr z,@l068ch
	ld a,(hl)
	ld (ball.shadow_size_index),a
	set 5,c
@l068ch:
	inc hl
	ld a,(ball.sprite_size_index)
	cp (hl)
	jr z,@l0699h
	ld a,(hl)
	ld (ball.sprite_size_index),a
	set 6,c
@l0699h:
	ld a,c
	ld (state.sound_wait_flag),a
	ld de,@table_names
	ld a,(ball.shadow_size_index)
	add a,a
	ld l,a
	ld h,000h
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ball.shadow_vram_pointer),hl
	ld a,(ball.sprite_size_index)
	add a,a
	ld l,a
	ld h,000h
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld (ball.sprite_vram_pointer),hl
	ret

; Ball, Shadow
@table_near:
	.DB 1, 6
	.DB 2, 7
	.DB 2, 7
	.DB 2, 7
	.DB 3, 7
	.DB 3, 7
	.DB 3, 8
	.DB 3, 8
	.DB 4, 8
	.DB 4, 8
	.DB 4, 8
	.DB 4, 8
	.DB 4, 8
	.DB 4, 8
	.DB 4, 8
	.DB 4, 8
@table_far:
	.DB 0, 5
	.DB 1, 6
	.DB 1, 6
	.DB 1, 6
	.DB 2, 6
	.DB 2, 6
	.DB 2, 7
	.DB 2, 7
	.DB 3, 7
	.DB 3, 8
	.DB 4, 8
	.DB 4, 8
	.DB 4, 8
	.DB 4, 8
	.DB 4, 8
	.DB 4, 8

@table_names:
	; Shadow
	.DW data.ball
	.DW data.ball + VDP_TILE_SIZE * VDP_PALETTE_DEPTH
	.DW data.ball + VDP_TILE_SIZE * VDP_PALETTE_DEPTH * 2
	.DW data.ball + VDP_TILE_SIZE * VDP_PALETTE_DEPTH * 3
	.DW data.ball + VDP_TILE_SIZE * VDP_PALETTE_DEPTH * 4
	; Ball
	.DW data.ball + VDP_TILE_SIZE * VDP_PALETTE_DEPTH * 5
	.DW data.ball + VDP_TILE_SIZE * VDP_PALETTE_DEPTH * 6
	.DW data.ball + VDP_TILE_SIZE * VDP_PALETTE_DEPTH * 7
	.DW data.ball + VDP_TILE_SIZE * VDP_PALETTE_DEPTH * 8

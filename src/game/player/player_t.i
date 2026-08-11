.STRUCT player_t
    _unknown_0 DB		; $00 ; ???
    side_state DB		; $01 ; Court side
    type DB		; $02 ; Entity type ID?
    _unknown_1 DSB 7		; $03
    y_pos DW		; $0a ; 16-bit Y coordinate (Low = $0C, High = $0D)
    x_pos DW		; $0c ; 16-bit X coordinate (Low = $0A, High = $0B)
    y_vel DW		; $0e ; 16-bit Y velocity
    x_vel DW		; $10 ; 16-bit X velocity
    allowed_dirs DB		; $12 ; Output: final allowed movement bitmask
    _unknown_2 DB		; $13 ; ???
    y_pos_cache DB		; $14 ; Cached Y high-byte
    input_dirs DB		; $15 ; Input: requested movement bitmask (joypad/CPU)
    facing_dir DB		; $16
    prev_facing_dir DB		; $17
    hit_readiness DB		; $18
    state_flags DB		; $19
    time_before_serve DB		; $1a
    _unknown_4 DSB 2		; $1b ; ???
    racket_contact_flag DB	; $1d
    animation_frame DB		; $1e
    swing_type_id DB		; $1f ; ???
    render_facing_dir DB		; $20 ; ???
    _unknown_6 DB		; $21 ; ???
    animation_id DB		; $22
    animation_flags_or_frame DB		; $23
    _unknown_7 DB		; $24 ; ???
    action_state DB		; $25
    _unknown_8 DB		; $26 ; ???
    ball_incoming DB		; $27
    shot_button DB		; $28
    state_timer_low DB		; $29 ; ???
    state_timer_high DB		; $2a ; ???
    maybe_sprite_id DB		; $2b ; ???
    _unknown_9 DB		; $2c ; ???
    tile_collision DB		; $2d ; Background tilemap collision mask
    y_div_pos DB		; $2e ; Appears to be a "rough" position spanning only a few units
    x_div_pos DB		; $2f ; Same
    cpu_state DB		; $30
    cpu_state_timer DB		; $31
    _unknown_10 DB		; $32 ; ???
    cpu_sub_state DB		; $33
    _unknown_11 DSB 8		; $34 ; ???
    cache_y_min DW		; $3c ; Cached Y boundary top (Low = $3C, High = $3D)
    cache_y_max DW		; $3e ; Cached Y boundary bottom (Low = $3E, High = $3F)
.ENDST

.STRUCT player_opponents_t
	bottom INSTANCEOF player_t
	top INSTANCEOF player_t
.ENDST

.STRUCT players_t
	_unknown_0 DB	;c300
	_unknown_1 DSB 2	;c301
	ball_hit_flag DB	;c303
	_unknown_2 DSB 6	;c304
	ball_logical_y DW	;c30a
	ball_logical_x DW	;c30c
	_unknown_3 DSB 4	;c30d
	player_pair_index DB	;c312
.ENDST

.ENUM $c200
	player INSTANCEOF player_opponents_t 2		; $c200 $c240 $c280 $c2c0
	players INSTANCEOF players_t		; $c300
.ENDE

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
    _unknown_3 DSB 4		; $16 ; ???
    time_before_serve DB		; $1a
    _unknown_4 DSB 5		; $1b ; ???
    _unknown_20 DB		; $20 ; ???
    _unknown_5 DSB 10		; $21 ; ???
    maybe_sprite_id DB		; $2b ; ???
    _unknown_6 DB		; $2c ; ???
    tile_collision DB		; $2d ; Background tilemap collision mask
    y_div_pos DB		; $2e ; Appears to be a "rough" position spanning only a few units
    x_div_pos DB		; $2f ; Same
    _unknown_7 DSB 12		; $3a ; ???
    cache_y_min DW		; $3c ; Cached Y boundary top (Low = $3C, High = $3D)
    cache_y_max DW		; $3e ; Cached Y boundary bottom (Low = $3E, High = $3F)
.ENDST

.STRUCT player_opponents_t
	bottom INSTANCEOF player_t
	top INSTANCEOF player_t
.ENDST

.ENUM $c200
	player INSTANCEOF player_opponents_t 2		; $c200 $c240 $c280 $c2c0
.ENDE

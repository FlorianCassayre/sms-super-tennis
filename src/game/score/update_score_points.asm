sub_update_score_points:
	call @sub_315eh		;2fea
	ld a,(score.tie_break)		;2fed
	cp 000h		;2ff0
	jp nz,@special_score_state		;2ff2
	ld a,(score.point.bottom)		;2ff5
	cp 004h		;2ff8
	jp c,@check_top_score		;2ffa
	jp nz,@bottom_wins		;2ffd
	ld hl,score.point.top		;3000
	sub (hl)			;3003
	jp z,@deuce		;3004
	ld a,(score.point.top)		;3007
	cp 003h		;300a
	jp c,@bottom_wins		;300c
@check_top_score:
	ld a,(score.point.top)		;300f
	cp 004h		;3012
	jp c,@l3037h		;3014
	jp nz,@bottom_wins_a		;3017
	ld a,(score.point.bottom)		;301a
	cp 003h		;301d
	jp c,@bottom_wins_a		;301f
	jp @l3037h		;3022
@bottom_wins_a:
	ld a,010h		;3025
	jp @set_winner		;3027
@bottom_wins:
	ld a,001h		;302a
	jp @set_winner		;302c
@deuce:
	ld a,003h		;302f
	ld (score.point.bottom),a		;3031
	ld (score.point.top),a		;3034
@l3037h:
	ld b,002h		;3037
	ld de,03938h		;3039
	ld hl,score.point.top		;303c
@draw_bottom_score_digit:
	push bc			;303f
	ld a,(hl)			;3040
	cp 000h		;3041
	jr nz,@bottom_score_digit_1		;3043
	ld hl,0caech		;3045
@bottom_score_digit_1:
	cp 001h		;3048
	jr nz,@bottom_score_digit_2		;304a
	ld hl,0caf0h		;304c
@bottom_score_digit_2:
	cp 002h		;304f
	jr nz,@bottom_score_digit_3		;3051
	ld hl,0caf4h		;3053
@bottom_score_digit_3:
	cp 003h		;3056
	jr nz,@bottom_score_digit_4		;3058
	ld hl,0caf8h		;305a
@bottom_score_digit_4:
	cp 004h		;305d
	jr nz,@draw_top_score_digit		;305f
	ld hl,0cafch		;3061
	push de			;3064
	ex de,hl			;3065
	ld bc,4		;3066
	di			;3069
	call sub_cp_ram_vram		;306a
	ei			;306d
	pop de			;306e
	ld hl,039f8h		;306f
	xor a			;3072
	sbc hl,de		;3073
	ld de,03938h		;3075
	add hl,de			;3078
	ex de,hl			;3079
	ld hl,0cb00h		;307a
	pop bc			;307d
	ld b,001h		;307e
	push bc			;3080
@draw_top_score_digit:
	ex de,hl			;3081
	ld bc,4		;3082
	di			;3085
	call sub_cp_ram_vram		;3086
	ei			;3089
	pop bc			;308a
	ld hl,0c488h		;308b
	ld de,039f8h		;308e
	djnz @draw_bottom_score_digit		;3091
	ld a,(hl)			;3093
	inc hl			;3094
	ld b,(hl)			;3095
	cp 003h		;3096
	jp nz,@finish_score_update		;3098
	sub b			;309b
	jp nz,@finish_score_update		;309c
	ld a,(0c48bh)		;309f
	cp 000h		;30a2
	jr nz,@finish_score_update		;30a4
	ld a,001h		;30a6
	call sub_wait_a_frames		;30a8
	call @sub_313ch		;30ab
	ld a,050h		;30ae
	call sub_wait_a_frames		;30b0
	call @sub_315eh		;30b3
@finish_score_update:
	xor a			;30b6
	ld (0c4a6h),a		;30b7
	ld (0c49dh),a		;30ba
	call sub_update_announcement_timer		;30bd
	xor a			;30c0
	ld (score.announcement),a		;30c1
	ld (0c49eh),a		;30c4
	ld a,001h		;30c7
	ld (0c49dh),a		;30c9
	ld a,(0c089h)		;30cc
	or 080h		;30cf
	ld (0c089h),a		;30d1
	ret			;30d4
@special_score_state:
	ld hl,score.point.bottom		;30d5
	ld a,(hl)			;30d8
	cp 007h		;30d9
	jp c,@check_top_special_score		;30db
	inc hl			;30de
	sub (hl)			;30df
	jp c,@check_top_special_score		;30e0
	cp 002h		;30e3
	jp c,@check_top_special_score		;30e5
	ld a,001h		;30e8
	jp @set_winner		;30ea
@check_top_special_score:
	ld hl,score.point.top		;30ed
	ld a,(hl)			;30f0
	cp 007h		;30f1
	jp c,@draw_special_score		;30f3
	dec hl			;30f6
	sub (hl)			;30f7
	jp c,@draw_special_score		;30f8
	cp 002h		;30fb
	jp c,@draw_special_score		;30fd
	ld a,010h		;3100
	jp @set_winner		;3102
@draw_special_score:
	ld a,(score.point.bottom)		;3105
	call sub_div10		;3108
	ld a,d			;310b
	cp 000h		;310c
	jr z,@draw_bottom_tens_digit		;310e
	ld hl,039f8h		;3110
	ld b,002h		;3113
	jr @draw_bottom_score		;3115
@draw_bottom_tens_digit:
	ld hl,039fah		;3117
	ld b,001h		;311a
@draw_bottom_score:
	call sub_3192_draw		;311c
	ld a,(score.point.top)		;311f
	call sub_div10		;3122
	ld a,d			;3125
	cp 000h		;3126
	jr z,@draw_top_tens_digit		;3128
	ld hl,03938h		;312a
	ld b,002h		;312d
	jr @draw_top_score		;312f
@draw_top_tens_digit:
	ld hl,0393ah		;3131
	ld b,001h		;3134
@draw_top_score:
	call sub_3192_draw		;3136
	jp @finish_score_update		;3139
@sub_313ch:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_9a		;313c
	ld (psg_engine.track_request_id),a		;313e
	ld hl,03904h		;3141
	ld (0c4a8h),hl		;3144
	ld hl,0c9c6h		;3147
	ld (0c4aah),hl		;314a
	ld h,004h		;314d
	ld l,007h		;314f
	ld (0c4ach),hl		;3151
	ld a,001h		;3154
	ld (0c4a7h),a		;3156
	xor a			;3159
	ld (0c4afh),a		;315a
	ret			;315d
@sub_315eh:
	ld hl,038c4h		;315e
	ld (0c4a8h),hl		;3161
	ld hl,0caa6h		;3164
	ld (0c4aah),hl		;3167
	ld h,005h		;316a
	ld l,007h		;316c
	ld (0c4ach),hl		;316e
	ld a,001h		;3171
	ld (0c4a7h),a		;3173
	ret			;3176
@set_winner:
	ld (score.winner_player),a		;3177
	ld a,001h		;317a
	ld (score.game_lost),a		;317c
	jp @finish_score_update		;317f

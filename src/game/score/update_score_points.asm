sub_update_score_points:
	call @sub_315eh		; cd 5e 31 ;2fea
	ld a,(score.tie_break)		; 3a 81 c4 ;2fed
	cp 000h		; fe 00 ;2ff0
	jp nz,@special_score_state		; c2 d5 30 ;2ff2
	ld a,(score.point.bottom)		; 3a 88 c4 ;2ff5
	cp 004h		; fe 04 ;2ff8
	jp c,@check_top_score		; da 0f 30 ;2ffa
	jp nz,@bottom_wins		; c2 2a 30 ;2ffd
	ld hl,score.point.top		; 21 89 c4 ;3000
	sub (hl)			; 96 ;3003
	jp z,@deuce		; ca 2f 30 ;3004
	ld a,(score.point.top)		; 3a 89 c4 ;3007
	cp 003h		; fe 03 ;300a
	jp c,@bottom_wins		; da 2a 30 ;300c
@check_top_score:
	ld a,(score.point.top)		; 3a 89 c4 ;300f
	cp 004h		; fe 04 ;3012
	jp c,@l3037h		; da 37 30 ;3014
	jp nz,@bottom_wins_a		; c2 25 30 ;3017
	ld a,(score.point.bottom)		; 3a 88 c4 ;301a
	cp 003h		; fe 03 ;301d
	jp c,@bottom_wins_a		; da 25 30 ;301f
	jp @l3037h		; c3 37 30 ;3022
@bottom_wins_a:
	ld a,010h		; 3e 10 ;3025
	jp @set_winner		; c3 77 31 ;3027
@bottom_wins:
	ld a,001h		; 3e 01 ;302a
	jp @set_winner		; c3 77 31 ;302c
@deuce:
	ld a,003h		; 3e 03 ;302f
	ld (score.point.bottom),a		; 32 88 c4 ;3031
	ld (score.point.top),a		; 32 89 c4 ;3034
@l3037h:
	ld b,002h		; 06 02 ;3037
	ld de,03938h		; 11 38 39 ;3039
	ld hl,score.point.top		; 21 89 c4 ;303c
@draw_bottom_score_digit:
	push bc			; c5 ;303f
	ld a,(hl)			; 7e ;3040
	cp 000h		; fe 00 ;3041
	jr nz,@bottom_score_digit_1		; 20 03 ;3043
	ld hl,0caech		; 21 ec ca ;3045
@bottom_score_digit_1:
	cp 001h		; fe 01 ;3048
	jr nz,@bottom_score_digit_2		; 20 03 ;304a
	ld hl,0caf0h		; 21 f0 ca ;304c
@bottom_score_digit_2:
	cp 002h		; fe 02 ;304f
	jr nz,@bottom_score_digit_3		; 20 03 ;3051
	ld hl,0caf4h		; 21 f4 ca ;3053
@bottom_score_digit_3:
	cp 003h		; fe 03 ;3056
	jr nz,@bottom_score_digit_4		; 20 03 ;3058
	ld hl,0caf8h		; 21 f8 ca ;305a
@bottom_score_digit_4:
	cp 004h		; fe 04 ;305d
	jr nz,@draw_top_score_digit		; 20 20 ;305f
	ld hl,0cafch		; 21 fc ca ;3061
	push de			; d5 ;3064
	ex de,hl			; eb ;3065
	ld bc,4		; 01 04 00 ;3066
	di			; f3 ;3069
	call sub_cp_ram_vram		; cd 2f 04 ;306a
	ei			; fb ;306d
	pop de			; d1 ;306e
	ld hl,039f8h		; 21 f8 39 ;306f
	xor a			; af ;3072
	sbc hl,de		; ed 52 ;3073
	ld de,03938h		; 11 38 39 ;3075
	add hl,de			; 19 ;3078
	ex de,hl			; eb ;3079
	ld hl,0cb00h		; 21 00 cb ;307a
	pop bc			; c1 ;307d
	ld b,001h		; 06 01 ;307e
	push bc			; c5 ;3080
@draw_top_score_digit:
	ex de,hl			; eb ;3081
	ld bc,4		; 01 04 00 ;3082
	di			; f3 ;3085
	call sub_cp_ram_vram		; cd 2f 04 ;3086
	ei			; fb ;3089
	pop bc			; c1 ;308a
	ld hl,0c488h		; 21 88 c4 ;308b
	ld de,039f8h		; 11 f8 39 ;308e
	djnz @draw_bottom_score_digit		; 10 ac ;3091
	ld a,(hl)			; 7e ;3093
	inc hl			; 23 ;3094
	ld b,(hl)			; 46 ;3095
	cp 003h		; fe 03 ;3096
	jp nz,@finish_score_update		; c2 b6 30 ;3098
	sub b			; 90 ;309b
	jp nz,@finish_score_update		; c2 b6 30 ;309c
	ld a,(0c48bh)		; 3a 8b c4 ;309f
	cp 000h		; fe 00 ;30a2
	jr nz,@finish_score_update		; 20 10 ;30a4
	ld a,001h		; 3e 01 ;30a6
	call sub_wait_a_frames		; cd e6 35 ;30a8
	call @sub_313ch		; cd 3c 31 ;30ab
	ld a,050h		; 3e 50 ;30ae
	call sub_wait_a_frames		; cd e6 35 ;30b0
	call @sub_315eh		; cd 5e 31 ;30b3
@finish_score_update:
	xor a			; af ;30b6
	ld (0c4a6h),a		; 32 a6 c4 ;30b7
	ld (0c49dh),a		; 32 9d c4 ;30ba
	call sub_update_announcement_timer		; cd 66 35 ;30bd
	xor a			; af ;30c0
	ld (score.announcement),a		; 32 a5 c4 ;30c1
	ld (0c49eh),a		; 32 9e c4 ;30c4
	ld a,001h		; 3e 01 ;30c7
	ld (0c49dh),a		; 32 9d c4 ;30c9
	ld a,(0c089h)		; 3a 89 c0 ;30cc
	or 080h		; f6 80 ;30cf
	ld (0c089h),a		; 32 89 c0 ;30d1
	ret			; c9 ;30d4
@special_score_state:
	ld hl,score.point.bottom		; 21 88 c4 ;30d5
	ld a,(hl)			; 7e ;30d8
	cp 007h		; fe 07 ;30d9
	jp c,@check_top_special_score		; da ed 30 ;30db
	inc hl			; 23 ;30de
	sub (hl)			; 96 ;30df
	jp c,@check_top_special_score		; da ed 30 ;30e0
	cp 002h		; fe 02 ;30e3
	jp c,@check_top_special_score		; da ed 30 ;30e5
	ld a,001h		; 3e 01 ;30e8
	jp @set_winner		; c3 77 31 ;30ea
@check_top_special_score:
	ld hl,score.point.top		; 21 89 c4 ;30ed
	ld a,(hl)			; 7e ;30f0
	cp 007h		; fe 07 ;30f1
	jp c,@draw_special_score		; da 05 31 ;30f3
	dec hl			; 2b ;30f6
	sub (hl)			; 96 ;30f7
	jp c,@draw_special_score		; da 05 31 ;30f8
	cp 002h		; fe 02 ;30fb
	jp c,@draw_special_score		; da 05 31 ;30fd
	ld a,010h		; 3e 10 ;3100
	jp @set_winner		; c3 77 31 ;3102
@draw_special_score:
	ld a,(score.point.bottom)		; 3a 88 c4 ;3105
	call sub_div10		; cd 82 31 ;3108
	ld a,d			; 7a ;310b
	cp 000h		; fe 00 ;310c
	jr z,@draw_bottom_tens_digit		; 28 07 ;310e
	ld hl,039f8h		; 21 f8 39 ;3110
	ld b,002h		; 06 02 ;3113
	jr @draw_bottom_score		; 18 05 ;3115
@draw_bottom_tens_digit:
	ld hl,039fah		; 21 fa 39 ;3117
	ld b,001h		; 06 01 ;311a
@draw_bottom_score:
	call sub_3192_draw		; cd 92 31 ;311c
	ld a,(score.point.top)		; 3a 89 c4 ;311f
	call sub_div10		; cd 82 31 ;3122
	ld a,d			; 7a ;3125
	cp 000h		; fe 00 ;3126
	jr z,@draw_top_tens_digit		; 28 07 ;3128
	ld hl,03938h		; 21 38 39 ;312a
	ld b,002h		; 06 02 ;312d
	jr @draw_top_score		; 18 05 ;312f
@draw_top_tens_digit:
	ld hl,0393ah		; 21 3a 39 ;3131
	ld b,001h		; 06 01 ;3134
@draw_top_score:
	call sub_3192_draw		; cd 92 31 ;3136
	jp @finish_score_update		; c3 b6 30 ;3139
@sub_313ch:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_9a		; 3e 9a ;313c
	ld (psg_engine.track_request_id),a		; 32 00 de ;313e
	ld hl,03904h		; 21 04 39 ;3141
	ld (0c4a8h),hl		; 22 a8 c4 ;3144
	ld hl,0c9c6h		; 21 c6 c9 ;3147
	ld (0c4aah),hl		; 22 aa c4 ;314a
	ld h,004h		; 26 04 ;314d
	ld l,007h		; 2e 07 ;314f
	ld (0c4ach),hl		; 22 ac c4 ;3151
	ld a,001h		; 3e 01 ;3154
	ld (0c4a7h),a		; 32 a7 c4 ;3156
	xor a			; af ;3159
	ld (0c4afh),a		; 32 af c4 ;315a
	ret			; c9 ;315d
@sub_315eh:
	ld hl,038c4h		; 21 c4 38 ;315e
	ld (0c4a8h),hl		; 22 a8 c4 ;3161
	ld hl,0caa6h		; 21 a6 ca ;3164
	ld (0c4aah),hl		; 22 aa c4 ;3167
	ld h,005h		; 26 05 ;316a
	ld l,007h		; 2e 07 ;316c
	ld (0c4ach),hl		; 22 ac c4 ;316e
	ld a,001h		; 3e 01 ;3171
	ld (0c4a7h),a		; 32 a7 c4 ;3173
	ret			; c9 ;3176
@set_winner:
	ld (score.winner_player),a		; 32 97 c4 ;3177
	ld a,001h		; 3e 01 ;317a
	ld (score.game_lost),a		; 32 95 c4 ;317c
	jp @finish_score_update		; c3 b6 30 ;317f

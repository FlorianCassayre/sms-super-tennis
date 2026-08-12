l11b1h_racket_hit:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_racket_hit		; 3e 8c ;11b1
	ld (psg_engine.track_request_id),a		; 32 00 de ;11b3
	ld a,(0c509h)		; 3a 09 c5 ;11b6
	sub 080h		; d6 80 ;11b9
	jr nc,l11bfh		; 30 02 ;11bb
	neg		; ed 44 ;11bd
l11bfh:
	ld hl,l1215h		; 21 15 12 ;11bf
	cp 01ch		; fe 1c ;11c2
	jr c,l11c9h		; 38 03 ;11c4
	ld hl,l1209h		; 21 09 12 ;11c6
l11c9h:
	ld a,(state.ball_hit_type)		; 3a 46 c0 ;11c9
	add a,a			; 87 ;11cc
	add a,a			; 87 ;11cd
	ld c,a			; 4f ;11ce
	ld b,000h		; 06 00 ;11cf
	add hl,bc			; 09 ;11d1
	ld e,(hl)			; 5e ;11d2
	inc hl			; 23 ;11d3
	ld d,(hl)			; 56 ;11d4
	inc hl			; 23 ;11d5
	ld c,(hl)			; 4e ;11d6
	inc hl			; 23 ;11d7
	ld b,(hl)			; 46 ;11d8
	ld a,(0c042h)		; 3a 42 c0 ;11d9
	and 001h		; e6 01 ;11dc
	jr z,l11e7h		; 28 07 ;11de
	xor a			; af ;11e0
	ld hl,0		; 21 00 00 ;11e1
	sbc hl,de		; ed 52 ;11e4
	ex de,hl			; eb ;11e6
l11e7h:
	ld (ball.y_vel),de		; ed 53 0c c5 ;11e7
	ld (ball.z_vel),bc		; ed 43 06 c5 ;11eb
	ld hl,l1221h		; 21 21 12 ;11ef
	ld a,(state.ball_hit_type)		; 3a 46 c0 ;11f2
	add a,a			; 87 ;11f5
	ld c,a			; 4f ;11f6
	ld b,000h		; 06 00 ;11f7
	add hl,bc			; 09 ;11f9
	ld e,(hl)			; 5e ;11fa
	inc hl			; 23 ;11fb
	ld d,(hl)			; 56 ;11fc
	ld (ball.z_gravity),de		; ed 53 02 c5 ;11fd
	ld c,002h		; 0e 02 ;1201
	call sub_compute_ball_x_velocity		; cd a8 13 ;1203
	jp sub_l1362h		; c3 62 13 ;1206
l1209h:
	.DB $c0		;1209
	.DB $fd		;120a
	.DB $e0		;120b
	.DB $ff		;120c
	.DB $00		;120d
	.DB $fd		;120e
	.DB $d6		;120f
	.DB $ff		;1210
	.DB $80		;1211
	.DB $fb		;1212
	.DB $c0		;1213
	.DB $ff		;1214
l1215h:
	.DB $c0		;1215
	.DB $fd		;1216
	.DB $40		;1217
	.DB $00		;1218
	.DB $00		;1219
	.DB $fd		;121a
	.DB $54		;121b
	.DB $00		;121c
	.DB $80		;121d
	.DB $fb		;121e
	.DB $80		;121f
	.DB $00		;1220
l1221h:
	.DB $09		;1221
	.DB $00		;1222
	.DB $0f		;1223
	.DB $00		;1224
	.DB $1c		;1225
	.DB $00		;1226

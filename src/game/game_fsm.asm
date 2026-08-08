game_fsm:
	call sub_audio_event_wait		; cd 6a 03 ;07f8
	ld hl,game_fsm		; 21 f8 07 ;07fb
	push hl			; e5 ;07fe
	ld a,(0c006h)		; 3a 06 c0 ;07ff
	and 00fh		; e6 0f ;0802
	ld hl,l0811h		; 21 11 08 ;0804
l0807h_game_fsm:
	add a,a			; 87 ;0807
	ld e,a			; 5f ;0808
	ld d,000h		; 16 00 ;0809
	add hl,de			; 19 ;080b
	ld a,(hl)			; 7e ;080c
	inc hl			; 23 ;080d
	ld h,(hl)			; 66 ;080e
	ld l,a			; 6f ;080f
	jp (hl)			; e9 ;0810

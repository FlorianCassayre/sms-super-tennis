sub_wait_a_frames:
	push af			;35e6
	push bc			;35e7
	push de			;35e8
	push hl			;35e9
	ld b,a			;35ea
-:
	push bc			;35eb
	ld a,(state.sound_wait_flag)		;35ec
	or 080h		;35ef
	ld (state.sound_wait_flag),a		;35f1
	call sub_audio_event_wait		;35f4
	pop bc			;35f7
	djnz -		;35f8
	pop hl			;35fa
	pop de			;35fb
	pop bc			;35fc
	pop af			;35fd
	ret			;35fe

sub_wait_a_frames:
	push af			; f5 ;35e6
	push bc			; c5 ;35e7
	push de			; d5 ;35e8
	push hl			; e5 ;35e9
	ld b,a			; 47 ;35ea
-:
	push bc			; c5 ;35eb
	ld a,(0c089h)		; 3a 89 c0 ;35ec
	or 080h		; f6 80 ;35ef
	ld (0c089h),a		; 32 89 c0 ;35f1
	call sub_audio_event_wait		; cd 6a 03 ;35f4
	pop bc			; c1 ;35f7
	djnz -		; 10 f1 ;35f8
	pop hl			; e1 ;35fa
	pop de			; d1 ;35fb
	pop bc			; c1 ;35fc
	pop af			; f1 ;35fd
	ret			; c9 ;35fe

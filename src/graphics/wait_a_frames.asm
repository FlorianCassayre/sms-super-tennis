sub_wait_a_frames:
	push af
	push bc
	push de
	push hl
	ld b,a
-:
	push bc
	ld a,(state.sound_wait_flag)
	or 080h
	ld (state.sound_wait_flag),a
	call sub_audio_event_wait
	pop bc
	djnz -
	pop hl
	pop de
	pop bc
	pop af
	ret

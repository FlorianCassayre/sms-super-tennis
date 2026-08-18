sub_audio_track_routine_sound:
	or a
	jr nz,l7ad7h
	ld de,psg_channel.2
	.IFDEF _J
		call sub_audio_silence
	.ENDIF
	call sub_audio_clear_sfx_channels
l7aafh:
	.IFDEF _UE
		push bc
		call sub_audio_silence
		pop bc
	.ENDIF
	ld h,b
	ld l,c
	ld b,(hl)
	inc hl
l7ab8h:
	push bc
	ld bc,9
	ldir
	ld a,020h
	ld (de),a
	inc de
	ld a,001h
	ld (de),a
	inc de
	xor a
	ld (de),a
	inc de
	ld (de),a
	inc de
	ld (de),a
	push hl
	ld hl,00012h
	add hl,de
	ex de,hl
	pop hl
	inc de
	pop bc
	djnz l7ab8h
l7ad7h:
	ld a,080h
	ld (psg_engine.track_request_id),a
	ret

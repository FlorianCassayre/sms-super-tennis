sub_audio_track_routine_sound:
	or a			;7aa6
	jr nz,l7ad7h		;7aa7
	ld de,psg_channel.2		;7aa9
	.IFDEF _J
		call sub_audio_silence
	.ENDIF
	call sub_audio_clear_sfx_channels		;7aac
l7aafh:
	.IFDEF _UE
		push bc			;7aaf
		call sub_audio_silence		;7ab0
		pop bc			;7ab3
	.ENDIF
	ld h,b			;7ab4
	ld l,c			;7ab5
	ld b,(hl)			;7ab6
	inc hl			;7ab7
l7ab8h:
	push bc			;7ab8
	ld bc,9		;7ab9
	ldir		;7abc
	ld a,020h		;7abe
	ld (de),a			;7ac0
	inc de			;7ac1
	ld a,001h		;7ac2
	ld (de),a			;7ac4
	inc de			;7ac5
	xor a			;7ac6
	ld (de),a			;7ac7
	inc de			;7ac8
	ld (de),a			;7ac9
	inc de			;7aca
	ld (de),a			;7acb
	push hl			;7acc
	ld hl,00012h		;7acd
	add hl,de			;7ad0
	ex de,hl			;7ad1
	pop hl			;7ad2
	inc de			;7ad3
	pop bc			;7ad4
	djnz l7ab8h		;7ad5
l7ad7h:
	ld a,080h		;7ad7
	ld (psg_engine.track_request_id),a		;7ad9
	ret			;7adc

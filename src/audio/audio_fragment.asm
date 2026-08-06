.INCLUDE "audio/audio_update_channels.asm"
sub_798ch:
	ld a,(psg_engine.state)		; 3a 01 de ;798c
	or a			; b7 ;798f
	ret z			; c8 ;7990
	ld hl,psg_engine.tempo_countdown		; 21 02 de ;7991
	dec (hl)			; 35 ;7994
	ret nz			; c0 ;7995
	ld a,a			; 7f ;7996
	dec a			; 3d ;7997
	ld (psg_channel.1.base_volume),a		; 32 0d de ;7998
	ld (psg_channel.2.base_volume),a		; 32 2d de ;799b
	ld (psg_channel.3.base_volume),a		; 32 4d de ;799e
	ld (psg_engine.state),a		; 32 01 de ;79a1
	ld a,018h		; 3e 18 ;79a4
	ld (hl),a			; 77 ;79a6
	ret			; c9 ;79a7
.INCLUDE "audio/audio_track_loader.asm"
l7a3fh:
	ld hl,psg_engine.state		; 21 01 de ;7a3f
	ld (hl),c			; 71 ;7a42
	inc hl			; 23 ;7a43
	ld (hl),b			; 70 ;7a44
	xor a			; af ;7a45
	ld (psg_channel.4),a		; 32 65 de ;7a46
	dec a			; 3d ;7a49
	out (O_PSG_ALT),a		; d3 7f ;7a4a
	jp l7ad7h		; c3 d7 7a ;7a4c
l7a4fh:
	xor a			; af ;7a4f
	ld (psg_channel.2),a		; 32 25 de ;7a50
	ld (psg_channel.3),a		; 32 45 de ;7a53
	ld a,0bfh		; 3e bf ;7a56
	out (O_PSG_ALT),a		; d3 7f ;7a58
	ld a,0dfh		; 3e df ;7a5a
	out (O_PSG_ALT),a		; d3 7f ;7a5c
	jp l7ad7h		; c3 d7 7a ;7a5e
l7a61h:
	call l7dc8h		; cd c8 7d ;7a61
	ld a,080h		; 3e 80 ;7a64
	ld (psg_engine.priority_flag),a		; 32 03 de ;7a66
l7a69h:
	ld de,psg_channel.1		; 11 05 de ;7a69
	jr l7aafh		; 18 41 ;7a6c
l7a6eh:
	ld e,010h		; 1e 10 ;7a6e
	jr l7a92h		; 18 20 ;7a70
l7a72h:
	or a			; b7 ;7a72
	jr nz,l7ad7h		; 20 62 ;7a73
	ld (psg_engine.priority_flag),a		; 32 03 de ;7a75
	ld de,psg_channel.5		; 11 85 de ;7a78
	.IFDEF _J
		.DB $3e
		.DB $df
		.DB $d3
		.DB $7f
	.ENDIF
	ld hl,psg_channel.1		; 21 05 de ;7a7b
	set 2,(hl)		; cb d6 ;7a7e
	ld hl,psg_channel.2		; 21 25 de ;7a80
	set 2,(hl)		; cb d6 ;7a83
	ld hl,psg_channel.3		; 21 45 de ;7a85
	set 2,(hl)		; cb d6 ;7a88
	jp l7aafh		; c3 af 7a ;7a8a
l7a8dh:
	.IFDEF _J
		.DB $1e
		.DB $08
	.ENDIF
	.IFDEF _UE
		or a			; b7 ;7a8d
		jr nz,l7ad7h		; 20 47 ;7a8e
		jr l7a99h		; 18 07 ;7a90
	.ENDIF
l7a92h:
	cp e			; bb ;7a92
	jr nc,l7ad7h		; 30 42 ;7a93
	ld a,e			; 7b ;7a95
	ld (psg_engine.priority_flag),a		; 32 03 de ;7a96
	.IFDEF _J
		call sub_audio_silence
	.ENDIF
l7a99h:
	call sub_7de3h		; cd e3 7d ;7a99
	jr l7aa1h		; 18 03 ;7a9c
l7a9eh:
	or a			; b7 ;7a9e
	jr nz,l7ad7h		; 20 36 ;7a9f
l7aa1h:
	ld de,psg_channel.1		; 11 05 de ;7aa1
	jr l7aafh		; 18 09 ;7aa4
l7aa6h;
	or a			; b7 ;7aa6
	jr nz,l7ad7h		; 20 2e ;7aa7
	ld de,psg_channel.2		; 11 25 de ;7aa9
	.IFDEF _J
		call sub_audio_silence
	.ENDIF
	call sub_7de3h		; cd e3 7d ;7aac
l7aafh:
	.IFDEF _UE
		push bc			; c5 ;7aaf
		call sub_audio_silence		; cd d7 7d ;7ab0
		pop bc			; c1 ;7ab3
	.ENDIF
	ld h,b			; 60 ;7ab4
	ld l,c			; 69 ;7ab5
	ld b,(hl)			; 46 ;7ab6
	inc hl			; 23 ;7ab7
l7ab8h:
	push bc			; c5 ;7ab8
	ld bc,9		; 01 09 00 ;7ab9
	ldir		; ed b0 ;7abc
	ld a,020h		; 3e 20 ;7abe
	ld (de),a			; 12 ;7ac0
	inc de			; 13 ;7ac1
	ld a,001h		; 3e 01 ;7ac2
	ld (de),a			; 12 ;7ac4
	inc de			; 13 ;7ac5
	xor a			; af ;7ac6
	ld (de),a			; 12 ;7ac7
	inc de			; 13 ;7ac8
	ld (de),a			; 12 ;7ac9
	inc de			; 13 ;7aca
	ld (de),a			; 12 ;7acb
	push hl			; e5 ;7acc
	ld hl,00012h		; 21 12 00 ;7acd
	add hl,de			; 19 ;7ad0
	ex de,hl			; eb ;7ad1
	pop hl			; e1 ;7ad2
	inc de			; 13 ;7ad3
	pop bc			; c1 ;7ad4
	djnz l7ab8h		; 10 e1 ;7ad5
l7ad7h:
	ld a,080h		; 3e 80 ;7ad7
	ld (psg_engine.track_request_id),a		; 32 00 de ;7ad9
	ret			; c9 ;7adc
sub_audio_process_active_channel:
	ld e,(ix + psg_channel_t.current_tick)		; dd 5e 0c ;7add
	ld d,(ix + psg_channel_t.current_tick + 1)		; dd 56 0d ;7ae0
	inc de			; 13 ;7ae3
	ld (ix + psg_channel_t.current_tick),e		; dd 73 0c ;7ae4
	ld (ix + psg_channel_t.current_tick + 1),d		; dd 72 0d ;7ae7
	ld l,(ix + psg_channel_t.target_duration)		; dd 6e 0a ;7aea
	ld h,(ix + psg_channel_t.target_duration + 1)		; dd 66 0b ;7aed
	or a			; b7 ;7af0
	sbc hl,de		; ed 52 ;7af1
	call z,sub_7c43h		; cc 43 7c ;7af3
	ld e,(ix + psg_channel_t.base_frequency)		; dd 5e 10 ;7af6
	ld d,(ix + psg_channel_t.base_frequency + 1)		; dd 56 11 ;7af9
	ld a,e			; 7b ;7afc
	or d			; b2 ;7afd
	jr nz,l7b07h		; 20 07 ;7afe
	ld (ix + psg_channel_t.current_volume),00fh		; dd 36 16 0f ;7b00
	jp l7bb5h		; c3 b5 7b ;7b04
l7b07h:
	bit 5,(ix + psg_channel_t.status_flags)		; dd cb 00 6e ;7b07
	jr nz,sub_audio_calculate_pitch_slide		; 20 25 ;7b0b
	ld a,(ix + psg_channel_t.effect_timer)		; dd 7e 06 ;7b0d
	or a			; b7 ;7b10
	jr nz,l7b27h		; 20 14 ;7b11
	ld (ix + psg_channel_t.final_frequency),e		; dd 73 12 ;7b13
	ld (ix + psg_channel_t.final_frequency + 1),d		; dd 72 13 ;7b16
	jp l7b6eh		; c3 6e 7b ;7b19
	.INCLUDE "physics/get_terrain_table.asm"
l7b27h:
	ld hl,l7956h		; 21 56 79 ;7b27
	call sub_get_terrain_table		; cd 1c 7b ;7b2a
	call sub_audio_get_envelope_table		; cd 0d 7c ;7b2d
	jr l7b6eh		; 18 3c ;7b30
sub_audio_calculate_pitch_slide:
	push de			; d5 ;7b32
	ld l,(ix + psg_channel_t.slide_target_frequency_low)		; dd 6e 14 ;7b33
	ld h,(ix + psg_channel_t.slide_target_frequency_high)		; dd 66 15 ;7b36
	or a			; b7 ;7b39
	sbc hl,de		; ed 52 ;7b3a
	push af			; f5 ;7b3c
	ld a,l			; 7d ;7b3d
	jp p,l7b43h		; f2 43 7b ;7b3e
	neg		; ed 44 ;7b41
l7b43h:
	ld h,a			; 67 ;7b43
	ld e,(ix + psg_channel_t.current_tick)		; dd 5e 0c ;7b44
	call sub_mul_h_e		; cd 84 7e ;7b47
	ld e,(ix + psg_channel_t.target_duration)		; dd 5e 0a ;7b4a
	call sub_div_hl_e		; cd 90 7e ;7b4d
	ld e,a			; 5f ;7b50
	ld d,000h		; 16 00 ;7b51
	pop af			; f1 ;7b53
	ld a,e			; 7b ;7b54
	jp p,l7b5eh		; f2 5e 7b ;7b55
	neg		; ed 44 ;7b58
	jr z,l7b5eh		; 28 02 ;7b5a
	dec d			; 15 ;7b5c
	ld e,a			; 5f ;7b5d
l7b5eh:
	pop hl			; e1 ;7b5e
	add hl,de			; 19 ;7b5f
	ex de,hl			; eb ;7b60
	ld (ix + psg_channel_t.final_frequency),e		; dd 73 12 ;7b61
	ld (ix + psg_channel_t.final_frequency + 1),d		; dd 72 13 ;7b64
	ld a,(ix + psg_channel_t.effect_timer)		; dd 7e 06 ;7b67
	or a			; b7 ;7b6a
	jp nz,l7b27h		; c2 27 7b ;7b6b
l7b6eh:
	ld a,(ix + psg_channel_t.envelope_id_pointer)		; dd 7e 07 ;7b6e
	or a			; b7 ;7b71
	jr nz,l7b7fh		; 20 0b ;7b72
	ld a,(ix + psg_channel_t.base_volume)		; dd 7e 08 ;7b74
	cpl			; 2f ;7b77
	and 00fh		; e6 0f ;7b78
	ld (ix + psg_channel_t.current_volume),a		; dd 77 16 ;7b7a
	jr l7b8ah		; 18 0b ;7b7d
l7b7fh:
	res 7,a		; cb bf ;7b7f
	ld hl,l7905h		; 21 05 79 ;7b81
	call sub_get_terrain_table		; cd 1c 7b ;7b84
	call sub_audio_compute_word_offset		; cd d3 7b ;7b87
l7b8ah:
	bit 6,(ix + psg_channel_t.status_flags)		; dd cb 00 76 ;7b8a
	jr nz,l7bb5h		; 20 25 ;7b8e
	ld a,(ix + psg_channel_t.psg_channel_map)		; dd 7e 01 ;7b90
	and 00fh		; e6 0f ;7b93
	ld c,a			; 4f ;7b95
	ld b,000h		; 06 00 ;7b96
	ld hl,l7bc8h_audio		; 21 c8 7b ;7b98
	add hl,bc			; 09 ;7b9b
	ld c,(hl)			; 4e ;7b9c
	ld a,(ix + psg_channel_t.final_frequency)		; dd 7e 12 ;7b9d
	and 00fh		; e6 0f ;7ba0
	or c			; b1 ;7ba2
	call sub_write_psg		; cd c0 7d ;7ba3
	ld a,(ix + psg_channel_t.final_frequency)		; dd 7e 12 ;7ba6
	and 0f0h		; e6 f0 ;7ba9
	or (ix + psg_channel_t.final_frequency + 1)		; dd b6 13 ;7bab
	rrca			; 0f ;7bae
	rrca			; 0f ;7baf
	rrca			; 0f ;7bb0
	rrca			; 0f ;7bb1
	call sub_write_psg		; cd c0 7d ;7bb2
l7bb5h:
	ld a,(ix + psg_channel_t.psg_channel_map)		; dd 7e 01 ;7bb5
	and 00fh		; e6 0f ;7bb8
	ld c,a			; 4f ;7bba
	ld b,000h		; 06 00 ;7bbb
	ld hl,l7bcch_audio		; 21 cc 7b ;7bbd
	add hl,bc			; 09 ;7bc0
	ld a,(hl)			; 7e ;7bc1
	or (ix + psg_channel_t.current_volume)		; dd b6 16 ;7bc2
	jp sub_write_psg		; c3 c0 7d ;7bc5
l7bc8h_audio:
	.DB $80 $a0 $c0 $c0			;7bc8
l7bcch_audio:
	.DB $90 $b0 $d0 $f0			;7bcc
	.INCLUDE "audio/audio_compute_word_offset.asm"
	.INCLUDE "physics/audio_get_envelope_table.asm"
sub_7c43h:
	ld e,(ix + psg_channel_t.track_data_pointer)		; dd 5e 03 ;7c43
	ld d,(ix + psg_channel_t.track_data_pointer + 1)		; dd 56 04 ;7c46
l7c49h:
	ld a,(de)			; 1a ;7c49
	inc de			; 13 ;7c4a
	cp 0e0h		; fe e0 ;7c4b
	jp nc,l7cd7h		; d2 d7 7c ;7c4d
	bit 3,(ix + psg_channel_t.status_flags)		; dd cb 00 5e ;7c50
	jr nz,l7cb6h		; 20 60 ;7c54
	or a			; b7 ;7c56
	jp p,l7c92h		; f2 92 7c ;7c57
	sub 080h		; d6 80 ;7c5a
	jr z,l7c61h		; 28 03 ;7c5c
	add a,(ix+005h)		; dd 86 05 ;7c5e
l7c61h:
	ld hl,table_note_frequencies		; 21 f2 7d ;7c61
	ld c,a			; 4f ;7c64
	ld b,000h		; 06 00 ;7c65
	add hl,bc			; 09 ;7c67
	add hl,bc			; 09 ;7c68
	ld a,(hl)			; 7e ;7c69
	ld (ix + psg_channel_t.base_frequency),a		; dd 77 10 ;7c6a
	inc hl			; 23 ;7c6d
	ld a,(hl)			; 7e ;7c6e
	ld (ix + psg_channel_t.base_frequency + 1),a		; dd 77 11 ;7c6f
	bit 5,(ix + psg_channel_t.status_flags)		; dd cb 00 6e ;7c72
	jr z,l7cd0h		; 28 58 ;7c76
	ld a,(de)			; 1a ;7c78
	inc de			; 13 ;7c79
	sub 080h		; d6 80 ;7c7a
	add a,(ix+005h)		; dd 86 05 ;7c7c
	ld hl,table_note_frequencies		; 21 f2 7d ;7c7f
	ld c,a			; 4f ;7c82
	ld b,000h		; 06 00 ;7c83
	add hl,bc			; 09 ;7c85
	add hl,bc			; 09 ;7c86
	ld a,(hl)			; 7e ;7c87
	ld (ix + psg_channel_t.slide_target_frequency_low),a		; dd 77 14 ;7c88
	inc hl			; 23 ;7c8b
	ld a,(hl)			; 7e ;7c8c
	ld (ix + psg_channel_t.slide_target_frequency_high),a		; dd 77 15 ;7c8d
l7c90h:
	ld a,(de)			; 1a ;7c90
l7c91h:
	inc de			; 13 ;7c91
l7c92h:
	push de			; d5 ;7c92
	ld h,a			; 67 ;7c93
	ld e,(ix + psg_channel_t.note_length_multiplier)		; dd 5e 02 ;7c94
	call sub_mul_h_e		; cd 84 7e ;7c97
	pop de			; d1 ;7c9a
	ld (ix + psg_channel_t.target_duration),l		; dd 75 0a ;7c9b
	ld (ix + psg_channel_t.target_duration + 1),h		; dd 74 0b ;7c9e
l7ca1h:
	xor a			; af ;7ca1
	ld (ix + psg_channel_t.volume_envelope_index),a		; dd 77 0e ;7ca2
	ld (ix + psg_channel_t.pitch_envelope_index),a		; dd 77 0f ;7ca5
	ld (ix + psg_channel_t.track_data_pointer),e		; dd 73 03 ;7ca8
	ld (ix + psg_channel_t.track_data_pointer + 1),d		; dd 72 04 ;7cab
	xor a			; af ;7cae
	ld (ix + psg_channel_t.current_tick),a		; dd 77 0c ;7caf
	ld (ix + psg_channel_t.current_tick + 1),a		; dd 77 0d ;7cb2
	ret			; c9 ;7cb5
l7cb6h:
	ld (ix + psg_channel_t.base_frequency + 1),a		; dd 77 11 ;7cb6
	ld a,(de)			; 1a ;7cb9
	inc de			; 13 ;7cba
	ld (ix + psg_channel_t.base_frequency),a		; dd 77 10 ;7cbb
	bit 5,(ix + psg_channel_t.status_flags)		; dd cb 00 6e ;7cbe
	jr z,l7c90h		; 28 cc ;7cc2
	ld a,(de)			; 1a ;7cc4
	inc de			; 13 ;7cc5
	ld (ix + psg_channel_t.slide_target_frequency_high),a		; dd 77 15 ;7cc6
	ld a,(de)			; 1a ;7cc9
	inc de			; 13 ;7cca
	ld (ix + psg_channel_t.slide_target_frequency_low),a		; dd 77 14 ;7ccb
	jr l7c90h		; 18 c0 ;7cce
l7cd0h:
	ld a,(de)			; 1a ;7cd0
	or a			; b7 ;7cd1
	jp p,l7c91h		; f2 91 7c ;7cd2
	jr l7ca1h		; 18 ca ;7cd5
l7cd7h:
	ld hl,l7ceah		; 21 ea 7c ;7cd7
	push hl			; e5 ;7cda
	and 01fh		; e6 1f ;7cdb
	ld hl,l7ceeh		; 21 ee 7c ;7cdd
	ld c,a			; 4f ;7ce0
	ld b,000h		; 06 00 ;7ce1
	add hl,bc			; 09 ;7ce3
	add hl,bc			; 09 ;7ce4
	ld a,(hl)			; 7e ;7ce5
	inc hl			; 23 ;7ce6
	ld h,(hl)			; 66 ;7ce7
	ld l,a			; 6f ;7ce8
	jp (hl)			; e9 ;7ce9
l7ceah:
	inc de			; 13 ;7cea
	jp l7c49h		; c3 49 7c ;7ceb
.INCLUDE "unknown/jump_table.asm"
l7daah:
	inc de			; 13 ;7daa
	dec (hl)			; 35 ;7dab
	jp nz,l7ceeh_5		; c2 49 7d ;7dac
	inc de			; 13 ;7daf
	ret			; c9 ;7db0
sub_7db1h:
	ld a,(ix + psg_channel_t.psg_channel_map)		; dd 7e 01 ;7db1
	and 00fh		; e6 0f ;7db4
	ld c,a			; 4f ;7db6
	ld b,000h		; 06 00 ;7db7
	ld hl,l7bcch_audio		; 21 cc 7b ;7db9
	add hl,bc			; 09 ;7dbc
	ld a,(hl)			; 7e ;7dbd
	or 00fh		; f6 0f ;7dbe
	.INCLUDE "audio/write_psg.asm"
l7dc8h:
	exx			; d9 ;7dc8
	ld hl,psg_engine.state		; 21 01 de ;7dc9
	ld de,psg_engine.tempo_countdown		; 11 02 de ;7dcc
	ld bc,000dfh		; 01 df 00 ;7dcf
	ld (hl),000h		; 36 00 ;7dd2
	ldir		; ed b0 ;7dd4
	exx			; d9 ;7dd6
	.INCLUDE "audio/audio_silence.asm"
sub_7de3h:
	xor a			; af ;7de3
	ld (psg_channel.5),a		; 32 85 de ;7de4
	ld (psg_channel.6),a		; 32 a5 de ;7de7
	ld (psg_channel.7),a		; 32 c5 de ;7dea
	ret			; c9 ;7ded
data_audio_silence:
	.INCLUDE "audio/data/silence.asm"
	.INCLUDE "audio/data/note_frequencies.asm"
	.INCLUDE "math/mul_h_e.asm"
	.INCLUDE "math/div_hl_e.asm"

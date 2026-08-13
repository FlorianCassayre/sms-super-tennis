.INCLUDE "audio/psg/audio_channel_update.asm"
sub_798ch:
	ld a,(psg_engine.state)		;798c
	or a			;798f
	ret z			;7990
	ld hl,psg_engine.tempo_countdown		;7991
	dec (hl)			;7994
	ret nz			;7995
	ld a,a			;7996
	dec a			;7997
	ld (psg_channel.1.base_volume),a		;7998
	ld (psg_channel.2.base_volume),a		;799b
	ld (psg_channel.3.base_volume),a		;799e
	ld (psg_engine.state),a		;79a1
	ld a,018h		;79a4
	ld (hl),a			;79a6
	ret			;79a7
.INCLUDE "audio/track/audio_track_loader.asm"
.INCLUDE "audio/track/audio_tracks.asm"
l7a3fh:
	ld hl,psg_engine.state		;7a3f
	ld (hl),c			;7a42
	inc hl			;7a43
	ld (hl),b			;7a44
	xor a			;7a45
	ld (psg_channel.4),a		;7a46
	dec a			;7a49
	out (O_PSG_ALT),a		;7a4a
	jp l7ad7h		;7a4c
l7a4fh:
	xor a			;7a4f
	ld (psg_channel.2),a		;7a50
	ld (psg_channel.3),a		;7a53
	ld a,0bfh		;7a56
	out (O_PSG_ALT),a		;7a58
	ld a,0dfh		;7a5a
	out (O_PSG_ALT),a		;7a5c
	jp l7ad7h		;7a5e
audio_track_routine_music:
	call l7dc8h		;7a61
	ld a,080h		;7a64
	ld (psg_engine.priority_flag),a		;7a66
l7a69h:
	ld de,psg_channel.1		;7a69
	jr l7aafh		;7a6c
l7a6eh:
	ld e,010h		;7a6e
	jr l7a92h		;7a70
l7a72h:
	or a			;7a72
	jr nz,l7ad7h		;7a73
	ld (psg_engine.priority_flag),a		;7a75
	ld de,psg_channel.5		;7a78
	.IFDEF _J
		ld a, $df
		out (O_PSG_ALT), a
	.ENDIF
	ld hl,psg_channel.1		;7a7b
	set 2,(hl)		;7a7e
	ld hl,psg_channel.2		;7a80
	set 2,(hl)		;7a83
	ld hl,psg_channel.3		;7a85
	set 2,(hl)		;7a88
	jp l7aafh		;7a8a
audio_track_routine_sound_alt:
	.IFDEF _J
		ld e, $08
	.ENDIF
	.IFDEF _UE
		or a			;7a8d
		jr nz,l7ad7h		;7a8e
		jr l7a99h		;7a90
	.ENDIF
l7a92h:
	cp e			;7a92
	jr nc,l7ad7h		;7a93
	ld a,e			;7a95
	ld (psg_engine.priority_flag),a		;7a96
	.IFDEF _J
		call sub_audio_silence
	.ENDIF
l7a99h:
	call sub_7de3h_clear_audio		;7a99
	jr l7aa1h		;7a9c
l7a9eh:
	or a			;7a9e
	jr nz,l7ad7h		;7a9f
l7aa1h:
	ld de,psg_channel.1		;7aa1
	jr l7aafh		;7aa4
audio_track_routine_sound:
	or a			;7aa6
	jr nz,l7ad7h		;7aa7
	ld de,psg_channel.2		;7aa9
	.IFDEF _J
		call sub_audio_silence
	.ENDIF
	call sub_7de3h_clear_audio		;7aac
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
sub_audio_process_active_channel:
	ld e,(ix + audio_psg_channel_t.current_tick)		;7add
	ld d,(ix + audio_psg_channel_t.current_tick + 1)		;7ae0
	inc de			;7ae3
	ld (ix + audio_psg_channel_t.current_tick),e		;7ae4
	ld (ix + audio_psg_channel_t.current_tick + 1),d		;7ae7
	ld l,(ix + audio_psg_channel_t.target_duration)		;7aea
	ld h,(ix + audio_psg_channel_t.target_duration + 1)		;7aed
	or a			;7af0
	sbc hl,de		;7af1
	call z,sub_7c43h		;7af3
	ld e,(ix + audio_psg_channel_t.base_frequency)		;7af6
	ld d,(ix + audio_psg_channel_t.base_frequency + 1)		;7af9
	ld a,e			;7afc
	or d			;7afd
	jr nz,l7b07h		;7afe
	ld (ix + audio_psg_channel_t.current_volume),00fh		;7b00
	jp sub_audio_volume_process@l7bb5h		;7b04
l7b07h:
	bit 5,(ix + audio_psg_channel_t.status_flags)		;7b07
	jr nz,sub_audio_calculate_pitch_slide		;7b0b
	ld a,(ix + audio_psg_channel_t.effect_timer)		;7b0d
	or a			;7b10
	jr nz,audio_envelope_pitch_process		;7b11
	ld (ix + audio_psg_channel_t.final_frequency),e		;7b13
	ld (ix + audio_psg_channel_t.final_frequency + 1),d		;7b16
	jp sub_audio_volume_process		;7b19
	.INCLUDE "audio/audio_pointer_get_by_id.asm"
audio_envelope_pitch_process:
	ld hl,audio_envelope_pitch_data		;7b27
	call sub_audio_pointer_get_by_id		;7b2a
	call sub_audio_envelope_pitch_apply		;7b2d
	jr sub_audio_volume_process		;7b30
sub_audio_calculate_pitch_slide:
	push de			;7b32
	ld l,(ix + audio_psg_channel_t.slide_target_frequency_low)		;7b33
	ld h,(ix + audio_psg_channel_t.slide_target_frequency_high)		;7b36
	or a			;7b39
	sbc hl,de		;7b3a
	push af			;7b3c
	ld a,l			;7b3d
	jp p,l7b43h		;7b3e
	neg		;7b41
l7b43h:
	ld h,a			;7b43
	ld e,(ix + audio_psg_channel_t.current_tick)		;7b44
	call sub_mul_h_e		;7b47
	ld e,(ix + audio_psg_channel_t.target_duration)		;7b4a
	call sub_div_hl_e		;7b4d
	ld e,a			;7b50
	ld d,000h		;7b51
	pop af			;7b53
	ld a,e			;7b54
	jp p,l7b5eh		;7b55
	neg		;7b58
	jr z,l7b5eh		;7b5a
	dec d			;7b5c
	ld e,a			;7b5d
l7b5eh:
	pop hl			;7b5e
	add hl,de			;7b5f
	ex de,hl			;7b60
	ld (ix + audio_psg_channel_t.final_frequency),e		;7b61
	ld (ix + audio_psg_channel_t.final_frequency + 1),d		;7b64
	ld a,(ix + audio_psg_channel_t.effect_timer)		;7b67
	or a			;7b6a
	jp nz,audio_envelope_pitch_process		;7b6b
	.INCLUDE "audio/envelope/audio_volume_process.asm"
l7bc8h_audio:
	.DB $80 $a0 $c0 $c0			;7bc8
l7bcch_audio:
	.DB $90 $b0 $d0 $f0			;7bcc
	.INCLUDE "audio/envelope/audio_envelope_volume_apply.asm"
	.INCLUDE "audio/envelope/audio_envelope_pitch_apply.asm"
sub_7c43h:
	ld e,(ix + audio_psg_channel_t.track_data_pointer)		;7c43
	ld d,(ix + audio_psg_channel_t.track_data_pointer + 1)		;7c46
l7c49h:
	ld a,(de)			;7c49
	inc de			;7c4a
	cp 0e0h		;7c4b
	jp nc,l7cd7h		;7c4d
	bit 3,(ix + audio_psg_channel_t.status_flags)		;7c50
	jr nz,l7cb6h		;7c54
	or a			;7c56
	jp p,l7c92h		;7c57
	sub 080h		;7c5a
	jr z,l7c61h		;7c5c
	add a,(ix + audio_psg_channel_t.transpose_offset)		;7c5e
l7c61h:
	ld hl,table_note_frequencies		;7c61
	ld c,a			;7c64
	ld b,000h		;7c65
	add hl,bc			;7c67
	add hl,bc			;7c68
	ld a,(hl)			;7c69
	ld (ix + audio_psg_channel_t.base_frequency),a		;7c6a
	inc hl			;7c6d
	ld a,(hl)			;7c6e
	ld (ix + audio_psg_channel_t.base_frequency + 1),a		;7c6f
	bit 5,(ix + audio_psg_channel_t.status_flags)		;7c72
	jr z,l7cd0h		;7c76
	ld a,(de)			;7c78
	inc de			;7c79
	sub 080h		;7c7a
	add a,(ix + audio_psg_channel_t.transpose_offset)		;7c7c
	ld hl,table_note_frequencies		;7c7f
	ld c,a			;7c82
	ld b,000h		;7c83
	add hl,bc			;7c85
	add hl,bc			;7c86
	ld a,(hl)			;7c87
	ld (ix + audio_psg_channel_t.slide_target_frequency_low),a		;7c88
	inc hl			;7c8b
	ld a,(hl)			;7c8c
	ld (ix + audio_psg_channel_t.slide_target_frequency_high),a		;7c8d
l7c90h:
	ld a,(de)			;7c90
l7c91h:
	inc de			;7c91
l7c92h:
	push de			;7c92
	ld h,a			;7c93
	ld e,(ix + audio_psg_channel_t.note_length_multiplier)		;7c94
	call sub_mul_h_e		;7c97
	pop de			;7c9a
	ld (ix + audio_psg_channel_t.target_duration),l		;7c9b
	ld (ix + audio_psg_channel_t.target_duration + 1),h		;7c9e
l7ca1h:
	xor a			;7ca1
	ld (ix + audio_psg_channel_t.volume_envelope_index),a		;7ca2
	ld (ix + audio_psg_channel_t.pitch_envelope_index),a		;7ca5
	ld (ix + audio_psg_channel_t.track_data_pointer),e		;7ca8
	ld (ix + audio_psg_channel_t.track_data_pointer + 1),d		;7cab
	xor a			;7cae
	ld (ix + audio_psg_channel_t.current_tick),a		;7caf
	ld (ix + audio_psg_channel_t.current_tick + 1),a		;7cb2
	ret			;7cb5
l7cb6h:
	ld (ix + audio_psg_channel_t.base_frequency + 1),a		;7cb6
	ld a,(de)			;7cb9
	inc de			;7cba
	ld (ix + audio_psg_channel_t.base_frequency),a		;7cbb
	bit 5,(ix + audio_psg_channel_t.status_flags)		;7cbe
	jr z,l7c90h		;7cc2
	ld a,(de)			;7cc4
	inc de			;7cc5
	ld (ix + audio_psg_channel_t.slide_target_frequency_high),a		;7cc6
	ld a,(de)			;7cc9
	inc de			;7cca
	ld (ix + audio_psg_channel_t.slide_target_frequency_low),a		;7ccb
	jr l7c90h		;7cce
l7cd0h:
	ld a,(de)			;7cd0
	or a			;7cd1
	jp p,l7c91h		;7cd2
	jr l7ca1h		;7cd5
l7cd7h:
	ld hl,l7ceah		;7cd7
	push hl			;7cda
	and 01fh		;7cdb
	ld hl,audio_command_routine		;7cdd
	ld c,a			;7ce0
	ld b,000h		;7ce1
	add hl,bc			;7ce3
	add hl,bc			;7ce4
	ld a,(hl)			;7ce5
	inc hl			;7ce6
	ld h,(hl)			;7ce7
	ld l,a			;7ce8
	jp (hl)			;7ce9
l7ceah:
	inc de			;7cea
	jp l7c49h		;7ceb
.INCLUDE "audio/command/audio_command_routine.asm"
.INCLUDE "audio/command/audio_command_routines.asm"
l7daah:
	inc de			;7daa
	dec (hl)			;7dab
	jp nz,audio_command_routine_goto		;7dac
	inc de			;7daf
	ret			;7db0
sub_7db1h:
	ld a,(ix + audio_psg_channel_t.psg_channel_map)		;7db1
	and 00fh		;7db4
	ld c,a			;7db6
	ld b,000h		;7db7
	ld hl,l7bcch_audio		;7db9
	add hl,bc			;7dbc
	ld a,(hl)			;7dbd
	or 00fh		;7dbe
	.INCLUDE "audio/psg/audio_psg_write.asm"
l7dc8h:
	exx			;7dc8
	ld hl,psg_engine.state		;7dc9
	ld de,psg_engine.tempo_countdown		;7dcc
	ld bc,000dfh		;7dcf
	ld (hl),000h		;7dd2
	ldir		;7dd4
	exx			;7dd6
	.INCLUDE "audio/silence/audio_silence.asm"
sub_7de3h_clear_audio:
	xor a			;7de3
	ld (psg_channel.5),a		;7de4
	ld (psg_channel.6),a		;7de7
	ld (psg_channel.7),a		;7dea
	ret			;7ded
	.INCLUDE "audio/silence/audio_silence_data.asm"
	.INCLUDE "audio/note/audio_note_frequencies.asm"
	.INCLUDE "math/mul_h_e.asm"
	.INCLUDE "math/div_hl_e.asm"

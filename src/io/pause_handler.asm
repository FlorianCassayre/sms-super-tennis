nmi_pause_handler:
	push af			; f5 ;0066
	ld a,(0c000h)		; 3a 00 c0 ;0067
	and 00ch		; e6 0c ;006a
	cp 004h		; fe 04 ;006c
	jr nz,+		; 20 12 ;006e
	ld a,(0c005h)		; 3a 05 c0 ;0070
	cp 00fh		; fe 0f ;0073
	jr c,+		; 38 0b ;0075
	xor a			; af ;0077
	ld (0c005h),a		; 32 05 c0 ;0078
	ld a,(0c004h)		; 3a 04 c0 ;007b
	cpl			; 2f ;007e
	ld (0c004h),a		; 32 04 c0 ;007f
+:
	pop af			; f1 ;0082
	retn		; ed 45 ;0083

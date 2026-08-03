sub_delay_loop:
	nop			; 00 ;35ff
	nop			; 00 ;3600
	nop			; 00 ;3601
	nop			; 00 ;3602
	nop			; 00 ;3603
	djnz sub_delay_loop		; 10 f9 ;3604
	ret			; c9 ;3606

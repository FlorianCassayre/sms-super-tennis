	; Magic value
	.DB "TMR SEGA"

	; Reserved
	.DB $ff $ff

	; Checksum
	.IFDEF _J
		.DB $a6
		.DB $6f
	.ENDIF
	.IFDEF _UE
		.DB $d4
		.DB $88
	.ENDIF

	; Product code
	.DB $07 $40

	; Version
    .IFDEF _J
    	.DB $00
    .ENDIF
    .IFDEF _UE
    	.DB $01
    .ENDIF

	; Region code + ROM size
	.DB $4c

.equ PRNG_SEED $733c

sub_prng:
	push hl			; e5 ;03cc
	ld hl,(0c08ch)		; 2a 8c c0 ;03cd
	ld a,h			; 7c ;03d0
	rrca			; 0f ;03d1
	rrca			; 0f ;03d2
	xor h			; ac ;03d3
	rrca			; 0f ;03d4
	xor l			; ad ;03d5
	rrca			; 0f ;03d6
	rrca			; 0f ;03d7
	rrca			; 0f ;03d8
	rrca			; 0f ;03d9
	xor l			; ad ;03da
	rra			; 1f ;03db
	adc hl,hl		; ed 6a ;03dc
	jr nz,+		; 20 03 ;03de
	ld hl,PRNG_SEED		; 21 3c 73 ;03e0
+:
	ld a,r		; ed 5f ;03e3
	xor l			; ad ;03e5
	ld (0c08ch),hl		; 22 8c c0 ;03e6
	pop hl			; e1 ;03e9
	ret			; c9 ;03ea

.equ PRNG_SEED $733c

sub_prng:
	push hl			;03cc
	ld hl,(0c08ch)		;03cd
	ld a,h			;03d0
	rrca			;03d1
	rrca			;03d2
	xor h			;03d3
	rrca			;03d4
	xor l			;03d5
	rrca			;03d6
	rrca			;03d7
	rrca			;03d8
	rrca			;03d9
	xor l			;03da
	rra			;03db
	adc hl,hl		;03dc
	jr nz,+		;03de
	ld hl,PRNG_SEED		;03e0
+:
	ld a,r		;03e3
	xor l			;03e5
	ld (0c08ch),hl		;03e6
	pop hl			;03e9
	ret			;03ea

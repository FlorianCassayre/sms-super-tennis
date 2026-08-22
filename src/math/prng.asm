.equ PRNG_SEED $733c

sub_prng:
	push hl
	ld hl,(0c08ch)
	ld a,h
	rrca
	rrca
	xor h
	rrca
	xor l
	rrca
	rrca
	rrca
	rrca
	xor l
	rra
	adc hl,hl
	jr nz,+
		ld hl,PRNG_SEED
	+:
	ld a,r
	xor l
	ld (0c08ch),hl
	pop hl
	ret

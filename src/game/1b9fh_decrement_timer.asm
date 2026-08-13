sub_1b9fh_decrement_timer:
	ld l,(ix+029h)		;1b9f
	ld h,(ix+02ah)		;1ba2
	dec hl			;1ba5
	ld (ix+029h),l		;1ba6
	ld (ix+02ah),h		;1ba9
	ld a,l			;1bac
	or h			;1bad
	ret			;1bae

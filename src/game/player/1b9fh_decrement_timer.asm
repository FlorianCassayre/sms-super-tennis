sub_1b9fh_decrement_timer:
	ld l,(ix + entity_t.state_timer)		;1b9f
	ld h,(ix + entity_t.state_timer + 1)		;1ba2
	dec hl			;1ba5
	ld (ix + entity_t.state_timer),l		;1ba6
	ld (ix + entity_t.state_timer + 1),h		;1ba9
	ld a,l			;1bac
	or h			;1bad
	ret			;1bae

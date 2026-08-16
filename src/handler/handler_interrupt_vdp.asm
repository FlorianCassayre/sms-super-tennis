handler_interrupt_vdp:
	jp isr_vblank_update		;0038

.ASSERT handler_interrupt_vdp == $0038, LDERROR

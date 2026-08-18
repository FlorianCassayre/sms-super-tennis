handler_interrupt_vdp:
	jp isr_vblank_update

.ASSERT handler_interrupt_vdp == $0038, LDERROR

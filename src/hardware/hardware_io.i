; https://github.com/drhelius/Gearsystem/blob/master/platforms/shared/desktop/gui_debug_constants.h

.equ IO_VDP_DATA		$be
.equ I_VDP_STATUS		$bf
.equ O_VDP_CTRL			$bf

.equ I_VDP_VCOUNTER		$7e
.equ I_VDP_HCOUNTER		$7f

.equ O_PSG				$7e
.equ O_PSG_ALT			$7f

.equ I_FM_STATUS		$f0
.equ O_FM_ADDR			$f0
.equ I_FM_STATUS_ALT	$f1
.equ O_FM_DATA			$f1
.equ IO_FM_DETECT		$f2

.equ O_IO_CTRL			$3f

.equ I_JOYPAD_1			$dc
.equ I_JOYPAD_2			$dd
.equ I_JOYPAD_1_ALT  	$c0
.equ I_JOYPAD_2_ALT   	$c1

.equ O_MEM_CTRL			$3e

.equ I_GG_START			$00
.equ IO_GG_SERIAL_DATA	$01
.equ IO_GG_SERIAL_DIR	$02
.equ IO_GG_SERIAL_TX	$03
.equ IO_GG_SERIAL_RX	$04
.equ IO_GG_SERIAL_STATUS	$05
.equ O_GG_STEREO		$06

; Added

.equ O_DE $de

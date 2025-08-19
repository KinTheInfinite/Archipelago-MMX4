.set noreorder
jal SaveArmorPickup
nop
li $a0, 0xA2
lui $v0, 0x800C
addiu $v0, $v0, 0x7040
jr $v0
nop

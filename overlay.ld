__heap_base = __ovr_end;

__ovr_start = 0x80017514;

SECTIONS {
    OVERLAY __ovr_start : SUBALIGN(4) {
        .itempickupclears {
            . = . + 0xd7044;
            KEEP(src/archipelago/itempickupclear.o(.text*))
            KEEP(src/archipelago/itempickupclear.o(.rodata*))
            KEEP(src/archipelago/itempickupclear.o(.sdata*))
            KEEP(src/archipelago/itempickupclear.o(.data*))
            KEEP(src/archipelago/itempickupclear.o(.sbss*))
            KEEP(src/archipelago/itempickupclear.o(.bss*))
            KEEP(src/archipelago/itempickupclear.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .archipelagoc {
            . = . + 0xd7444;
            KEEP(src/archipelago/archipelago.o(.text*))
            KEEP(src/archipelago/archipelago.o(.rodata*))
            KEEP(src/archipelago/archipelago.o(.sdata*))
            KEEP(src/archipelago/archipelago.o(.data*))
            KEEP(src/archipelago/archipelago.o(.sbss*))
            KEEP(src/archipelago/archipelago.o(.bss*))
            KEEP(src/archipelago/archipelago.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .updategamejumps {
            . = . + 0x19ee0;
            KEEP(src/archipelago/updategamejump.o(.text*))
            KEEP(src/archipelago/updategamejump.o(.rodata*))
            KEEP(src/archipelago/updategamejump.o(.sdata*))
            KEEP(src/archipelago/updategamejump.o(.data*))
            KEEP(src/archipelago/updategamejump.o(.sbss*))
            KEEP(src/archipelago/updategamejump.o(.bss*))
            KEEP(src/archipelago/updategamejump.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .bosskilljumps {
            . = . + 0x16a10;
            KEEP(src/archipelago/bosskilljump.o(.text*))
            KEEP(src/archipelago/bosskilljump.o(.rodata*))
            KEEP(src/archipelago/bosskilljump.o(.sdata*))
            KEEP(src/archipelago/bosskilljump.o(.data*))
            KEEP(src/archipelago/bosskilljump.o(.sbss*))
            KEEP(src/archipelago/bosskilljump.o(.bss*))
            KEEP(src/archipelago/bosskilljump.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .armorpickupjumps {
            . = . + 0xaf9e8;
            KEEP(src/archipelago/armorpickupjump.o(.text*))
            KEEP(src/archipelago/armorpickupjump.o(.rodata*))
            KEEP(src/archipelago/armorpickupjump.o(.sdata*))
            KEEP(src/archipelago/armorpickupjump.o(.data*))
            KEEP(src/archipelago/armorpickupjump.o(.sbss*))
            KEEP(src/archipelago/armorpickupjump.o(.bss*))
            KEEP(src/archipelago/armorpickupjump.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .itempickupjumps {
            . = . + 0xa8be8;
            KEEP(src/archipelago/itempickupjump.o(.text*))
            KEEP(src/archipelago/itempickupjump.o(.rodata*))
            KEEP(src/archipelago/itempickupjump.o(.sdata*))
            KEEP(src/archipelago/itempickupjump.o(.data*))
            KEEP(src/archipelago/itempickupjump.o(.sbss*))
            KEEP(src/archipelago/itempickupjump.o(.bss*))
            KEEP(src/archipelago/itempickupjump.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .stageaccessjumps {
            . = . + 0x17774;
            KEEP(src/archipelago/stageaccessjump.o(.text*))
            KEEP(src/archipelago/stageaccessjump.o(.rodata*))
            KEEP(src/archipelago/stageaccessjump.o(.sdata*))
            KEEP(src/archipelago/stageaccessjump.o(.data*))
            KEEP(src/archipelago/stageaccessjump.o(.sbss*))
            KEEP(src/archipelago/stageaccessjump.o(.bss*))
            KEEP(src/archipelago/stageaccessjump.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .bossesalwaysspawns {
            . = . + 0xa36e4;
            KEEP(src/bosses_always_spawn/bossesalwaysspawn.o(.text*))
            KEEP(src/bosses_always_spawn/bossesalwaysspawn.o(.rodata*))
            KEEP(src/bosses_always_spawn/bossesalwaysspawn.o(.sdata*))
            KEEP(src/bosses_always_spawn/bossesalwaysspawn.o(.data*))
            KEEP(src/bosses_always_spawn/bossesalwaysspawn.o(.sbss*))
            KEEP(src/bosses_always_spawn/bossesalwaysspawn.o(.bss*))
            KEEP(src/bosses_always_spawn/bossesalwaysspawn.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .armoralwaysspawns {
            . = . + 0xaeec4;
            KEEP(src/armor_always_spawn/armoralwaysspawn.o(.text*))
            KEEP(src/armor_always_spawn/armoralwaysspawn.o(.rodata*))
            KEEP(src/armor_always_spawn/armoralwaysspawn.o(.sdata*))
            KEEP(src/armor_always_spawn/armoralwaysspawn.o(.data*))
            KEEP(src/armor_always_spawn/armoralwaysspawn.o(.sbss*))
            KEEP(src/armor_always_spawn/armoralwaysspawn.o(.bss*))
            KEEP(src/armor_always_spawn/armoralwaysspawn.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .armoralwaysspawn2s {
            . = . + 0xaeef4;
            KEEP(src/armor_always_spawn/armoralwaysspawn2.o(.text*))
            KEEP(src/armor_always_spawn/armoralwaysspawn2.o(.rodata*))
            KEEP(src/armor_always_spawn/armoralwaysspawn2.o(.sdata*))
            KEEP(src/armor_always_spawn/armoralwaysspawn2.o(.data*))
            KEEP(src/armor_always_spawn/armoralwaysspawn2.o(.sbss*))
            KEEP(src/armor_always_spawn/armoralwaysspawn2.o(.bss*))
            KEEP(src/armor_always_spawn/armoralwaysspawn2.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .armoralwaysspawn3s {
            . = . + 0xaeee8;
            KEEP(src/armor_always_spawn/armoralwaysspawn3.o(.text*))
            KEEP(src/armor_always_spawn/armoralwaysspawn3.o(.rodata*))
            KEEP(src/armor_always_spawn/armoralwaysspawn3.o(.sdata*))
            KEEP(src/armor_always_spawn/armoralwaysspawn3.o(.data*))
            KEEP(src/armor_always_spawn/armoralwaysspawn3.o(.sbss*))
            KEEP(src/armor_always_spawn/armoralwaysspawn3.o(.bss*))
            KEEP(src/armor_always_spawn/armoralwaysspawn3.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .tanksalwaysspawns {
            . = . + 0xa84ac;
            KEEP(src/tanks_always_spawn/tanksalwaysspawn.o(.text*))
            KEEP(src/tanks_always_spawn/tanksalwaysspawn.o(.rodata*))
            KEEP(src/tanks_always_spawn/tanksalwaysspawn.o(.sdata*))
            KEEP(src/tanks_always_spawn/tanksalwaysspawn.o(.data*))
            KEEP(src/tanks_always_spawn/tanksalwaysspawn.o(.sbss*))
            KEEP(src/tanks_always_spawn/tanksalwaysspawn.o(.bss*))
            KEEP(src/tanks_always_spawn/tanksalwaysspawn.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .sigmavisibles {
            KEEP(src/escape_button/sigmavisible.o(.text*))
            KEEP(src/escape_button/sigmavisible.o(.rodata*))
            KEEP(src/escape_button/sigmavisible.o(.sdata*))
            KEEP(src/escape_button/sigmavisible.o(.data*))
            KEEP(src/escape_button/sigmavisible.o(.sbss*))
            KEEP(src/escape_button/sigmavisible.o(.bss*))
            KEEP(src/escape_button/sigmavisible.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .normalvisibles {
            . = . + 0x54;
            KEEP(src/escape_button/normalvisible.o(.text*))
            KEEP(src/escape_button/normalvisible.o(.rodata*))
            KEEP(src/escape_button/normalvisible.o(.sdata*))
            KEEP(src/escape_button/normalvisible.o(.data*))
            KEEP(src/escape_button/normalvisible.o(.sbss*))
            KEEP(src/escape_button/normalvisible.o(.bss*))
            KEEP(src/escape_button/normalvisible.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .introselectables {
            . = . + 0x18a34;
            KEEP(src/escape_button/introselectable.o(.text*))
            KEEP(src/escape_button/introselectable.o(.rodata*))
            KEEP(src/escape_button/introselectable.o(.sdata*))
            KEEP(src/escape_button/introselectable.o(.data*))
            KEEP(src/escape_button/introselectable.o(.sbss*))
            KEEP(src/escape_button/introselectable.o(.bss*))
            KEEP(src/escape_button/introselectable.o(.end*))
            . = ALIGN(4);
            __ovr_end = .;
        }
        .normalselectables {
            . = . + 0x18a50;
            KEEP(src/escape_button/normalselectable.o(.text*))
            *(.text*)
            KEEP(src/escape_button/normalselectable.o(.rodata*))
            *(.rdata*)
            KEEP(src/escape_button/normalselectable.o(.sdata*))
            *(.sdata*)
            KEEP(src/escape_button/normalselectable.o(.data*))
            *(.data*)
            KEEP(src/escape_button/normalselectable.o(.sbss*))
            *(.sbss*)
            KEEP(src/escape_button/normalselectable.o(.bss*))
            *(.bss*)
            KEEP(src/escape_button/normalselectable.o(.end*))
            *(.end*)
            . = ALIGN(4);
            __ovr_end = .;
        }
    }
}
__mod_end = .;

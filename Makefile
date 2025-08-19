
MODDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
TARGET = mod

SRCS = src/archipelago/itempickupclear.s src/archipelago/archipelago.c src/archipelago/updategamejump.s src/archipelago/bosskilljump.s src/archipelago/armorpickupjump.s src/archipelago/itempickupjump.s src/archipelago/stageaccessjump.s src/bosses_always_spawn/bossesalwaysspawn.s src/armor_always_spawn/armoralwaysspawn.s src/armor_always_spawn/armoralwaysspawn2.s src/armor_always_spawn/armoralwaysspawn3.s src/tanks_always_spawn/tanksalwaysspawn.s src/escape_button/sigmavisible.s src/escape_button/normalvisible.s src/escape_button/introselectable.s src/escape_button/normalselectable.s
CPPFLAGS = -DBUILD=561
LDSYMS = -TC:\Users\Kin\Desktop\psx-modding-toolchain-main\games\MegaManX4\symbols\common.txt -TC:\Users\Kin\Desktop\psx-modding-toolchain-main\games\MegaManX4\symbols\object.txt -TC:\Users\Kin\Desktop\psx-modding-toolchain-main\games\MegaManX4\symbols\gpu.txt -TC:\Users\Kin\Desktop\psx-modding-toolchain-main\games\MegaManX4\symbols\layer.txt -TC:\Users\Kin\Desktop\psx-modding-toolchain-main\games\MegaManX4\symbols\misc.txt

DISABLE_FUNCTION_REORDER ?= true
USE_PSYQ ?= true
USE_MININOOB ?= false
OVERLAYSECTION ?= .itempickupclears .archipelagoc .updategamejumps .bosskilljumps .armorpickupjumps .itempickupjumps .stageaccessjumps .bossesalwaysspawns .armoralwaysspawns .armoralwaysspawn2s .armoralwaysspawn3s .tanksalwaysspawns .sigmavisibles .normalvisibles .introselectables .normalselectables
OVR_START_ADDR = 0x80017514
OVERLAYSCRIPT = overlay.ld
BUILDDIR = $(MODDIR)output/
GAMEINCLUDEDIR = C:\Users\Kin\Desktop\psx-modding-toolchain-main\games\MegaManX4\include
EXTRA_CC_FLAGS = -Os -g
OPT_CC_FLAGS = 
OPT_LD_FLAGS = 
PCHS = C:\Users\Kin\Desktop\psx-modding-toolchain-main\games\MegaManX4\include
TRIMBIN_OFFSET = $(MODDIR)debug\offset.txt
BUILD_ID = 561

-include define.mk
include C:\Users\Kin\Desktop\psx-modding-toolchain-main\games\common.mk

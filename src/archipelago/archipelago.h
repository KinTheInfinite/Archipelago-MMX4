#include <sys/types.h>
#include <common.h>
#include <object.h>
#include <gpu.h>
#include <layer.h>
#include <misc.h>

// python ..\..\..\..\tools\mod-builder\main.py

// Memory addresses we personally stored things in
static const uint32_t ADDRESS_MOD_NAME = 0x800F1740;
static const uint32_t ADDRESS_STAGE_ACCESS = 0x800F1750;
static const uint32_t ADDRESS_ARMOR_FLAGS = 0x800F1770;
static const uint32_t ADDRESS_ARMS_FLAGS = 0x800F1771;
static const uint32_t ADDRESS_MAX_HEALTH = 0x800F1772;
static const uint32_t ADDRESS_WEAPONS_FLAGS = 0x800F1773;
static const uint32_t ADDRESS_TANKS_FLAGS = 0x800F1774;
// Locations for Archipelago to check
static const uint32_t ADDRESS_ARMOR_PICKED_UP = 0x800F1790;
static const uint32_t ADDRESS_BOSSES_DEFEATED = 0x800F17A0;
static const uint32_t ADDRESS_ITEMS_PICKED_UP = 0x800EE558;


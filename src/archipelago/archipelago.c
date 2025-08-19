#include <sys/types.h>
#include "archipelago.h"
#include <common.h>
#include <object.h>
#include <gpu.h>
#include <layer.h>
#include <misc.h>

void UpdateGame(int param_1) {
    // Updates every frame here
    // Set unlocked armors to our value
    uint8_t *armor_flags = (uint8_t*)0x8014196F;
    *armor_flags = *(uint8_t*)ADDRESS_ARMOR_FLAGS;
    // Set arms to our value
    uint8_t *arms_flags = (uint8_t*)0x80141980;
    *arms_flags = *(uint8_t*)ADDRESS_ARMS_FLAGS;
    // Set max health to our value
    uint8_t *max_health = (uint8_t*)0x80172206;
    *max_health = *(uint8_t*)ADDRESS_MAX_HEALTH;
    // Set weapons unlocked to our value
    uint8_t *weapons_flags = (uint8_t*)0x80141981;
    *weapons_flags = *(uint8_t*)ADDRESS_WEAPONS_FLAGS;
    // Set tanks unlocked to our value
    uint8_t *tank_flags = (uint8_t*)0x8017221B;
    *tank_flags = *(uint8_t*)ADDRESS_TANKS_FLAGS;
    // Call the jump and link we replaced
    void (*FUN_80035DE4)() = (void (*)())0x80035DE4;
    FUN_80035DE4(param_1);
    return;
}

void SaveBossKill(uint8_t *param_1, uint8_t *param_2) {
    // 0x10 offset is what we want to save / check, so go up 4 words, the value there is the data pointer
    uint32_t *boss_data = (uint32_t*)(*(uint32_t*)(param_1 + 0x10));
    uint8_t *boss_kills = (uint8_t*)ADDRESS_BOSSES_DEFEATED;
    // Intro Boss
    if(boss_data == (uint32_t*)0x800F4E20) {
        boss_kills[0] = 1;
    }
    // Web Spider
    else if(boss_data == (uint32_t*)0x800F5468) {
        boss_kills[1] = 1;
    }
    // Cyber Peacock
    else if(boss_data == (uint32_t*)0x800F7518) {
        boss_kills[2] = 1;
    }
    // Storm Owl
    else if(boss_data == (uint32_t*)0x800F79D8) {
        boss_kills[3] = 1;
    }
    // Magma Dragoon
    else if(boss_data == (uint32_t*)0x800F697C) {
        boss_kills[4] = 1;
    }
    // Jet Stingray
    else if(boss_data == (uint32_t*)0x800F70D0) {
        boss_kills[5] = 1;
    }
    // Split Mushroom
    else if(boss_data == (uint32_t*)0x800F64E0) {
        boss_kills[6] = 1;
    }
    // Slash Beast
    else if(boss_data == (uint32_t*)0x800F8114) {
        boss_kills[7] = 1;
    }
    // Frost Walrus
    else if(boss_data == (uint32_t*)0x800F6020) {
        boss_kills[8] = 1;
    }
    // Memorial Hall Colonel
    else if(boss_data == (uint32_t*)0x800F8184) {
        boss_kills[9] = 1;
    }
    // Space Port Colonel
    else if(boss_data == (uint32_t*)0x800F81FC) {
        boss_kills[10] = 1;
    }
    // Double
    else if(boss_data == (uint32_t*)0x800F84B4) {
        boss_kills[11] = 1;
    }
    // Iris
    else if(boss_data == (uint32_t*)0x800F84AC) {
        boss_kills[11] = 1;
    }
    // General
    else if(boss_data == (uint32_t*)0x800F86DC) {
        boss_kills[12] = 1;
    }
    // Web Spider Rematch
    else if(boss_data == (uint32_t*)0x800F8860) {
        boss_kills[13] = 1;
    }
    // Cyber Peacock Rematch
    else if(boss_data == (uint32_t*)0x800F8880) {
        boss_kills[14] = 1;
    }
    // Storm Owl Rematch
    else if(boss_data == (uint32_t*)0x800F8888) {
        boss_kills[15] = 1;
    }
    // Magma Dragoon Rematch
    else if(boss_data == (uint32_t*)0x800F8870) {
        boss_kills[16] = 1;
    }
    // Jet Stingray Rematch
    else if(boss_data == (uint32_t*)0x800F8898) {
        boss_kills[17] = 1;
    }
    // Split Mushroom Rematch
    else if(boss_data == (uint32_t*)0x800F8878) {
        boss_kills[18] = 1;
    }
    // Slash Beast Rematch
    else if(boss_data == (uint32_t*)0x800F8890) {
        boss_kills[19] = 1;
    }
    // Frost Walrus Rematch
    else if(boss_data == (uint32_t*)0x800F8868) {
        boss_kills[20] = 1;
    }
    // Sigma
    else if(boss_data == (uint32_t*)0x800F8938) {
        boss_kills[21] = 1;
    }
    // Do the jump and link we replaced
    void (*FUN_8002DF7C)() = (void (*)())0x8002DF7C;
    FUN_8002DF7C(param_2, 1);
    return;
}

void SaveArmorPickup(uint8_t *param_1) {
    int armor_unlocked = param_1[2];
    uint8_t *armor_unlocked_address = (uint8_t*)(ADDRESS_ARMOR_PICKED_UP + armor_unlocked);
    *armor_unlocked_address = 1;
    return;
}

uint8_t SaveItemPickup(Object *pickup) {
    // Bad practice my beloved (this entire file)
    bool (*checkCollision)() = (bool (*)())0x8002C160;
    bool collided = checkCollision(pickup);
    if(collided) {
        uint32_t *current_address = (uint32_t*)ADDRESS_ITEMS_PICKED_UP;
        Enemy *pickup_enemy_pointer = (*pickup).enemyP;
        Enemy *enemy_pointer;
        // Check for duplicate item pickups, otherwise place sequentially in memory
        do {
            enemy_pointer = (Enemy*)*current_address;
            // If blank place it there
            if(enemy_pointer == 0) {
                *current_address = (uint32_t)pickup_enemy_pointer;
                break;
            }
            // Move up a word / 4 bytes to the next open spot since the compiler treats this like current_address[i+1]
            current_address += 1;
        } while(pickup_enemy_pointer != enemy_pointer);
    }
    return collided;
}

uint32_t StageAccessCheck(int param_1) {
    // Do updates here, will always run on stage select
    // Update all stage select screen image visibility based on access
    bool playing_as_zero = *(uint8_t*)(0x80172203);
    const uint32_t ADDRESS_BASE_IMAGES = playing_as_zero ? 0x801B9F70 : 0x801B9AF8;
    for(int i = 0; i <= 7; i++) {
        uint8_t stage_unlocked = *(uint8_t*)(ADDRESS_STAGE_ACCESS + i);
        if(stage_unlocked) {
            if(i == 0) {
                *(uint8_t*)(ADDRESS_BASE_IMAGES) = 0x16;
            }
            else {
                *(uint8_t*)(ADDRESS_BASE_IMAGES + 4 * i) = 0x14;
            }
            if(i <= 3) {
                *(uint8_t*)(ADDRESS_BASE_IMAGES + 4 * i + 3) = 0x00;
            }
            else {
                *(uint8_t*)(ADDRESS_BASE_IMAGES + 4 * i + 3) = 0x01;
            }
        }
        else {
            *(uint8_t*)(ADDRESS_BASE_IMAGES + 4 * i) = 0x01;
            if(i <= 3) {
                *(uint8_t*)(ADDRESS_BASE_IMAGES + 4 * i + 3) = (playing_as_zero && i == 3) ? 0X0E: 0x0F;
            }
            else if (i == 4) {
                *(uint8_t*)(ADDRESS_BASE_IMAGES + 4 * i + 3) = 0x03;
            }
            else {
                *(uint8_t*)(ADDRESS_BASE_IMAGES + 4 * i + 3) = 0x00;
            }
        }
    }
    // Moved the buttons pressed check from assembly code into C code, 0x840
    if ((buttonsPressed & (PAD_START | PAD_CROSS)) == 0) {
        return 0x8002ED6C;
    }
    // We are trying to enter the stage now so get the byte where we stored the data
    // *(uint8_t*)0x801721C2 = 5;  // writes the value 5 to that exact memory address
    // uint8_t *address_pointer = 0x801721C2;
    // *address_pointer = 5;
    uint8_t stage_selected = *(uint8_t*)0x801721C3;
    uint8_t stage_unlocked = *(uint8_t*)(ADDRESS_STAGE_ACCESS + stage_selected);
    if (!stage_unlocked) {
        return 0x8002ED6C;
    }
    // Jump to just a bit ahead from where we are
    return 0x8002EC98;
}
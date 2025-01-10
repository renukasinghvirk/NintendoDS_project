// General purposes
#include <nds.h>
#include <stdio.h>

// Graphics
#include "graphics.h"

// Controls
#include "controls.h"

// Audio
#include "audio.h"


int main() {
    consoleDemoInit();

    // Proof of concept on how to limit call of dmaCopy for the most demanding maps and tiles instead of overwritting same memory spaces
    // Memory space is limited and hence cannot apply this to whole of grit result (and also it works fine!)   
    VRAM_C_CR = VRAM_ENABLE | VRAM_C_SUB_BG;
    dmaCopy(reset_subMap, BG_MAP_RAM_SUB(1), reset_subMapLen);
	dmaCopy(reset_subTiles, BG_TILE_RAM_SUB(3), reset_subTilesLen);

    VRAM_A_CR = VRAM_ENABLE | VRAM_A_MAIN_BG;
    dmaCopy(game_overBitmap, BG_BMP_RAM(3), 256*192);
    dmaCopy(reset_mainMap, BG_MAP_RAM(1), reset_mainMapLen);
    dmaCopy(menu_mainMap, BG_MAP_RAM(2), menu_mainMapLen);
	dmaCopy(reset_mainTiles, BG_TILE_RAM(6), reset_mainTilesLen);


    audio_initialization();
    irqEnable(IRQ_VBLANK);  // Enable vertical blank interrupt (necessary for swiWaitForVBlank)

    while(1) {
        start_game();
        swiWaitForVBlank();
    }
}
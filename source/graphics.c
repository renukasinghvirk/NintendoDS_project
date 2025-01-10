#include "graphics.h"


void graphics_intro()
{
	// MAIN ENGINE
	//Activate and configure VRAM bank to work in background mode
	VRAM_A_CR = VRAM_ENABLE | VRAM_A_MAIN_BG;

    //MAIN engine
	REG_DISPCNT = MODE_5_2D | DISPLAY_BG0_ACTIVE;

    //BG0 configuration for the background
	BGCTRL[0] = BG_COLOR_256 | BG_MAP_BASE(1) | BG_TILE_BASE(6) | BG_32x32;

	//Copy data to display background (tiles, palette and map)

	dmaCopy(reset_mainPal, BG_PALETTE, reset_mainPalLen);

	/*
	dmaCopy(reset_subMap, BG_MAP_RAM(1), reset_subMapLen);
	dmaCopy(reset_subTiles, BG_TILE_RAM(3), reset_subTilesLen);
	dmaCopy(reset_subPal, BG_PALETTE, reset_subPalLen);
	*/

	// SUB ENGINE
	//Activate and configure VRAM bank to work in background mode
	VRAM_C_CR = VRAM_ENABLE | VRAM_C_SUB_BG;

    //SUB engine
	REG_DISPCNT_SUB = MODE_5_2D | DISPLAY_BG0_ACTIVE;

    //BG0 configuration for the background
	BGCTRL_SUB[0] = BG_COLOR_256 | BG_MAP_BASE(1) | BG_TILE_BASE(3) | BG_32x32;

	//Copy data to display background (tiles, palette and map)
	dmaCopy(reset_subPal, BG_PALETTE_SUB, reset_subPalLen);
}


void graphics_setup_menu_main()
{
    //Activate and configure VRAM bank to work in background mode
	VRAM_A_CR = VRAM_ENABLE | VRAM_A_MAIN_BG;

    //MAIN engine
	REG_DISPCNT = MODE_5_2D | DISPLAY_BG0_ACTIVE;

    //Configuration for the backgrounds
	BGCTRL[0] = BG_COLOR_16 | BG_MAP_BASE(2) | BG_TILE_BASE(1) | BG_32x32;
	
	//Copy data to display background (tiles, palette and map)
	dmaCopy(menu_mainTiles, BG_TILE_RAM(1), menu_mainTilesLen);
	dmaCopy(menu_mainPal, BG_PALETTE, menu_mainPalLen);
}

void graphics_setup_menu_sub(int unlock, int nb_coins)
{
    //Activate and configure VRAM bank to work in background mode
	VRAM_C_CR = VRAM_ENABLE | VRAM_C_SUB_BG;

    //Sub engine
	REG_DISPCNT_SUB = MODE_5_2D | DISPLAY_BG0_ACTIVE;

    //BG0 configuration for the background
	BGCTRL_SUB[0] = BG_COLOR_16 | BG_MAP_BASE(0) | BG_TILE_BASE(1) | BG_32x32;

	if(unlock == 0){
		
		dmaCopy(menu_subMap, BG_MAP_RAM_SUB(0), menu_subMapLen);
    	dmaCopy(menu_subTiles, BG_TILE_RAM_SUB(1), menu_subTilesLen);
    	dmaCopy(menu_subPal, BG_PALETTE_SUB, menu_subPalLen); 
	}
	else if(unlock == 1){
		dmaCopy(menu_sub2Map, BG_MAP_RAM_SUB(0), menu_sub2MapLen);
    	dmaCopy(menu_sub2Tiles, BG_TILE_RAM_SUB(1), menu_sub2TilesLen);
    	dmaCopy(menu_sub2Pal, BG_PALETTE_SUB, menu_sub2PalLen); 
	}
	else if(unlock == 2){		
		dmaCopy(menu_sub3Map, BG_MAP_RAM_SUB(0), menu_sub3MapLen);
    	dmaCopy(menu_sub3Tiles, BG_TILE_RAM_SUB(1), menu_sub3TilesLen);
    	dmaCopy(menu_sub3Pal, BG_PALETTE_SUB, menu_sub3PalLen); 
	}
}

void graphics_game_init(int unlock)
{
	//Activate and configure VRAM bank to work in background mode
	VRAM_A_CR = VRAM_ENABLE | VRAM_A_MAIN_BG;

    //MAIN engine
	REG_DISPCNT = MODE_5_2D | DISPLAY_BG0_ACTIVE;

    //Configuration for the backgrounds
	BGCTRL[0] = BG_COLOR_16 | BG_MAP_BASE(0) | BG_TILE_BASE(1) | BG_32x32;
	
	//Copy data to display background (tiles, palette and map)
	if (unlock == 0){
		dmaCopy(game_mainMap, BG_MAP_RAM(0), game_mainMapLen);
		dmaCopy(game_mainTiles, BG_TILE_RAM(1), game_mainTilesLen);
		dmaCopy(game_mainPal, BG_PALETTE, game_mainPalLen);
	} else if (unlock == 1) {
		dmaCopy(game_main2Map, BG_MAP_RAM(0), game_main2MapLen);
		dmaCopy(game_main2Tiles, BG_TILE_RAM(1), game_main2TilesLen);
		dmaCopy(game_main2Pal, BG_PALETTE, game_main2PalLen);
	} else {
		dmaCopy(game_main3Map, BG_MAP_RAM(0), game_main3MapLen);
		dmaCopy(game_main3Tiles, BG_TILE_RAM(1), game_main3TilesLen);
		dmaCopy(game_main3Pal, BG_PALETTE, game_main3PalLen);
	}
	

	//Activate and configure VRAM bank to work in background mode
	VRAM_C_CR = VRAM_ENABLE | VRAM_C_SUB_BG;

    //Sub engine
	REG_DISPCNT_SUB = MODE_5_2D | DISPLAY_BG0_ACTIVE; 

    //BG0 configuration for the background
	BGCTRL_SUB[0] = BG_COLOR_16 | BG_MAP_BASE(0) | BG_TILE_BASE(1) | BG_32x32;

	//Copy data to display background (tiles, palette and map)
	if (unlock == 0){
		dmaCopy(progressionMap, BG_MAP_RAM_SUB(0), progressionMapLen);
		dmaCopy(progressionTiles, BG_TILE_RAM_SUB(1), progressionTilesLen);
		dmaCopy(progressionPal, BG_PALETTE_SUB, progressionPalLen);
	} else if (unlock == 1){
		dmaCopy(progression2Map, BG_MAP_RAM_SUB(0), progression2MapLen);
		dmaCopy(progression2Tiles, BG_TILE_RAM_SUB(1), progression2TilesLen);
		dmaCopy(progression2Pal, BG_PALETTE_SUB, progression2PalLen);
	} else {
		dmaCopy(progression3Map, BG_MAP_RAM_SUB(0), progression3MapLen);
		dmaCopy(progression3Tiles, BG_TILE_RAM_SUB(1), progression3TilesLen);
		dmaCopy(progression3Pal, BG_PALETTE_SUB, progression3PalLen);
	}
	

	// Set up memory bank to work in sprite mode
	VRAM_B_CR = VRAM_ENABLE | VRAM_B_MAIN_SPRITE;

	// Initialize sprite manager and the engine
	// From libnds docu: Use SpriteMapping_Bmp_1D_128 or SpriteMapping_Bmp_1D_256 in order to mix tiled and bitmap sprites
	oamInit(&oamMain, SpriteMapping_Bmp_1D_256, false);	


	// Set up memory bank to work in sprite mode
	VRAM_D_CR = VRAM_ENABLE | VRAM_D_SUB_SPRITE;

	// Initialize sprite manager and the engine
	// From libnds docu: Use SpriteMapping_Bmp_1D_128 or SpriteMapping_Bmp_1D_256 in order to mix tiled and bitmap sprites
	oamInit(&oamSub, SpriteMapping_Bmp_1D_256, false);
	
}

void graphics_game_over(){
	//Activate and configure VRAM bank to work in background mode
	VRAM_A_CR = VRAM_ENABLE | VRAM_A_MAIN_BG;

    //MAIN engine
	REG_DISPCNT = MODE_5_2D | DISPLAY_BG2_ACTIVE; // Not BG0 as we want a rotoscale bitmap

	//Configuration for the backgrounds
	BGCTRL[2] = (vu16)(BG_BMP_BASE(3) | BgSize_B8_256x256);
	
	memcpy(BG_PALETTE, game_overPal, game_overPalLen);

	//Set the matrix affine transform
	bgTransform[2]->hdx = 256;
	bgTransform[2]->vdy = 256;
	bgTransform[2]->hdy = 0;
	bgTransform[2]->vdx = 0;
}

/*
void graphics_win(){
	//Activate and configure VRAM bank to work in background mode
	VRAM_A_CR = VRAM_ENABLE | VRAM_A_MAIN_BG;

    //MAIN engine
	REG_DISPCNT = MODE_5_2D | DISPLAY_BG2_ACTIVE; // Not BG0 as we want a rotoscale bitmap

	//Configuration for the backgrounds
	BGCTRL[2] = (vu16)(BG_MAP_BASE(0) | BgSize_B8_256x256);
	
	memcpy(BG_GFX, winBitmap, 256*192);
	memcpy(BG_PALETTE, winPal, winPalLen);

	//Set the matrix affine transform
	bgTransform[2]->hdx = 256;
	bgTransform[2]->vdy = 256;
	bgTransform[2]->hdy = 0;
	bgTransform[2]->vdx = 0;
}
*/

void graphics_menu_coins(int nb_coins){
    oamInit(&oamSub, SpriteMapping_Bmp_1D_256, false);
    
	for (int i = 0; (i < nb_coins) && ((i * 16) < (SCREEN_WIDTH - 16)); i++)
        {
            // Allocate unique graphics for sprite
            u16* coin_sub = oamAllocateGfx(&oamSub, SpriteSize_32x32, SpriteColorFormat_16Color);
            
            // Copy data for each coin
            dmaCopy(coinTiles, coin_sub, coinTilesLen);
            oamSet(&oamSub, 
                i, i*16, SCREEN_HEIGHT - 32,  
                0, 1, SpriteSize_32x32, SpriteColorFormat_16Color,  
                coin_sub, -1, false, false, false, false, false);
            oamUpdate(&oamSub);
        };
}
#include "controls.h"
#include <time.h>   // For srand()

// Timers
#include "timer_management.h"



// Pointers and variables for sprite control
// Player (main & sub)
u16* player;
int x_player, y_player; 
u16* player_sub;
int x_player_sub, y_player_sub; 
// Coin
u16* coin;
int x_coin, y_coin; 
int y_coin_initial = 39;
int nb_coins = 0; // Number of collected coins
u16* coin_sub;
int coin_x_sub_game = 0;
int coin_x_sub_menu = 0;
// Obstacles
u16* obst_rock;
int x_rock, y_rock; 
int rockSpawnDelay = 20; 

// Temple
u16* temple;
int x_temple, y_temple;
int y_temple_initial = 0;

// Background
u16* tree1;
int x_tree1, y_tree1;
int y_tree1_initial = 0;
u16* tree2;
int x_tree2, y_tree2;
int y_tree2_initial = 0;

bool collision_detected = false;
bool level_finished = false;
// Remains false until the end of the level 
bool game_end = false; 
bool launch_obstacles = true;

// Counters for progression
int cnt = 0;
int unlock = 0;
int level = 0;

// Horizontal and Vertical scaling for depth effect
// Scaling factor for the coin
float scale_coin = 0.5;
const SpriteSize INITIAL_COIN_SIZE = SpriteSize_32x32;
// Scaling factor for the obstacle
float scale_rock = 0.5;
const SpriteSize INITIAL_ROCK_SIZE = SpriteSize_32x32;
// Scaling factor for the temple
float scale_temple = 0.5;
const SpriteSize INITIAL_TEMPLE_SIZE = SpriteSize_64x64;

float scale_tree1 = 0.5;
float scale_tree2 = 0.5;
const SpriteSize INITIAL_TREE_SIZE = SpriteSize_64x64;

// Randomize coin position
int min_value = (SCREEN_WIDTH/2)-18;       // Set the minimum value of the interval. (SCREEN_WIDTH/2)-1-18;  
int max_value = (SCREEN_WIDTH/2)+18-COIN_WIDTH;      // Set the maximum value of the interval

// Animate player
int image = 0;
int sound = 0; // Variable for step sound only half the time


// Interrupts for game update 
void ISR_Timer0() {
    cnt += 1;
    // Progression on sub screen
    if (cnt % 2 == 0)
        x_player_sub += 1;
    
    // End game counter
    if (cnt >= 260-30){
        game_end = true;
        launch_obstacles = game_end;
    }

    sound = (sound + 1) % 3;
    if (sound==0){
        mmEffect(SFX_RUNNING);
    }
    
    dmaCopy(coinTiles, coin, coinTilesLen); 
    dmaCopy(rockTiles, obst_rock, rockTilesLen); 
    scanKeysAndAnimate();
    updatePlayerPosition();
    updateCoins();
    updateBackground();
    updateObstacles();
    handleGameEnd();
    detectCollisions();

}



void start_game()
{
    graphics_intro();
    mmStop();
    while(!(keysDown() & KEY_START)){
        scanKeys();
    }
    graphics_setup_menu_main();
    graphics_setup_menu_sub(unlock, nb_coins);

	handle_menu();
}


void handle_menu()
{
    mmStart(MOD_MENU, MM_PLAY_LOOP);
    while(1){   
        // Scan the keys
        scanKeys();

        // Reset 
        if(keysDown() & KEY_SELECT) {
            nb_coins = 0;
            coin_x_sub_menu = 0;
            unlock = 0;
            start_game();
        }

        // Spend coins to unlock level 2/3
        if(keysDown() & KEY_L && nb_coins >= 3 && (unlock == 0)) { 
            nb_coins -= 3;
            coin_x_sub_menu -= 3 * 16;  
            unlock = 1;
            level = 1;
            graphics_setup_menu_sub(unlock, nb_coins); 
        }

        if(keysDown() & KEY_R && nb_coins >= 5 && (unlock == 1)) { 
            nb_coins -= 5;
            coin_x_sub_menu -= 5 * 16;  
            unlock = 2;
            level = 2;
            graphics_setup_menu_sub(unlock, nb_coins); 
        }

        // Declare a touchPosition variable
        touchPosition touch;
        // Read the touchscreen
        touchRead(&touch);

        // Check if one of the game levels is selected
        if((touch.py >= 71) && (touch.py <= 111)){
            if((touch.px >= 47) && (touch.px <= 87)){
                // This should lead to the 1st level of the game
                level = 0;
                mmEffect(SFX_BUBBLE);
                handle_game();
            }
            else if((touch.px >= 107) && (touch.px <= 147) && (unlock >= 1)){
                // This should lead to the 2nd level of the game
                level = 1;
                mmStop();
                mmEffect(SFX_BUBBLE);
                mmStart(MOD_WESTERN, MM_PLAY_LOOP);
                handle_game();
            }
            else if((touch.px >= 167) && (touch.px <= 207) && (unlock == 2)){
                // This should lead to the 3rd level of the game
                level = 2;
                mmStop();
                mmEffect(SFX_BUBBLE);
                mmStart(MOD_DUNE, MM_PLAY_LOOP);
                handle_game();
            }
        }
        graphics_menu_coins(nb_coins);
    }
}


void handle_game(){
    if (level == 0){
        mmStop();
    }
	graphics_game_init(unlock); 
    cnt = 0;

	// SPRITES
	// Allocate space for the graphic to show in the sprite
	player = oamAllocateGfx(&oamMain, SpriteSize_32x32, SpriteColorFormat_16Color);
    player_sub = oamAllocateGfx(&oamSub, SpriteSize_32x32, SpriteColorFormat_16Color);
	coin = oamAllocateGfx(&oamMain, INITIAL_COIN_SIZE, SpriteColorFormat_16Color);
	obst_rock = oamAllocateGfx(&oamMain, INITIAL_ROCK_SIZE, SpriteColorFormat_16Color);
    temple = oamAllocateGfx(&oamMain, INITIAL_TEMPLE_SIZE, SpriteColorFormat_16Color);
    tree1 = oamAllocateGfx(&oamMain, INITIAL_TREE_SIZE, SpriteColorFormat_16Color);
    tree2 = oamAllocateGfx(&oamMain, INITIAL_TREE_SIZE, SpriteColorFormat_16Color);
    coin_sub = oamAllocateGfx(&oamSub, INITIAL_COIN_SIZE, SpriteColorFormat_16Color);


    if (level == 0) {
        // Copy data for the graphic (palette and tiles)
        dmaCopy(playerPal, SPRITE_PALETTE, playerPalLen);
        // Copy only one of the 2 player images
        dmaCopy(playerTiles, player, playerTilesLen/2);

        dmaCopy(coinPal, SPRITE_PALETTE + 16, coinPalLen); // Use a separate palette slot for the coin
        dmaCopy(coinTiles, coin, coinTilesLen);

        dmaCopy(rockPal, SPRITE_PALETTE + 32, rockPalLen);
        dmaCopy(rockTiles, obst_rock, rockTilesLen);

        dmaCopy(player_subPal, SPRITE_PALETTE_SUB, player_subPalLen);
        dmaCopy(player_subTiles, player_sub, player_subTilesLen);

        dmaCopy(coinPal, SPRITE_PALETTE_SUB+16, coinPalLen);
        dmaCopy(coinTiles, coin_sub, coinTilesLen);

        dmaCopy(templePal, SPRITE_PALETTE + 48, templePalLen);
        dmaCopy(templeTiles, temple, templeTilesLen);

        dmaCopy(tree1Pal, SPRITE_PALETTE + 64, tree1PalLen);
        dmaCopy(tree1Tiles, tree1, tree1TilesLen);

        dmaCopy(tree2Pal, SPRITE_PALETTE + 80, tree2PalLen);
        dmaCopy(tree2Tiles, tree2, tree2TilesLen);
    } else if (level == 1) {
        // Copy data for the graphic (palette and tiles)
        dmaCopy(player2Pal, SPRITE_PALETTE, player2PalLen);
        // Copy only one of the 2 player images
        dmaCopy(player2Tiles, player, player2TilesLen/2); 

        dmaCopy(coinPal, SPRITE_PALETTE + 16, coinPalLen); // Use a separate palette slot for the coin
        dmaCopy(coinTiles, coin, coinTilesLen);

        dmaCopy(rockPal, SPRITE_PALETTE + 32, rockPalLen);
        dmaCopy(rockTiles, obst_rock, rockTilesLen);

        dmaCopy(player_sub2Pal, SPRITE_PALETTE_SUB, player_sub2PalLen);
        dmaCopy(player_sub2Tiles, player_sub, player_sub2TilesLen);

        dmaCopy(coinPal, SPRITE_PALETTE_SUB+16, coinPalLen);
        dmaCopy(coinTiles, coin_sub, coinTilesLen);

        dmaCopy(temple2Pal, SPRITE_PALETTE + 48, temple2PalLen);
        dmaCopy(temple2Tiles, temple, temple2TilesLen);

        dmaCopy(cactus1Pal, SPRITE_PALETTE + 64, cactus1PalLen);
        dmaCopy(cactus1Tiles, tree1, cactus1TilesLen);

        dmaCopy(cactus2Pal, SPRITE_PALETTE + 80, cactus2PalLen);
        dmaCopy(cactus2Tiles, tree2, cactus2TilesLen);
    } else if (level == 2) {
        // Copy data for the graphic (palette and tiles)
        dmaCopy(player3Pal, SPRITE_PALETTE, player3PalLen);
        // Copy only one of the 2 player images
        dmaCopy(player3Tiles, player, player3TilesLen/2); 

        dmaCopy(coinPal, SPRITE_PALETTE + 16, coinPalLen); // Use a separate palette slot for the coin
        dmaCopy(coinTiles, coin, coinTilesLen);

        dmaCopy(rockPal, SPRITE_PALETTE + 32, rockPalLen);
        dmaCopy(rockTiles, obst_rock, rockTilesLen);

        dmaCopy(player_sub3Pal, SPRITE_PALETTE_SUB, player_sub3PalLen);
        dmaCopy(player_sub3Tiles, player_sub, player_sub3TilesLen);

        dmaCopy(coinPal, SPRITE_PALETTE_SUB+16, coinPalLen);
        dmaCopy(coinTiles, coin_sub, coinTilesLen);

        dmaCopy(temple3Pal, SPRITE_PALETTE + 48, temple3PalLen);
        dmaCopy(temple3Tiles, temple, temple3TilesLen);

        dmaCopy(camel1Pal, SPRITE_PALETTE + 64, camel1PalLen);
        dmaCopy(camel1Tiles, tree1, camel1TilesLen);

        dmaCopy(camel2Pal, SPRITE_PALETTE + 80, camel2PalLen);
        dmaCopy(camel2Tiles, tree2, camel2TilesLen);

    }

	// Initial positions
	x_player = (SCREEN_WIDTH/2)-1-(PLAYER_WIDTH/2);
    y_player = (SCREEN_HEIGHT)-1-PLAYER_HEIGHT;

    x_player_sub = 55-16, y_player_sub = 95-32;

	srand(time(NULL));
	x_coin = min_value + rand() % (max_value - min_value + 1); 
    y_coin = y_coin_initial;
	x_rock = min_value + rand() % (max_value - min_value + 1);
    y_rock = y_coin_initial;

    x_temple = SCREEN_WIDTH/2-TEMPLE_WIDTH;
    y_temple = y_temple_initial;

    if (rand() % 2 == 0) {
    // Spawn on the left side outside the interval
        x_tree1 = rand() % (min_value - TREE_WIDTH);
    } else {
    // Spawn on the right side outside the interval
        x_tree1 = 162 + rand() % 29; // 162 corresponds to max_value + COIN_WIDTH (right band) and 29 corresponds to (255-64-162) the upper most value to display
    }
    y_tree1 = 0;


    if (rand() % 2 == 0) {
    // Spawn on the left side outside the interval
        x_tree2 = rand()+20 % (min_value - TREE_WIDTH); 
    // Spawn on the right side outside the interval
        x_tree2 = 162 + rand() % 29; // 162 corresponds to max_value + COIN_WIDTH (right band) and 29 corresponds to (255-64-162) the upper most value to display
    }
    y_tree2 = 0;

	// Game timer initialization
	TIMER0_CR = TIMER_DIV_1024 | TIMER_IRQ_REQ | TIMER_ENABLE;
	TIMER0_DATA = TIMER_FREQ_1024(10); 
	irqSet(IRQ_TIMER0, &ISR_Timer0);
	irqEnable(IRQ_TIMER0);

	// Initialize affine transformation for the coin
    int hdx_coin = 256 / scale_coin; 
    int vdy_coin = 256 / scale_coin;
    oamAffineTransformation(&oamMain, 0, hdx_coin, 0, 0, vdy_coin);

    // Initialize affine transformation for the rock
    int hdx_rock = 256 / scale_rock; 
    int vdy_rock = 256 / scale_rock;
    oamAffineTransformation(&oamMain, 1, hdx_rock, 0, 0, vdy_rock);

    // Initialize affine transformation for the tree1
    int hdx_tree1 = 256 / scale_tree1; // Convert to fixed-point
    int vdy_tree1 = 256 / scale_tree1;
    oamAffineTransformation(&oamMain, 2, hdx_tree1, 0, 0, vdy_tree1);

    // Initialize affine transformation for the tree2
    int hdx_tree2 = 256 / scale_tree2; // Convert to fixed-point
    int vdy_tree2 = 256 / scale_tree2;
    oamAffineTransformation(&oamMain, 3, hdx_tree2, 0, 0, vdy_tree2);

    // Initialize affine transformation for the temple
    int hdx_temple = 256 / scale_temple; // Convert to fixed-point
    int vdy_temple = 256 / scale_temple;
    oamAffineTransformation(&oamMain, 4, hdx_temple, 0, 0, vdy_temple);

	while(!collision_detected && !level_finished){
        oamUpdate(&oamMain);
        oamUpdate(&oamSub);  

		// Player
		oamSet(&oamMain, 	// oam handler
    		0,				// Number of sprite
    		x_player, y_player,			// Coordinates
    		0,				// Priority
    		0,				// Palette to use
    		SpriteSize_32x32,			// Sprite size
    		SpriteColorFormat_16Color,	// Color format
			player,			// Loaded graphic to display
			-1,				// Affine rotation to use (-1 none)
			false,			// Double size if rotating
			false,			// Hide this sprite
			false, false,	// Horizontal or vertical flip
			false			// Mosaic
			);


		// Coins
        oamSet(&oamMain,
            1, x_coin, y_coin,
            0, 1, INITIAL_COIN_SIZE, SpriteColorFormat_16Color,
            coin, 0, false, game_end, false, false, false);

		// Rocks
		oamSet(&oamMain,
            2, x_rock, y_rock,
            0, 2, INITIAL_ROCK_SIZE, SpriteColorFormat_16Color,
            obst_rock, 1, false, launch_obstacles, false, false, false);	
        
        // Trees
		oamSet(&oamMain,
            3, x_tree1, y_tree1,
            0, 4, INITIAL_TREE_SIZE, SpriteColorFormat_16Color,
            tree1, 2, false, false, false, false, true);	
        
        oamSet(&oamMain,
            4, x_tree2, y_tree2,
            0, 5, INITIAL_TREE_SIZE, SpriteColorFormat_16Color,
            tree2, 3, false, false, false, false, false);

        // Temple
        oamSet(&oamMain,
            5, x_temple, y_temple,
            0, 3, INITIAL_TEMPLE_SIZE, SpriteColorFormat_16Color,
            temple, 4, false, !game_end, false, false, false);	
            oamUpdate(&oamMain);

        if (level == 0){
            dmaCopy(game_mainMap, BG_MAP_RAM(0), game_mainMapLen);
            dmaCopy(game_mainTiles, BG_TILE_RAM(1), game_mainTilesLen);
            dmaCopy(game_mainPal, BG_PALETTE, game_mainPalLen);
        } else if (level == 1) {
            dmaCopy(game_main2Map, BG_MAP_RAM(0), game_main2MapLen);
            dmaCopy(game_main2Tiles, BG_TILE_RAM(1), game_main2TilesLen);
            dmaCopy(game_main2Pal, BG_PALETTE, game_main2PalLen);
        } else {
            dmaCopy(game_main3Map, BG_MAP_RAM(0), game_main3MapLen);
            dmaCopy(game_main3Tiles, BG_TILE_RAM(1), game_main3TilesLen);
            dmaCopy(game_main3Pal, BG_PALETTE, game_main3PalLen);
        }

        // Sub player
        oamSet(&oamSub, 
        0, x_player_sub, y_player_sub,  
        0, 0, SpriteSize_32x32, SpriteColorFormat_16Color, 
        player_sub, -1, false, false, false, false, false);

        if (level == 0){
            dmaCopy(progressionMap, BG_MAP_RAM_SUB(0), progressionMapLen);
            dmaCopy(progressionTiles, BG_TILE_RAM_SUB(1), progressionTilesLen);
            dmaCopy(progressionPal, BG_PALETTE_SUB, progressionPalLen);
        } else if (level == 1){
            dmaCopy(progression2Map, BG_MAP_RAM_SUB(0), progression2MapLen);
            dmaCopy(progression2Tiles, BG_TILE_RAM_SUB(1), progression2TilesLen);
            dmaCopy(progression2Pal, BG_PALETTE_SUB, progression2PalLen);
        } else {
            dmaCopy(progression3Map, BG_MAP_RAM_SUB(0), progression3MapLen);
            dmaCopy(progression3Tiles, BG_TILE_RAM_SUB(1), progression3TilesLen);
            dmaCopy(progression3Pal, BG_PALETTE_SUB, progression3PalLen);
        }
	}
    TIMER0_CR &= ~(TIMER_ENABLE | TIMER_IRQ_REQ);  // Disable timer and interrupts
    irqDisable(IRQ_TIMER0);  // Disable the interrupt handling

    if(collision_detected){
        graphics_game_over();
        wait_3s();
    }

    /*
    if(level_finished){
        graphics_win();
        wait_3s();
    }
    */
    
    mmEffect(SFX_BUBBLE);
    graphics_setup_menu_main(); 
    graphics_setup_menu_sub(unlock, nb_coins);  
    collision_detected = false; 
    level_finished = false;
    game_end = false;
    coin_x_sub_game = 0;
    launch_obstacles = true;
    rockSpawnDelay = 20; 
    handle_menu();
}



// GAME FUNCTIONS

void scanKeysAndAnimate() {
    scanKeys(); 
    image = (image + 1) % 2; // Toggle the image frame between 0 and 1 for animation
    if (level == 0) {
        dmaCopy(playerTiles + (image * playerTilesLen / 8), player, playerTilesLen / 2);
    } else if (level == 1) {
        dmaCopy(player2Tiles + (image * player2TilesLen / 8), player, player2TilesLen / 2);
    } else {
        dmaCopy(player3Tiles + (image * player3TilesLen / 8), player, player3TilesLen / 2);
    }
}

void updatePlayerPosition() {
    if ((keysHeld() & KEY_LEFT) && (x_player > ((SCREEN_WIDTH / 2) - 32 - (PLAYER_WIDTH / 2)))) {
        x_player -= PLAYER_WIDTH / 2; // Move left
    }
    if ((keysHeld() & KEY_RIGHT) && (x_player < ((SCREEN_WIDTH / 2) + 32 - (PLAYER_WIDTH / 2)))) {
        x_player += PLAYER_WIDTH / 2; // Move right
    }
}

void updateCoins() {
    scale_coin += 0.02; 
    int hdx_coin = 256 / scale_coin; 
    int vdy_coin = 256 / scale_coin;
    oamAffineTransformation(&oamMain, 0, hdx_coin, 0, 0, vdy_coin); // Apply affine transformation to the coin

    y_coin += COIN_WIDTH / 2; // Move the coin vertically
    if (x_coin + (COIN_WIDTH / 2) > (SCREEN_WIDTH / 2) - 1) {
        x_coin += 1; // Move right
    } else {
        x_coin -= 1; // Move left
    }

    if (y_coin > SCREEN_HEIGHT) {
        resetCoinPositionAndSize(); // Reset coin if it goes off-screen
    }

    if (checkCoinCollision()) {
        handleCoinCatch(); // Handle coin collection if collision occurs
    }
}


void updateBackground() { // Made of only 2 sprites (trees/cactus/camel) different for every level
    updateTree(&scale_tree1, &y_tree1, &x_tree1, 2); // Update first tree
    updateTree(&scale_tree2, &y_tree2, &x_tree2, 3); // Update second tree
}


void updateTree(float* scale, int* y, int* x, int oamId) {
    *scale += 0.02; 
    int hdx = 256 / *scale; 
    int vdy = 256 / *scale;
    oamAffineTransformation(&oamMain, oamId, hdx, 0, 0, vdy); 

    *y += COIN_WIDTH / 2; 
    if (*x + (COIN_WIDTH / 2) > (SCREEN_WIDTH / 2) - 1) {
        *x += 1; 
    } else {
        *x -= 1; 
    }

    if (*y > SCREEN_HEIGHT) {
        resetTreePositionAndSize(scale, y, x, oamId); // Reset tree if it goes off-screen
    }
}

// Obstacles spawn after coins
void updateObstacles() {

    if (rockSpawnDelay == 1)
        launch_obstacles = false;
    if (rockSpawnDelay > 0) { // Decrement delay counter
        rockSpawnDelay--; // Do nothing until delay is over
        return;
    }


    scale_rock += 0.02; 
    int hdx_rock = 256 / scale_rock; 
    int vdy_rock = 256 / scale_rock;
    oamAffineTransformation(&oamMain, 1, hdx_rock, 0, 0, vdy_rock); 

    y_rock += ROCK_WIDTH / 2; // Adjust the speed by changing the increment value
    if (x_rock + (ROCK_WIDTH / 2) > (SCREEN_WIDTH / 2) - 1) {
        x_rock += 1; 
    } else {
        x_rock -= 1;
    }

    if (y_rock > SCREEN_HEIGHT) {
        resetRockPositionAndSize(); // Reset rock if it goes off-screen
    }
}


void handleGameEnd() {
    if (game_end) {
        scale_temple += 0.02; 
        int hdx_temple = 256 / scale_temple; 
        int vdy_temple = 256 / scale_temple;
        oamAffineTransformation(&oamMain, 4, hdx_temple, 0, 0, vdy_temple); 

        y_temple += TEMPLE_WIDTH / 10; 
        if (y_temple > SCREEN_HEIGHT - ((TEMPLE_HEIGHT * 2) * scale_temple)) {
            resetTemple();
            level_finished = true; // Mark the level as finished
        }
    }
}


void detectCollisions() {
    if (checkRockCollision() || (keysDown() & KEY_SELECT)) {
        mmEffect(SFX_ROCK); 
        collision_detected = true; // Set collision flag

        scale_coin = scale_rock = scale_tree1 = scale_tree2 = 0.5; // Reset scaling for all objects

        // Apply reset scaling for all objects
        int hdx_coin = 256 / scale_coin, vdy_coin = 256 / scale_coin;
        int hdx_rock = 256 / scale_rock, vdy_rock = 256 / scale_rock;
        int hdx_tree1 = 256 / scale_tree1, vdy_tree1 = 256 / scale_tree1;
        int hdx_tree2 = 256 / scale_tree2, vdy_tree2 = 256 / scale_tree2;

        oamAffineTransformation(&oamMain, 0, hdx_coin, 0, 0, vdy_coin);
        oamAffineTransformation(&oamMain, 1, hdx_rock, 0, 0, vdy_rock);
        oamAffineTransformation(&oamMain, 2, hdx_tree1, 0, 0, vdy_tree1);
        oamAffineTransformation(&oamMain, 3, hdx_tree2, 0, 0, vdy_tree2);
    }
}


void resetCoinPositionAndSize() {
    y_coin = y_coin_initial; 
    x_coin = min_value + rand() % (max_value - min_value + 1); // Randomize the x position
    scale_coin = 0.5; // Reset coin scale

    // Apply reset scaling to the coin
    int hdx_coin = 256 / scale_coin; 
    int vdy_coin = 256 / scale_coin;
    oamAffineTransformation(&oamMain, 0, hdx_coin, 0, 0, vdy_coin);
}


bool checkCoinCollision() {
    int scaledCoinWidth = COIN_WIDTH * scale_coin;
    return (y_coin > SCREEN_HEIGHT - 1 - PLAYER_HEIGHT &&
            x_coin + scaledCoinWidth >= x_player &&
            x_coin <= x_player + PLAYER_WIDTH && 
            !game_end); // Return true if collision occurs
}


void handleCoinCatch() {
    mmEffect(SFX_MONEY); 
    nb_coins++; // Increment the coin counter
    resetCoinPositionAndSize(); 

    if (coin_x_sub_game <= SCREEN_WIDTH - 16) {  // Ensure coins fit on the screen
        // Add the coin to the sub-screen
        oamSet(&oamSub, nb_coins + 1, coin_x_sub_game, SCREEN_HEIGHT - 32, // Position on the sub-screen (bottom)
               0, 1, SpriteSize_32x32, SpriteColorFormat_16Color,
               coin_sub, -1, false, false, false, false, false); // Use the same coin graphic

        coin_x_sub_game += 16; // Increment coin position for next coin to display
    }
}


void resetTreePositionAndSize(float* scale, int* y, int* x, int oamId) {
    *y = y_tree1_initial; 
    if (rand() % 2 == 0) {
        *x = rand() % (min_value - TREE_WIDTH); // Spawn on the left side outside the interval
    } else { // Spawn on the right side outside the interval
        *x = 162 + rand() % 29; // 162 corresponds to max_value + COIN_WIDTH (right band) and 29 corresponds to (255-64-162) the upper most value to display
    }

    *scale = 0.5; 
    int hdx = 256 / *scale; 
    int vdy = 256 / *scale;
    oamAffineTransformation(&oamMain, oamId, hdx, 0, 0, vdy); 
}

void resetRockPositionAndSize() {
    y_rock = y_coin_initial; 
    x_rock = min_value + rand() % (max_value - min_value + 1);
    scale_rock = 0.5; 
    int hdx_rock = 256 / scale_rock; 
    int vdy_rock = 256 / scale_rock;
    oamAffineTransformation(&oamMain, 1, hdx_rock, 0, 0, vdy_rock);
}


bool checkRockCollision() {
    int scaledRockWidth = ROCK_WIDTH * scale_rock;
    return (y_rock > SCREEN_HEIGHT - 1 - PLAYER_HEIGHT &&
            x_rock + scaledRockWidth >= x_player &&
            x_rock <= x_player + PLAYER_WIDTH &&
            !game_end); // Return true if collision occurs
}

void resetTemple() {
    y_temple = y_temple_initial; 
    scale_temple = 0.5; 

    int hdx_temple = 256 / scale_temple; 
    int vdy_temple = 256 / scale_temple;
    oamAffineTransformation(&oamMain, 4, hdx_temple, 0, 0, vdy_temple); // Apply affine transformation
}

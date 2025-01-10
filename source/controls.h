// Audio (used in controls)
#include "audio.h"

// Graphics (used in controls)
#include "graphics.h"

#include <nds.h>

/*
    Game initialization
    Initializes all the necessary systems and resources to start the game.
*/
void start_game();

/*
    Function to manage the menu
    Handles the user interface and interactions in the main menu.
*/
void handle_menu();

/*
    Function to manage the game
    Controls the main gameplay loop, including game logic and interactions.
*/
void handle_game();

/*
    Scan keys and animate
    Scans the input keys and updates the player animation based on the inputs.
*/
void scanKeysAndAnimate(void);

/*
    Update player position
    Updates the player's position on the screen based on input and game state.
*/
void updatePlayerPosition(void);

/*
    Update coin positions and states
    Updates the positions and states of all collectible coins in the game.
*/
void updateCoins(void);

/*
    Update background elements
    Refreshes and modifies the background elements such as scenery or obstacles.
*/
void updateBackground(void);

/*
    Update tree
    Adjusts the scale, position, and updates the tree object for rendering.
    @param scale Pointer to the tree's scale factor.
    @param y Pointer to the y-coordinate position of the tree.
    @param x Pointer to the x-coordinate position of the tree.
    @param oamId for the tree sprite.
*/
void updateTree(float* scale, int* y, int* x, int oamId);

/*
    Update obstacles
    Updates the positions and states of obstacles in the game world.
*/
void updateObstacles(void);

/*
    Handle game end
    Handles all game end logic such as displaying the end screen and transitioning to the main menu.
*/
void handleGameEnd(void);

/*
    Detect collisions
    Detects collisions between the player, coins, and obstacles.
*/
void detectCollisions(void);

/*
    Reset coin position and size
    Resets the position and size of the coins after they have been collected.
*/
void resetCoinPositionAndSize(void);

/*
    Check coin collision
    Checks if the player has collided with any coin.
    @return True if a coin collision is detected, otherwise false.
*/
bool checkCoinCollision(void);

/*
    Handle coin catch
    Handles the logic when the player catches a coin, including updating score and visuals.
*/
void handleCoinCatch(void);

/*
    Reset tree position and size
    Resets the position and size of the tree object.
    @param scale Pointer to the tree's scale factor.
    @param y Pointer to the y-coordinate position of the tree.
    @param x Pointer to the x-coordinate position of the tree.
    @param oamId for the tree sprite.
*/
void resetTreePositionAndSize(float* scale, int* y, int* x, int oamId);

/*
    Reset rock position and size
    Resets the position and size of the rock obstacles.
*/
void resetRockPositionAndSize(void);

/*
    Check rock collision
    Checks if the player has collided with any rock obstacle.
    @return True if a rock collision is detected, otherwise false.
*/
bool checkRockCollision(void);

/*
    Reset temple
    Resets the temple object, typically used at the start or after game over.
*/
void resetTemple(void);

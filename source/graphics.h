#include <nds.h>

// Sprites
#include "player.h"
#include "player2.h"
#include "player3.h"
#include "coin.h"
#include "rock.h"
#include "player_sub.h"
#include "player_sub2.h"
#include "player_sub3.h"
#include "temple.h"
#include "temple2.h"
#include "temple3.h"
#include "tree1.h"
#include "tree2.h"
#include "cactus1.h"
#include "cactus2.h"
#include "camel1.h"
#include "camel2.h"


// Menu images
#include "game_main.h"
#include "game_main2.h"
#include "game_main3.h"
#include "menu_sub.h"
#include "menu_sub2.h"
#include "menu_sub3.h"
#include "reset_main.h"
#include "reset_sub.h"
#include "menu_main.h"
#include "progression.h"
#include "progression2.h"
#include "progression3.h"
#include "game_over.h"
// #include "win.h"



#define SCREEN_WIDTH	256
#define	SCREEN_HEIGHT	192

#define PLAYER_WIDTH    32
#define PLAYER_HEIGHT   32

#define	COIN_WIDTH 16 // Initial spawn size
#define	COIN_HEIGHT	16

#define ROCK_WIDTH 16
#define ROCK_HEIGHT 16

#define TEMPLE_WIDTH 32
#define TEMPLE_HEIGHT 32

#define TREE_WIDTH 64

/*
    Function to display screen menu Main
*/
void graphics_setup_menu_main();

/*
    Function to display screen menu Sub
*/
void graphics_setup_menu_sub(int unlock, int nb_coins);

/*
    Function to display game Main
*/
void graphics_game_init(int unlock);

/*
    Function to display intro
*/
void graphics_intro();

/*
    Function to display game over screen
*/
void graphics_game_over();

/*
    Function to display win over screen
*/
//void graphics_win();

/*
    Function to display coins on menu
*/
void graphics_menu_coins(int nb_coins);

//{{BLOCK(game_main)

//======================================================================
//
//	game_main, 256x192@4, 
//	+ palette 256 entries, not compressed
//	+ 383 tiles (t|f reduced) not compressed
//	+ regular map (flat), not compressed, 32x24 
//	Total size: 512 + 12256 + 1536 = 14304
//
//	Time-stamp: 2025-01-08, 22:08:44
//	Exported by Cearn's GBA Image Transmogrifier, v0.9.2
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAME_MAIN_H
#define GRIT_GAME_MAIN_H

#define game_mainTilesLen 12256
extern const unsigned int game_mainTiles[3064];

#define game_mainMapLen 1536
extern const unsigned short game_mainMap[768];

#define game_mainPalLen 512
extern const unsigned short game_mainPal[256];

#endif // GRIT_GAME_MAIN_H

//}}BLOCK(game_main)

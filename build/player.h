
//{{BLOCK(player)

//======================================================================
//
//	player, 32x64@4, 
//	+ palette 256 entries, not compressed
//	+ 32 tiles not compressed
//	Total size: 512 + 1024 = 1536
//
//	Time-stamp: 2025-01-08, 22:08:45
//	Exported by Cearn's GBA Image Transmogrifier, v0.9.2
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PLAYER_H
#define GRIT_PLAYER_H

#define playerTilesLen 1024
extern const unsigned int playerTiles[256];

#define playerPalLen 512
extern const unsigned short playerPal[256];

#endif // GRIT_PLAYER_H

//}}BLOCK(player)

//{{BLOCK(reset_main)

//======================================================================
//
//	reset_main, 256x192@8, 
//	+ palette 256 entries, not compressed
//	+ 365 tiles (t|f reduced) not compressed
//	+ regular map (flat), not compressed, 32x24 
//	Total size: 512 + 23360 + 1536 = 25408
//
//	Time-stamp: 2025-01-08, 22:08:43
//	Exported by Cearn's GBA Image Transmogrifier, v0.9.2
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_RESET_MAIN_H
#define GRIT_RESET_MAIN_H

#define reset_mainTilesLen 23360
extern const unsigned int reset_mainTiles[5840];

#define reset_mainMapLen 1536
extern const unsigned short reset_mainMap[768];

#define reset_mainPalLen 512
extern const unsigned short reset_mainPal[256];

#endif // GRIT_RESET_MAIN_H

//}}BLOCK(reset_main)

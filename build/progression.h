
//{{BLOCK(progression)

//======================================================================
//
//	progression, 256x192@4, 
//	+ palette 256 entries, not compressed
//	+ 59 tiles (t|f reduced) not compressed
//	+ regular map (flat), not compressed, 32x24 
//	Total size: 512 + 1888 + 1536 = 3936
//
//	Time-stamp: 2025-01-08, 22:08:43
//	Exported by Cearn's GBA Image Transmogrifier, v0.9.2
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PROGRESSION_H
#define GRIT_PROGRESSION_H

#define progressionTilesLen 1888
extern const unsigned int progressionTiles[472];

#define progressionMapLen 1536
extern const unsigned short progressionMap[768];

#define progressionPalLen 512
extern const unsigned short progressionPal[256];

#endif // GRIT_PROGRESSION_H

//}}BLOCK(progression)

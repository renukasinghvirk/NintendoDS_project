
//{{BLOCK(reset_sub)

//======================================================================
//
//	reset_sub, 256x192@8, 
//	+ palette 256 entries, not compressed
//	+ 217 tiles (t|f reduced) not compressed
//	+ regular map (flat), not compressed, 32x24 
//	Total size: 512 + 13888 + 1536 = 15936
//
//	Time-stamp: 2025-01-08, 22:08:44
//	Exported by Cearn's GBA Image Transmogrifier, v0.9.2
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_RESET_SUB_H
#define GRIT_RESET_SUB_H

#define reset_subTilesLen 13888
extern const unsigned int reset_subTiles[3472];

#define reset_subMapLen 1536
extern const unsigned short reset_subMap[768];

#define reset_subPalLen 512
extern const unsigned short reset_subPal[256];

#endif // GRIT_RESET_SUB_H

//}}BLOCK(reset_sub)


@{{BLOCK(progression2)

@=======================================================================
@
@	progression2, 256x192@4, 
@	+ palette 256 entries, not compressed
@	+ 41 tiles (t|f reduced) not compressed
@	+ regular map (flat), not compressed, 32x24 
@	Total size: 512 + 1312 + 1536 = 3360
@
@	Time-stamp: 2025-01-08, 22:08:44
@	Exported by Cearn's GBA Image Transmogrifier, v0.9.2
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global progression2Tiles		@ 1312 unsigned chars
	.hidden progression2Tiles
progression2Tiles:
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x01111111,0x01111111
	.word 0x11111111,0x00001111,0x00000111,0xAAA00011,0xAAAA0001,0x2AAAA000,0x2AAAAA00,0x2AAAAAA0
	.word 0x11111111,0x11110000,0x11100000,0x11000AAA,0x1000AAAA,0x000AAAAA,0x00AA22AA,0xAAAA22AA
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111110,0x11111110,0x11111100
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11000011,0x10000001,0x000AA000
	.word 0x00111111,0x00111111,0x00111111,0x00111111,0x00111111,0x00111111,0x00111111,0x00111111

	.word 0x22AA2AAA,0x22AA2AAA,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA2233,0x22AA2233,0x22AA22AA
	.word 0xAAAA22AA,0xAA3322AA,0x223322AA,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA2233
	.word 0x01111111,0x00111111,0x00111111,0x00111111,0x00111111,0x00111111,0x00111111,0x00111111
	.word 0x00AAAA22,0x0A222A22,0x0A222AA2,0x33222AA2,0x33222AA2,0xAA222AA2,0xAA222AAA,0xAA222A33
	.word 0x00111110,0x00111100,0x00111100,0x00111100,0x00111100,0x00111100,0x00111100,0x00111100
	.word 0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA22AA
	.word 0x22AA2233,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x223322AA,0x223322AA,0x22AA22AA
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11000111,0x10000001,0x000AA000

	.word 0xAA222A33,0xAA222AAA,0xAA22AAAA,0x3322AAAA,0x3322AAAA,0x222AAAAA,0x222AAAA2,0x2AAAAAA2
	.word 0x00111000,0x0011000A,0x0010000A,0x00000AAA,0x0000AAAA,0xAAAAAAAA,0xAAAAAAAA,0x22222222
	.word 0x11111100,0x01111100,0x01111100,0x00111100,0x00111100,0x00111100,0x00111100,0x90011100
	.word 0x0AAAAA00,0x0AA22A00,0x2AA22AAA,0x2AA22AAA,0xAAA222AA,0x33A222AA,0x33A222AA,0xAAA22233
	.word 0x00111111,0x01111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111
	.word 0x2AAAAA20,0xAAAAA200,0xAAAA2000,0xAAA20001,0x22200001,0x90000111,0x00011111,0x01111111
	.word 0x22222222,0xAAAA33AA,0xAAAA33AA,0xAAAAAAAA,0x22222222,0x00000000,0x00000000,0x00000000
	.word 0x22AA22AA,0x223322AA,0x223322AA,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA22AA

	.word 0xA0011100,0xAA001100,0xAA001100,0xAAA00100,0xAAA00000,0x222AAAAA,0x222AAAAA,0x222AAAAA
	.word 0xAAA22233,0xAAAA22AA,0xAAAA222A,0xAAAA222A,0xAAAAA222,0xAAAAA222,0x2AAAAA22,0x03AAAAA2
	.word 0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA2233,0x22AA2233,0x33AA22AA,0x33AA22AA,0x22AA22AA
	.word 0xAAAAAAAA,0xAAAA33AA,0xAAAA33AA,0xAAAAAAAA,0x22222222,0x00000000,0x00000000,0x11111100
	.word 0x00AAAAAA,0x002AAAAA,0x0022AAAA,0x00002AAA,0x11002222,0x11000000,0x11100000,0x11111111
	.word 0x11111111,0x11111111,0x11111711,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111
	.word 0x11111111,0x17111711,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111
	.word 0x22AA22AA,0x22AA22A4,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA22AA,0x223322AA

	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x51111111,0x51111111,0x51111111
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111155,0x11111155,0x81818155
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x86818181
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x81818181
	.word 0x00111111,0x00111111,0x00111111,0x00111111,0x00111111,0x00111111,0x00111111,0x00818181
	.word 0x223322AA,0x22AA22AA,0x22AA22AA,0x22AA2233,0x22AA2233,0x22AA22AA,0x22AA22AA,0x00000000
	.word 0x22AA22AA,0x22AA22AA,0x22AA22AA,0x22AA33AA,0x22AA33AA,0x22AA22AA,0x22AA22AA,0x00000000
	.word 0x00111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111

	.word 0x00000000,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111

	.section .rodata
	.align	2
	.global progression2Map		@ 1536 unsigned chars
	.hidden progression2Map
progression2Map:
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001

	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001

	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002
	.hword 0x0003,0x0004,0x0005,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0006,0x0007
	.hword 0x0008,0x0009,0x0407,0x0001,0x0001,0x0001,0x0001,0x0001

	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x000A,0x000B,0x000C
	.hword 0x000D,0x000E,0x0407,0x000F,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0007,0x0010,0x0011
	.hword 0x000D,0x000D,0x0012,0x0013,0x040A,0x0001,0x0001,0x0001

	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0014,0x0015,0x0016
	.hword 0x000D,0x0017,0x0018,0x0019,0x0407,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0007
	.hword 0x001A,0x000D,0x001B,0x001C,0x0C02,0x0001,0x0001,0x0001

	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x001D
	.hword 0x0001,0x001E,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0007
	.hword 0x001F,0x0817,0x0407,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0020,0x0021
	.hword 0x0022,0x0023,0x0023,0x0023,0x0023,0x0023,0x0023,0x0023
	.hword 0x0023,0x0023,0x0023,0x0023,0x0023,0x0023,0x0023,0x0024
	.hword 0x0025,0x0026,0x0407,0x0001,0x0001,0x0001,0x0001,0x0001

	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0027
	.hword 0x0028,0x0028,0x0427,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001

	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001

	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001

	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001

	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001

	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001

	.section .rodata
	.align	2
	.global progression2Pal		@ 512 unsigned chars
	.hidden progression2Pal
progression2Pal:
	.hword 0x0000,0x14CF,0x0120,0x5B36,0x0200,0x1656,0x14D1,0x14D0
	.hword 0x193B,0x0020,0x0220,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

@}}BLOCK(progression2)
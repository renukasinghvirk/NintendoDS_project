
@{{BLOCK(numbers)

@=======================================================================
@
@	numbers, 16x160@8, 
@	+ palette 256 entries, not compressed
@	+ 41 tiles (t|f reduced) not compressed
@	+ regular map (flat), not compressed, 2x20 
@	Total size: 512 + 2624 + 80 = 3216
@
@	Time-stamp: 2025-01-08, 22:08:43
@	Exported by Cearn's GBA Image Transmogrifier, v0.9.2
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global numbersTiles		@ 2624 unsigned chars
	.hidden numbersTiles
numbersTiles:
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x0D000000,0x00000000,0x0B0B0B00,0x00000000,0x0B0B0B0B,0x09000000,0x0B0B0B0B
	.word 0x0B000000,0x000B0B0B,0x0B000000,0x00000B0B,0x0B090000,0x00000B0B,0x0B090000,0x00000B0B
	.word 0x0000000C,0x00000000,0x010B0B0B,0x00000000,0x0B0B0B0B,0x00000001,0x0B0B0B0B,0x0000000B
	.word 0x0B0B0700,0x0000000B,0x0B0B0000,0x00000B0B,0x0B0B0000,0x00000B0B,0x0B090000,0x0000090B
	.word 0x0B0B0000,0x0000090B,0x0B090000,0x00000B0B,0x0B080000,0x00000B0B,0x0B000000,0x00000B0B
	.word 0x0B000000,0x00090B0B,0x09000000,0x0B0B0B0B,0x00000000,0x0B0B0B0B,0x00000000,0x0B0B0B00

	.word 0x0B090000,0x00000B0B,0x0B090000,0x00000B0B,0x0B0B0000,0x0000090B,0x0B0B0000,0x0000090B
	.word 0x0B0B0400,0x0000000B,0x0B0B0B09,0x0000000B,0x0B0B0B0B,0x00000009,0x060B0B0B,0x00000000
	.word 0x00000000,0x09000000,0x00000000,0x0B0B0B07,0x00000000,0x0B0B0B0B,0x00000000,0x0B0B0B0B
	.word 0x00000000,0x0B000000,0x00000000,0x0B000000,0x00000000,0x0B000000,0x00000000,0x0B000000
	.word 0x0000040B,0x00000000,0x00000B0B,0x00000000,0x00000B0B,0x00000000,0x00000B0B,0x00000000
	.word 0x00000B0B,0x00000000,0x00000B0B,0x00000000,0x00000B0B,0x00000000,0x00000B0B,0x00000000
	.word 0x00000000,0x0B000000,0x00000000,0x0B000000,0x00000000,0x0B000000,0x00000000,0x0B000000
	.word 0x00000000,0x0B000000,0x01000000,0x0B090909,0x09000000,0x0B0B0B0B,0x09000000,0x0B0B0B0B

	.word 0x00000B0B,0x00000000,0x00000B0B,0x00000000,0x00000B0B,0x00000000,0x00000B0B,0x00000000
	.word 0x00000B0B,0x00000000,0x09090B0B,0x0000000D,0x0B0B0B0B,0x0000000B,0x0B0B0B0B,0x0000000B
	.word 0x00000000,0x0B0B0100,0x0D000000,0x0B0B0B0B,0x0B060000,0x0B0B0B0B,0x0B0B0000,0x09090B0B
	.word 0x0B0B0000,0x0000010B,0x0B0B0000,0x0000000B,0x0B0B0000,0x00000009,0x00000000,0x00000000
	.word 0x0000000A,0x00000000,0x000D0B0B,0x00000000,0x090B0B0B,0x00000000,0x0B0B0B0B,0x00000000
	.word 0x0B0B0B07,0x00000000,0x0B0B0B00,0x00000000,0x0B0B0B00,0x00000000,0x0B0B0B0B,0x00000000
	.word 0x00000000,0x0B000000,0x00000000,0x0B0B0000,0x00000000,0x0B0B0B00,0x00000000,0x0B0B0B0B
	.word 0x0B000000,0x090B0B0B,0x0B0B0000,0x0B0B0B0B,0x0B0B0000,0x0B0B0B0B,0x0B0B0000,0x0B0B0B0B

	.word 0x090B0B0B,0x00000000,0x00090B0B,0x00000000,0x00000B0B,0x00000000,0x00000009,0x00000000
	.word 0x00000000,0x00000000,0x0B0B0B0B,0x00000009,0x0B0B0B0B,0x0000000B,0x0B0B0B0B,0x0000000B
	.word 0x00000000,0x0B0B0B01,0x00000000,0x0B0B0B0B,0x0B000000,0x090B0B0B,0x0B000000,0x000F0B0B
	.word 0x0B000000,0x00000B0B,0x00000000,0x00000000,0x00000000,0x0B0B0000,0x00000000,0x0B0B0000
	.word 0x0B0B0B0B,0x00000000,0x0B0B0B0B,0x00000009,0x0B0B0B0B,0x0000000B,0x0B0B0000,0x00000A0B
	.word 0x0B0B0000,0x0000060B,0x0B0B0C00,0x0000000B,0x0B0B0B0B,0x0000000B,0x0B0B0B0B,0x00000000
	.word 0x00000000,0x0B0B0000,0x00000000,0x00000000,0x0B0A0000,0x0000090B,0x0B000000,0x00000B0B
	.word 0x0B000000,0x0C0B0B0B,0x09000000,0x0B0B0B0B,0x00000000,0x0B0B0B09,0x00000000,0x090C0000

	.word 0x0B0B0B0B,0x0000000B,0x0B0B0000,0x0000010B,0x0B0B0000,0x0000090B,0x0B0B0000,0x00000C0B
	.word 0x0B0B0B0C,0x0000000B,0x0B0B0B0B,0x0000000B,0x090B0B0B,0x00000000,0x00000C0B,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x0B000000
	.word 0x00000000,0x0B0B0000,0x00000000,0x0B0B0900,0x00000000,0x0B0B0B00,0x00000000,0x0B0B0B09
	.word 0x00000000,0x00000000,0x0B0B0B0F,0x00000000,0x0B0B0B0B,0x00000000,0x0B0B0B0B,0x00000000
	.word 0x0B0B0B0B,0x00000000,0x0B0B0B0B,0x00000000,0x0B0B0B0B,0x00000000,0x0B0B0B00,0x00000000
	.word 0x07000000,0x000B0B0B,0x0B000000,0x000C0B0B,0x0B090000,0x0B0B0B0B,0x0B0B0000,0x0B0B0B0B
	.word 0x0B0B0000,0x0B0B0B0B,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x0B0B0B00,0x00000000,0x0B0B0B00,0x00000000,0x0B0B0B0B,0x00000B0B,0x0B0B0B0B,0x00000B0B
	.word 0x0B0B0B0B,0x0000090B,0x0B0B0B00,0x00000000,0x0B0B0B00,0x00000000,0x0B0B0B00,0x00000000
	.word 0x0B000000,0x0B0B0B0B,0x0B000000,0x0B0B0B0B,0x0B000000,0x0B0B0B0B,0x0B000000,0x00000B0B
	.word 0x0B030000,0x00000B0B,0x0B0B0000,0x0B0B090B,0x0B0B0000,0x0B0B0B0B,0x0B0B0000,0x0B0B0B0B
	.word 0x0B0B0B0B,0x00000000,0x0B0B0B0B,0x00000000,0x090B0B0B,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x000D0B0B,0x00000000,0x0C0B0B0B,0x00000000,0x0B0B0B0B,0x00000000
	.word 0x0B0B0000,0x0000070B,0x00000000,0x00000000,0x09090000,0x00000008,0x0B0B0000,0x0000060B
	.word 0x0B0B0000,0x090B0B0B,0x0B0D0000,0x0B0B0B0B,0x09000000,0x0B0B0B0B,0x00000000,0x0B0B0D00

	.word 0x0B0B0B00,0x00000009,0x0B0B0B00,0x00000009,0x0B0B0B00,0x0000000B,0x0B0B0B00,0x00000009
	.word 0x0B0B0B0B,0x00000000,0x0B0B0B0B,0x00000000,0x000C0B0B,0x00000000,0x0000000D,0x00000000
	.word 0x00000000,0x0B0B0000,0x00000000,0x0B0B0900,0x00000000,0x0B0B0B09,0x00000000,0x0B0B0B0B
	.word 0x0B000000,0x000B0B0B,0x0B000000,0x0B0B0B0B,0x0B0B0000,0x0B0B0B0B,0x0B0B0000,0x0B0B0B0B
	.word 0x000E0B0B,0x00000000,0x0000090B,0x00000000,0x0000000B,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00040B0B,0x00000000,0x090B0B0B,0x00000000,0x0B0B0B0B,0x00000000
	.word 0x0B0B0000,0x0000090B,0x0B0B0A00,0x0000000B,0x0B0B0000,0x0000000B,0x0B0B0000,0x0000010B
	.word 0x0B0B0000,0x01090B0B,0x0B000000,0x0B0B0B0B,0x04000000,0x0B0B0B0B,0x00000000,0x090B0100

	.word 0x0B0B0B00,0x00000009,0x0B0B0900,0x0000000B,0x0B0B0B00,0x0000000B,0x0B0B0B00,0x00000009
	.word 0x0B0B0B0B,0x00000007,0x090B0B0B,0x00000000,0x000B0B0B,0x00000000,0x0000000C,0x00000000
	.word 0x00000000,0x00000000,0x0B0B0C00,0x0B0B0B0B,0x0B0B0900,0x0B0B0B0B,0x0B0B0900,0x0B0B0B0B
	.word 0x0B0B0900,0x0000000B,0x09090800,0x00000009,0x00000000,0x09000000,0x00000000,0x0B000000
	.word 0x00000000,0x00000000,0x0B0B0B0B,0x0000000B,0x0B0B0B0B,0x0000000B,0x0B0B0B0B,0x0000000B
	.word 0x0B0B0B0A,0x00000002,0x090B0B0B,0x00000000,0x000B0B0B,0x00000000,0x00090B0B,0x00000000
	.word 0x00000000,0x0B030000,0x00000000,0x0B0B0000,0x00000000,0x0B0B0000,0x00000000,0x0B0B0000
	.word 0x00000000,0x0B0B0C00,0x00000000,0x0B0B0B00,0x00000000,0x0B0B0B00,0x00000000,0x0B0B0B00

	.word 0x00000B0B,0x00000000,0x00000B0B,0x00000000,0x00000A0B,0x00000000,0x0000000B,0x00000000
	.word 0x0000000B,0x00000000,0x0000000C,0x00000000,0x0000000A,0x00000000,0x00000409,0x00000000
	.word 0x00000000,0x0B0B0B03,0x00000000,0x0B0B0B0B,0x0B000000,0x0B0B0B0B,0x0B000000,0x00070B0B
	.word 0x0B000000,0x00040B0B,0x0B000000,0x020B0B0B,0x00000000,0x0B0B0B0B,0x00000000,0x0B0B0B09
	.word 0x0C0B0B0B,0x00000000,0x0B0B0B0B,0x00000008,0x0B0B0B0B,0x0000000B,0x0B0B0000,0x0000000B
	.word 0x0B0B0000,0x0000000B,0x0B0B0900,0x0000000B,0x0B0B0B0B,0x00000009,0x0B0B0B0B,0x00000000
	.word 0x0B000000,0x0B0B0B0B,0x0B000000,0x00090B0B,0x0B000000,0x00000B0B,0x0B000000,0x00000B0B
	.word 0x0B000000,0x090B0B0B,0x0B000000,0x0B0B0B0B,0x00000000,0x0B0B0B0B,0x00000000,0x0B050000

	.word 0x0B0B0B0B,0x0000000B,0x0B0B0E00,0x0000000B,0x0B0B0000,0x0000090B,0x0B0B0000,0x00000C0B
	.word 0x0B0B0B01,0x0000000B,0x0B0B0B0B,0x0000000B,0x090B0B0B,0x00000000,0x00000909,0x00000000
	.word 0x00000000,0x09000000,0x00000000,0x0B0B0B09,0x07000000,0x0B0B0B0B,0x0B000000,0x090B0B0B
	.word 0x0B020000,0x00000B0B,0x0B090000,0x00000B0B,0x0B090000,0x00000B0B,0x0B090000,0x00000B0B
	.word 0x0000000C,0x00000000,0x0E0B0B0B,0x00000000,0x0B0B0B0B,0x00000009,0x0B0B0B0C,0x0000000B
	.word 0x0B0B0000,0x0000010B,0x0B0B0000,0x00000B0B,0x0B0B0000,0x00000B0B,0x0B0B0100,0x0000080B
	.word 0x0B000000,0x0B0B0B0B,0x0C000000,0x0B0B0B0B,0x00000000,0x0B0B0B01,0x00000000,0x00000000
	.word 0x00000000,0x07000000,0x00000000,0x0B010000,0x00000000,0x0B0B0000,0x00000000,0x0B0B0B00

	.word 0x0B0B0B0B,0x0000000B,0x0B0B0B0B,0x0000000B,0x0B0B0B0B,0x00000009,0x0B0B0B0B,0x00000000
	.word 0x0E0B0B0B,0x00000000,0x00090B0B,0x00000000,0x00000B0B,0x00000000,0x0000000B,0x00000000

	.section .rodata
	.align	2
	.global numbersMap		@ 80 unsigned chars
	.hidden numbersMap
numbersMap:
	.hword 0x0001,0x0002,0x0003,0x0004,0x0005,0x0006,0x0007,0x0008
	.hword 0x0009,0x000A,0x000B,0x000C,0x000D,0x000E,0x000F,0x0010
	.hword 0x0011,0x0012,0x0013,0x0014,0x0015,0x0016,0x0017,0x0018
	.hword 0x0019,0x001A,0x001B,0x001C,0x001D,0x001E,0x001F,0x0020
	.hword 0x0021,0x0022,0x0023,0x0024,0x0025,0x0026,0x0027,0x0028

	.section .rodata
	.align	2
	.global numbersPal		@ 512 unsigned chars
	.hidden numbersPal
numbersPal:
	.hword 0x0000,0x0210,0x1213,0x0A55,0x0193,0x1655,0x0215,0x0E16
	.hword 0x0E35,0x1256,0x0155,0x1656,0x1236,0x1235,0x0A34,0x1635
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

@}}BLOCK(numbers)

@{{BLOCK(game_main3)

@=======================================================================
@
@	game_main3, 256x192@4, 
@	+ palette 256 entries, not compressed
@	+ 172 tiles (t|f reduced) not compressed
@	+ regular map (flat), not compressed, 32x24 
@	Total size: 512 + 5504 + 1536 = 7552
@
@	Time-stamp: 2025-01-08, 22:08:44
@	Exported by Cearn's GBA Image Transmogrifier, v0.9.2
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global game_main3Tiles		@ 5504 unsigned chars
	.hidden game_main3Tiles
game_main3Tiles:
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x44411111
	.word 0x11111111,0x11111111,0x11444111,0x14444111,0x55444111,0x55444444,0x55444444,0x55444444
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111115,0x11111555
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11654441
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x51111111,0x55111111,0x55611111
	.word 0x44441111,0x44455111,0x44455111,0x44455511,0x44455555,0x44455555,0x44455555,0x44455555

	.word 0x11111111,0x11111111,0x11111444,0x11111444,0x11111444,0x11444455,0x11444555,0x11444555
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x44111111
	.word 0x44411111,0x44411111,0x44411111,0x54444441,0x55544441,0x55544441,0x55544444,0x55555544
	.word 0x55444554,0x55444555,0x55444555,0x55444555,0x55444555,0x55544555,0x55544545,0x55554445
	.word 0x11115555,0x11155555,0x11655555,0x66666665,0x66666665,0x66666665,0x66666665,0x55555555
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111116,0x11111555,0x11111555
	.word 0x11111111,0x11111111,0x11111111,0x51111111,0x55111111,0x55551111,0x55555111,0x66666661
	.word 0x11554441,0x11554445,0x11444445,0x15444445,0x54454445,0x54455445,0x44555445,0x55554466

	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111115,0x11111144,0x11111544
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x51111111,0x55111111
	.word 0x66666111,0x66666111,0x66666611,0x66666555,0x55555555,0x55555555,0x55555555,0x55555555
	.word 0x44455566,0x44455566,0x44555566,0x44555566,0x45555555,0x55555555,0x55555555,0x55566655
	.word 0x44445555,0x44555555,0x44555555,0x44555545,0x55555544,0x55555544,0x55555544,0x55555544
	.word 0x11111144,0x11111144,0x11111144,0x11111444,0x11144445,0x11144445,0x11444445,0x44445555
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11165444
	.word 0x11111111,0x11111111,0x56111111,0x55111111,0x55111111,0x44111111,0x44511111,0x54451111

	.word 0x11111111,0x11111111,0x11111444,0x11111444,0x11115444,0x11115444,0x11155444,0x11555444
	.word 0x44111111,0x44411111,0x54444111,0x55444111,0x55444411,0x55554444,0x55554444,0x55554444
	.word 0x55555544,0x55555544,0x55555555,0x55555555,0x55555555,0x55555555,0x55555555,0x55555555
	.word 0x55555445,0x55555445,0x66555445,0x66666445,0x66666445,0x55555445,0x55555445,0x55555545
	.word 0x55555555,0x55555555,0x55555556,0x55555566,0x55555555,0x55555555,0x55555555,0x55555555
	.word 0x11111555,0x11115555,0x11155555,0x11555555,0x16555555,0x66666655,0x66666555,0x66666555
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111156,0x11111166,0x11111156
	.word 0x55555554,0x55555555,0x55555555,0x55666655,0x55555555,0x55555555,0x55555555,0x55555555

	.word 0x55444555,0x55445555,0x54445555,0x54445555,0x54445555,0x54445555,0x44555555,0x45555555
	.word 0x11115544,0x11144445,0x11544555,0x15544555,0x44445555,0x44555555,0x44655555,0x55566644
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111115,0x11111155,0x51114444
	.word 0x55511111,0x55561111,0x66666651,0x66666661,0x66666651,0x55555555,0x55555555,0x55555555
	.word 0x55555555,0x55555555,0x55555556,0x55555555,0x55555555,0x55555555,0x55555555,0x55555555
	.word 0x66666665,0x66666555,0x55555555,0x55555555,0x55555555,0x55555555,0x55555555,0x55555555
	.word 0x55555544,0x55555544,0x55555544,0x55555544,0x55555545,0x55544455,0x65545555,0x55544555
	.word 0x44455555,0x44455555,0x45555555,0x45555555,0x45555555,0x55666655,0x55555566,0x55555555

	.word 0x11111111,0x11111114,0x11111444,0x11111444,0x11111444,0x11444444,0x11444555,0x11444555
	.word 0x11111111,0x51111111,0x51111111,0x55111111,0x55511111,0x55555111,0x55555511,0x66666666
	.word 0x11155444,0x11155444,0x11144444,0x11544444,0x15445444,0x55445544,0x44455544,0x45555446
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111114,0x11111154
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x41111111,0x45111111,0x45511111,0x44441111
	.word 0x54455111,0x55444411,0x55554451,0x44554455,0x44555444,0x44455554,0x44455554,0x44455555
	.word 0x55555445,0x55555445,0x66666644,0x55555554,0x55555555,0x55555555,0x66555555,0x55555555
	.word 0x44411111,0x44411115,0x44411666,0x44444555,0x44445555,0x44445555,0x45555566,0x45555555

	.word 0x66655444,0x55555555,0x55555555,0x55555555,0x55555555,0x55556544,0x56665544,0x65555444
	.word 0x44555556,0x54556665,0x44555555,0x44555555,0x64455555,0x64445555,0x44445555,0x44444666
	.word 0x55555554,0x55555555,0x55555555,0x56666666,0x66666666,0x66666666,0x55555555,0x55555555
	.word 0x55555555,0x55555555,0x55555555,0x55555555,0x66666556,0x55555555,0x55555555,0x55555555
	.word 0x55555555,0x55555555,0x55555555,0x55555555,0x66666666,0x65555555,0x55555555,0x55555555
	.word 0x11111555,0x11111555,0x11115555,0x55566666,0x55555555,0x55555555,0x66665555,0x66665555
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111166,0x11111566
	.word 0x66666666,0x55555555,0x55555555,0x55555555,0x55555555,0x55555556,0x66666655,0x44444444

	.word 0x45566666,0x45555555,0x44444445,0x44444445,0x44444445,0x55555555,0x55666666,0x44444444
	.word 0x55555544,0x55555444,0x65554444,0x56544444,0x54444444,0x44555555,0x55544555,0x55544444
	.word 0x66555445,0x55555455,0x55555556,0x56666665,0x56666665,0x55666665,0x55555555,0x55555555
	.word 0x55555666,0x66666555,0x55556555,0x55555555,0x55555555,0x55555555,0x55555555,0x55544455
	.word 0x55555555,0x66666666,0x55555555,0x55555555,0x55555555,0x55555555,0x55555555,0x44555555
	.word 0x66665555,0x66666655,0x66666555,0x55555555,0x55555555,0x55555555,0x55555555,0x55555544
	.word 0x55544666,0x55446666,0x54446666,0x54444555,0x44444555,0x44444555,0x44444555,0x44445555
	.word 0x55555555,0x55555555,0x65555555,0x56665555,0x55556666,0x45555554,0x44555554,0x44455544

	.word 0x44444555,0x54444555,0x54444445,0x55554445,0x55554444,0x55555444,0x55555544,0x55556664
	.word 0x55555555,0x55555555,0x55555555,0x55566665,0x55555555,0x55555555,0x55555555,0x55555555
	.word 0x45544455,0x55544555,0x55444555,0x55444555,0x55444555,0x55444555,0x54455555,0x44555555
	.word 0x11111554,0x11114444,0x11154455,0x11554455,0x14444555,0x54455555,0x54465555,0x45556664
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111115,0x11111444
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x44111111,0x44411111,0x54411111
	.word 0x55445111,0x56445511,0x65554444,0x55555444,0x55555544,0x55566554,0x45655555,0x44455555
	.word 0x44455555,0x55445555,0x55544466,0x65544455,0x55544445,0x44444444,0x44444444,0x44444444

	.word 0x55555555,0x55555555,0x55555555,0x66666666,0x55555555,0x55555444,0x55555444,0x55555444
	.word 0x55555555,0x55555555,0x65555555,0x55666666,0x66555555,0x55555555,0x55555555,0x55555555
	.word 0x55554444,0x55544445,0x55444466,0x55444666,0x54446666,0x44455555,0x44555555,0x46555555
	.word 0x44444455,0x44444455,0x54444445,0x54444444,0x54444444,0x54444445,0x55444444,0x55444444
	.word 0x55555555,0x55555555,0x55555555,0x55555555,0x55555555,0x44555555,0x64555555,0x44555555
	.word 0x55555555,0x55555555,0x55544445,0x55544445,0x55544445,0x44446444,0x44456666,0x44455654
	.word 0x55555555,0x55555555,0x44555555,0x44555555,0x44555555,0x64444455,0x65544455,0x56544455
	.word 0x66655555,0x55555555,0x55555554,0x55555554,0x55555554,0x55554444,0x55554445,0x55554445

	.word 0x11111566,0x11555555,0x11555555,0x11555555,0x15555555,0x55555555,0x55555555,0x55555555
	.word 0x11111111,0x11111111,0x11111111,0x11111111,0x11111111,0x11111115,0x11111115,0x11111145
	.word 0x44444444,0x22222222,0x22222222,0x22222222,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x55544444,0x55552222,0x55555522,0x55555522,0x55555522,0x55555522,0x44445522,0x44444422
	.word 0x55555555,0x55555555,0x45555555,0x45555555,0x45555555,0x54445555,0x54445554,0x44444444
	.word 0x55544455,0x55544455,0x44446444,0x44556544,0x44565544,0x55655555,0x56655555,0x44444444
	.word 0x44555555,0x44555555,0x64444554,0x65444554,0x55444554,0x55554444,0x55554444,0x44444444
	.word 0x55555544,0x55555544,0x55544444,0x55546666,0x55544456,0x44444465,0x44455565,0x44444444

	.word 0x44445555,0x44445555,0x44445555,0x44455555,0x44455555,0x44555555,0x44555555,0x44444444
	.word 0x44455444,0x64445444,0x55444544,0x55544444,0x55564444,0x66655444,0x55555544,0x44444444
	.word 0x66655666,0x55566666,0x55555555,0x55555555,0x55555555,0x66666666,0x55555555,0x44444444
	.word 0x66666666,0x55555555,0x55555555,0x55555555,0x55555555,0x55555555,0x66666665,0x44444444
	.word 0x44556666,0x44555555,0x44444444,0x44444444,0x44444444,0x55555555,0x55566666,0x44444444
	.word 0x55555554,0x55555544,0x66555444,0x55654444,0x55444444,0x54455555,0x44444455,0x44444444
	.word 0x11111444,0x70022445,0x70044455,0x70044555,0x70045555,0x70005555,0x77005554,0x37004444
	.word 0x11111111,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777

	.word 0x11111111,0x73777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777
	.word 0x11111111,0x22220877,0x22200777,0x22200777,0x22200777,0x22200777,0x22000777,0x22007777
	.word 0x55444411,0x55544422,0x44444422,0x44444422,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x55445555,0x44444455,0x44444444,0x44444444,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x55555555,0x66555554,0x44444444,0x44444444,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x55555555,0x66666666,0x44444444,0x44444444,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x66666555,0x55555566,0x44444444,0x44444444,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x55666666,0x55555555,0x44444444,0x44444444,0x22222222,0x22222222,0x22222222,0x22222222

	.word 0x55544444,0x55544445,0x44444444,0x44444444,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x44444555,0x55444555,0x44444444,0x44444444,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x45555564,0x45555565,0x44444444,0x44444444,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x55655444,0x55665444,0x44444444,0x44444444,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x54445555,0x54445555,0x44444444,0x44444444,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x55555555,0x54444455,0x44444444,0x44444444,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x11111145,0x44444445,0x44444444,0x44444444,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x22222222,0x22222222,0x22222222,0x22222222,0x22222222,0x22222222,0x22222222,0x22222222

	.word 0x44444422,0x22222222,0x22222222,0x22222222,0x22222222,0x22222222,0x22222222,0x22222222
	.word 0x37004444,0x37000222,0x37000222,0x37700222,0x77700222,0x77700222,0x77700022,0x77700022
	.word 0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777
	.word 0x22007777,0x22007777,0x22007777,0x20077777,0x20077777,0x20077777,0x20077777,0x00077777
	.word 0x77780022,0x77770022,0x77770022,0x77770002,0x77770002,0x77777002,0x77777002,0x77777000
	.word 0x00077777,0x00777777,0x00777777,0x00777777,0x00777777,0x07777777,0x07777777,0x07777777
	.word 0x22222222,0x22222222,0x22222222,0x22222222,0x22222220,0x22222220,0x22222220,0x22222220
	.word 0x77777000,0x77777000,0x77777700,0x77777700,0x77777700,0x77777700,0x77777700,0x77777770

	.word 0x07377777,0x77777777,0x77777777,0x77777777,0x73777777,0x77777777,0x77777777,0x77777777
	.word 0x22222200,0x22222200,0x22222200,0x22222200,0x22222000,0x22222000,0x22222000,0x22222007
	.word 0x00222222,0x00222222,0x00222222,0x00222222,0x00022222,0x00022222,0x00022222,0x00022222
	.word 0x77777770,0x77777370,0x77777770,0x77777778,0x77777777,0x77777777,0x77777777,0x77777777
	.word 0x77777777,0x77777777,0x37777777,0x37777777,0x77777777,0x77777777,0x77777777,0x77777777
	.word 0x22222007,0x22220007,0x22220007,0x22220007,0x22220077,0x22200077,0x22200077,0x22200073
	.word 0x00022222,0x80002222,0x70002222,0x70002222,0x70002222,0x70000222,0x77000222,0x77000222
	.word 0x22200073,0x22200777,0x22000777,0x22000777,0x22000777,0x22000777,0x20007777,0x20007777

	.word 0x77000222,0x77000222,0x77000022,0x77800022,0x77700022,0x77700022,0x77700002,0x77700002
	.word 0x20007777,0x20007777,0x20007777,0x80077777,0x00077777,0x00077777,0x00073777,0x00073777
	.word 0x22222222,0x22222222,0x22222222,0x22222222,0x22222222,0x22222222,0x22222222,0x22222220
	.word 0x77780002,0x77770002,0x77770000,0x77770000,0x77770000,0x77777000,0x77737000,0x77777000
	.word 0x00773777,0x00777777,0x00777777,0x00777777,0x00777777,0x07777777,0x07777777,0x07777777
	.word 0x22222220,0x22222220,0x22222220,0x22222200,0x22222200,0x22222200,0x22222200,0x22222200
	.word 0x02222222,0x02222222,0x02222222,0x00222222,0x00222222,0x00222222,0x00222222,0x08222222
	.word 0x77777000,0x77777000,0x77777000,0x77777700,0x77777700,0x77777700,0x77777700,0x77777700

	.word 0x07777777,0x07777777,0x07777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777
	.word 0x22222000,0x22222000,0x22222000,0x22222000,0x22220000,0x22220000,0x22220000,0x22220007
	.word 0x00022222,0x00022222,0x00022222,0x00022222,0x00002222,0x00002222,0x00002222,0x00002222
	.word 0x77777770,0x77777770,0x77777770,0x77777770,0x77777770,0x77777770,0x77777777,0x77777777
	.word 0x22220007,0x22200007,0x22200007,0x22200007,0x22200077,0x22000077,0x22000777,0x22000777
	.word 0x00002222,0x00008222,0x80000222,0x70000222,0x70000222,0x70000222,0x70000022,0x78000022
	.word 0x77777737,0x77777737,0x77777777,0x77777773,0x77777777,0x77777777,0x77777777,0x77777777
	.word 0x22000777,0x22000777,0x20000777,0x20007777,0x20007777,0x20007777,0x00007777,0x00007777

	.word 0x78000022,0x77000002,0x77700002,0x77700002,0x77700002,0x77700002,0x77700000,0x77780000
	.word 0x00007777,0x00077777,0x00077777,0x00077777,0x00077777,0x00077777,0x00777777,0x00777777
	.word 0x22222222,0x22222222,0x22222220,0x22222220,0x22222220,0x22222220,0x22222220,0x22222200
	.word 0x22222222,0x22222222,0x22222222,0x02222222,0x02222222,0x02222222,0x02222222,0x00222222
	.word 0x77770000,0x77770000,0x77770000,0x77778000,0x77777000,0x77777000,0x77777000,0x77777000
	.word 0x00777777,0x00777777,0x00777777,0x07777777,0x07777777,0x07777777,0x07777777,0x07777777
	.word 0x22222200,0x22222200,0x22222200,0x22222000,0x22222000,0x22222000,0x22222000,0x22222000
	.word 0x77777000,0x77777000,0x77777700,0x77777700,0x77777700,0x77777700,0x77777700,0x77777700

	.word 0x07777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777
	.word 0x22220000,0x22220000,0x22220000,0x22220000,0x22200000,0x22200000,0x22200000,0x22200007
	.word 0x00002222,0x00002222,0x00002222,0x00002222,0x00000222,0x00000222,0x00000222,0x00000222
	.word 0x77777770,0x77777770,0x77777770,0x77777770,0x77777770,0x77777778,0x77777777,0x77777777
	.word 0x22000007,0x22000007,0x22000007,0x22000007,0x22000007,0x20000077,0x20000077,0x20000077
	.word 0x00000022,0x80000022,0x00000022,0x70000022,0x70000022,0x70000002,0x70000002,0x70000002
	.word 0x20000077,0x00000077,0x00000777,0x00007777,0x00007777,0x00007777,0x00007777,0x00077777
	.word 0x22222222,0x22222222,0x22222222,0x22222222,0x22222222,0x22222222,0x22222220,0x22222220

	.word 0x22222222,0x22222222,0x22222222,0x22222222,0x22222222,0x02222222,0x02222222,0x02222222
	.word 0x70000002,0x78000002,0x77000000,0x37000000,0x37000000,0x37000000,0x77800000,0x77700000
	.word 0x00077777,0x00077777,0x00077777,0x00077777,0x00077777,0x00077777,0x00777777,0x00777777
	.word 0x22222220,0x22222220,0x22222200,0x22222200,0x22222200,0x22222200,0x22222200,0x22222000
	.word 0x02222222,0x02222222,0x00222222,0x00222222,0x00222222,0x00222222,0x00022222,0x00022222
	.word 0x77700000,0x73700000,0x77700000,0x77700000,0x77770000,0x77778000,0x77777000,0x77777000
	.word 0x00777777,0x00777777,0x00777777,0x00777777,0x07777777,0x07777777,0x07777777,0x07777777
	.word 0x22222000,0x22222000,0x22222000,0x22220000,0x22220000,0x22220000,0x22220000,0x22220000

	.word 0x00022222,0x00022222,0x00002222,0x00002222,0x00002222,0x00002222,0x00000222,0x00000222
	.word 0x77777000,0x77777000,0x77777000,0x77777700,0x77737700,0x77777700,0x77777700,0x77777700
	.word 0x07777777,0x07777777,0x87777777,0x77777777,0x77777777,0x77777777,0x77777777,0x77777777
	.word 0x22200000,0x22200000,0x22200000,0x22200000,0x22000000,0x22000000,0x22000000,0x22000000

	.section .rodata
	.align	2
	.global game_main3Map		@ 1536 unsigned chars
	.hidden game_main3Map
game_main3Map:
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0002,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0003,0x0004,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0005,0x0001,0x0001,0x0001,0x0006,0x0007,0x0008
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001
	.hword 0x0009,0x000A,0x000B,0x000C,0x000D,0x0001,0x0001,0x0001

	.hword 0x000E,0x000F,0x0010,0x0001,0x0011,0x0012,0x0013,0x0014
	.hword 0x0015,0x0001,0x0001,0x0016,0x0001,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x0001,0x0017,0x0018,0x0001
	.hword 0x0019,0x001A,0x001B,0x001C,0x001D,0x001E,0x0001,0x0001
	.hword 0x001F,0x0020,0x0021,0x0022,0x0023,0x0024,0x0025,0x0026
	.hword 0x0027,0x0028,0x0029,0x002A,0x002B,0x0001,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0001,0x002C,0x002D,0x002E,0x002F
	.hword 0x0030,0x0031,0x0032,0x0033,0x0034,0x0035,0x0036,0x0001

	.hword 0x0037,0x0038,0x0039,0x003A,0x003B,0x003C,0x003D,0x003E
	.hword 0x003F,0x0040,0x0041,0x0042,0x0043,0x0044,0x0001,0x0001
	.hword 0x0001,0x0001,0x0001,0x0045,0x0046,0x0047,0x0048,0x0049
	.hword 0x004A,0x004B,0x004C,0x004D,0x004E,0x004F,0x0050,0x0051
	.hword 0x0052,0x0052,0x0053,0x0054,0x0055,0x0056,0x0057,0x0058
	.hword 0x0059,0x005A,0x005B,0x005C,0x005D,0x005E,0x005F,0x0060
	.hword 0x005F,0x005F,0x0061,0x0062,0x0063,0x0064,0x0065,0x0066
	.hword 0x0067,0x0068,0x0069,0x006A,0x006B,0x006C,0x006D,0x006E

	.hword 0x006F,0x006F,0x0070,0x0052,0x0052,0x0052,0x0052,0x0052
	.hword 0x0052,0x0052,0x0052,0x0052,0x0052,0x0071,0x0072,0x0072
	.hword 0x0072,0x0072,0x0073,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x0074,0x0072,0x0072
	.hword 0x0072,0x0072,0x0075,0x0076,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F

	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x0476,0x0077,0x0072,0x0072
	.hword 0x0072,0x0072,0x0078,0x0079,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x007A,0x007B,0x0072,0x0072
	.hword 0x0072,0x0072,0x007C,0x007D,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F

	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x007E,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x007F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x0080,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x0081,0x0082,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F

	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x0482,0x0083,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x0084,0x0085,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x0086,0x0087,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x0088,0x0089,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F

	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x008A,0x008B,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x0072,0x008C,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x008D,0x008E,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x0072,0x008F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F

	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x0090,0x0072,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x0072,0x0091,0x0092,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x0093,0x0094,0x0072,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x0072,0x0095,0x0096,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F

	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x0496,0x0097,0x0072,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x0072,0x0098,0x0099,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x009A,0x009B,0x0072,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x0072,0x0072,0x009C,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F

	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x009D,0x0072,0x0072,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x0072,0x0072,0x009E,0x009F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x00A0,0x00A1,0x0072,0x0072,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x0072,0x0072,0x00A2,0x00A3,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F

	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x00A4,0x00A5,0x0072,0x0072,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x0072,0x0072,0x00A6,0x00A7,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F
	.hword 0x006F,0x00A8,0x00A9,0x0072,0x0072,0x0072,0x0072,0x0072
	.hword 0x0072,0x0072,0x0072,0x0072,0x0072,0x00AA,0x00AB,0x006F
	.hword 0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F,0x006F

	.section .rodata
	.align	2
	.global game_main3Pal		@ 512 unsigned chars
	.hidden game_main3Pal
game_main3Pal:
	.hword 0x090A,0x7FFA,0x1A79,0x0DB0,0x0952,0x1E7B,0x11B6,0x0DB1
	.hword 0x090B,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
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

@}}BLOCK(game_main3)

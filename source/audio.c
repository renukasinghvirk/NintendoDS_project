#include "audio.h"

void audio_initialization(){
	//Init the sound library
	mmInitDefaultMem((mm_addr)soundbank_bin);
	//Load module
	mmLoad(MOD_MENU);
	mmLoad(MOD_DUNE);
	mmLoad(MOD_WESTERN);
	//Load effect
	mmLoadEffect(SFX_MONEY);
	mmLoadEffect(SFX_RUNNING);
	mmLoadEffect(SFX_ROCK);
	mmLoadEffect(SFX_BUBBLE);
}
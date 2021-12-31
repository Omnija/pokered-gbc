	db DEX_MURMUDER ; pokedex id

	db  75,  90, 185,  45,  90
	;   hp  atk  def  spd  spc

	db WATER, STEEL ; type
	db 60 ; catch rate
	db 203 ; base exp

	INCBIN "gfx/pokemon/front/murmuder.pic", 0, 1 ; sprite dimensions
	dw MurmuderPicFront, MurmuderPicBack

	db WITHDRAW, SUPERSONIC, CLAMP, AURORA_BEAM ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         TELEPORT,     \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SELFDESTRUCT, \
	     SWIFT,        REST,         EXPLOSION,    TRI_ATTACK,   SUBSTITUTE,   \
	     SURF
	; end

	db BANK(MurmuderPicFront)

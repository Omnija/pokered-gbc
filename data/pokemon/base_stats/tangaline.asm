	db DEX_TANGALINE ; pokedex id

	db  100,  90, 125,  50, 100
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 30 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/tangaline.pic", 0, 1 ; sprite dimensions
	dw TangalinePicFront, TangalinePicBack

	db CONSTRICT, BIND, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   \
	     CUT
	; end

	db BANK(TangalinePicFront)

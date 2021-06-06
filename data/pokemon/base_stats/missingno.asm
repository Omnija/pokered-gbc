;;;;;;;;;;;;;;;;;;;;;
; Adding MissingNo
;;;;;;;;;;;;;;;;;;;;;
	db 0 ; pokedex id

	db  33,  136,  0,  29,  6
	;   hp  atk  def  spd  spc

	db FLYING, NORMAL ; type
	db 29 ; catch rate
	db 143 ; base exp

	INCBIN "gfx/pokemon/front/missingno.pic", 0, 1 ; sprite dimensions
	dw MissingNoPicFront, MissingNoPicBack

	db WATER_GUN, SKY_ATTACK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     SWIFT,        REST,         SUBSTITUTE
	; end

	db BANK(MissingNoPicFront)

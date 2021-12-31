	db DEX_KISSLEY ; pokedex id

	db  255,  10,  135,  55,  75
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 30 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/kissley.pic", 0, 1 ; sprite dimensions
	dw KissleyPicFront, KissleyPicBack

	db SING, DOUBLESLAP, MINIMIZE, METRONOME ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    TELEPORT,     \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    \
	     FIRE_BLAST,   SKULL_BASH,   REST,         THUNDER_WAVE, PSYWAVE,      \
	     TRI_ATTACK,   SUBSTITUTE,   STRENGTH,     FLASH
	; end

	db BANK(KissleyPicFront)

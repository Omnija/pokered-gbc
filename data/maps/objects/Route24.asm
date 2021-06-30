Route24_Object:
	db $2c ; border block

	def_warps

	def_signs

	def_objects
	object SPRITE_COOLTRAINER_M, 11, 15, STAY, LEFT, 1, OPP_ROCKET, 6
	object SPRITE_COOLTRAINER_M, 5, 20, STAY, UP, 2, OPP_JR_TRAINER_M, 2
	object SPRITE_COOLTRAINER_M, 11, 19, STAY, LEFT, 3, OPP_JR_TRAINER_M, 3
	object SPRITE_COOLTRAINER_F, 10, 22, STAY, RIGHT, 4, OPP_LASS, 7
	object SPRITE_YOUNGSTER, 11, 25, STAY, LEFT, 5, OPP_YOUNGSTER, 4
	object SPRITE_COOLTRAINER_F, 10, 28, STAY, RIGHT, 6, OPP_LASS, 8
	object SPRITE_YOUNGSTER, 11, 31, STAY, LEFT, 7, OPP_BUG_CATCHER, 9
	object SPRITE_POKE_BALL, 10, 5, STAY, NONE, 8, TM_THUNDER_WAVE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Charmander Gift - Yellow
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
	object SPRITE_YOUNGSTER, 6, 5, STAY, DOWN, 9 ; charmander gifter

	def_warps_to ROUTE_24

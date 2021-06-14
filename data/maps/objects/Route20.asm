Route20_Object:
	db $43 ; border block

	def_warps
	warp 48,  5, 0, SEAFOAM_ISLANDS_1F
	warp 58,  9, 2, SEAFOAM_ISLANDS_1F

	def_signs
	sign 51,  7, 11 ; Route20Text11
	sign 57, 11, 12 ; Route20Text12

	def_objects
	object SPRITE_SWIMMER, 87, 8, STAY, UP, 1, OPP_SWIMMER, 9
	object SPRITE_SWIMMER, 68, 11, STAY, UP, 2, OPP_SWIMMER_F, 15  ; SPRITE_SWIMMER_F
;	object SPRITE_SWIMMER, 68, 11, STAY, UP, 2, OPP_BEAUTY, 15
	object SPRITE_SWIMMER, 45, 10, STAY, DOWN, 3, OPP_SWIMMER_F, 6 ; SPRITE_SWIMMER_F
;	object SPRITE_SWIMMER, 45, 10, STAY, DOWN, 3, OPP_BEAUTY, 6
	object SPRITE_SWIMMER, 55, 14, STAY, RIGHT, 4, OPP_JR_TRAINER_F, 24 ; SPRITE_SWIMMER_F
;	object SPRITE_SWIMMER, 55, 14, STAY, RIGHT, 4, OPP_JR_TRAINER_F, 24
	object SPRITE_SWIMMER, 38, 13, STAY, DOWN, 5, OPP_SWIMMER, 10
	object SPRITE_SWIMMER, 87, 13, STAY, UP, 6, OPP_SWIMMER, 11
	object SPRITE_COOLTRAINER_M, 34, 9, STAY, UP, 7, OPP_BIRD_KEEPER, 11
	object SPRITE_SWIMMER, 25, 7, STAY, UP, 8, OPP_SWIMMER_F, 7 ; SPRITE_SWIMMER_F
;	object SPRITE_SWIMMER, 25, 7, STAY, UP, 8, OPP_BEAUTY, 7
	object SPRITE_SWIMMER, 24, 12, STAY, DOWN, 9, OPP_JR_TRAINER_F, 16 ; SPRITE_SWIMMER_F
;	object SPRITE_SWIMMER, 24, 12, STAY, DOWN, 9, OPP_JR_TRAINER_F, 16
	object SPRITE_SWIMMER, 15, 8, STAY, UP, 10, OPP_SWIMMER_F, 8 ; SPRITE_SWIMMER_F
;	object SPRITE_SWIMMER, 15, 8, STAY, UP, 10, OPP_BEAUTY, 8

	def_warps_to ROUTE_20

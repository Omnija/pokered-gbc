PokemonTower7F_Object:
	db $1 ; border block

	def_warps
	warp  9, 16, 1, POKEMON_TOWER_6F

	def_signs

	def_objects
	object SPRITE_ROCKET, 9, 11, STAY, RIGHT, 1, OPP_ROCKET, 19
	object SPRITE_ROCKET_F, 12, 9, STAY, LEFT, 2, OPP_ROCKET_F, 20 ; OPP_ROCKET
	object SPRITE_ROCKET, 9, 7, STAY, RIGHT, 3, OPP_ROCKET, 21
	object SPRITE_MR_FUJI, 10, 3, STAY, DOWN, 4 ; person

	def_warps_to POKEMON_TOWER_7F

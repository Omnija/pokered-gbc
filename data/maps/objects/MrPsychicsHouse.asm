MrPsychicsHouse_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 7, LAST_MAP
	warp  3,  7, 7, LAST_MAP

	def_signs

	def_objects
	object SPRITE_FISHING_GURU, 5, 3, STAY, LEFT, 1 	; person
	object SPRITE_FISHING_GURU, 5, 4, STAY, LEFT, 2		; move deleter
	object SPRITE_FISHING_GURU, 2, 4, STAY, RIGHT, 3	; move relearner
	object SPRITE_FISHING_GURU, 2, 3, STAY, RIGHT, 4	; move tutor

	def_warps_to MR_PSYCHICS_HOUSE

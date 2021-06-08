Daycare_Object:
	db $a ; border block

	def_warps
	warp  2,  7, 4, LAST_MAP
	warp  3,  7, 4, LAST_MAP

	def_signs

	def_objects
;	object SPRITE_GENTLEMAN, 2, 3, STAY, RIGHT, 1 ; person

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Breeding System - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	object SPRITE_GRANNY, 2, 3, STAY, RIGHT, 1 ; person
    object SPRITE_GRAMPS, 5, 3, STAY, LEFT, 2 ; person
    object SPRITE_MONSTER, 6, 1, STAY, DOWN, 3 ; person

	def_warps_to DAYCARE

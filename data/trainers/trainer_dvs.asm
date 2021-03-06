;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Individual Trainer DV's
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

dvs: MACRO
; atk, def, spd, spc
	dn \1, \2
	dn \3, \4
ENDM

TrainerClassDVs:
	dvs  9,  8,  8,  8 ; YOUNGSTER
	dvs  9,  8,  8,  8 ; BUG_CATCHER
	dvs  5,  8,  8,  8 ; LASS
	dvs  9,  8,  8,  8 ; SAILOR
	dvs  9,  8,  8,  8 ; JR_TRAINER_M
	dvs  6, 10, 10,  8 ; JR_TRAINER_F
	dvs  9,  8,  8,  8 ; POKEMANIAC
	dvs  9,  8,  8,  8 ; SUPER_NERD
	dvs 10,  8,  8,  8 ; HIKER
	dvs  9,  8,  8,  8 ; BIKER
	dvs  9,  8,  8,  8 ; BURGLAR
	dvs  9,  8,  8,  8 ; ENGINEER

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Swimmer ♀ Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
	dvs  7,  8,  8,  9 ; SWIMMER_F
;	dvs  7,  8,  8,  8 ; UNUSED_JUGGLER

	dvs  9,  8,  8,  8 ; FISHER
	dvs  9,  8,  8,  8 ; SWIMMER
	dvs  9,  8,  8,  8 ; CUE_BALL
	dvs  9,  8,  8,  8 ; GAMBLER
	dvs  6,  9, 12,  8 ; BEAUTY
	dvs  9,  8,  8,  8 ; PSYCHIC_TR
	dvs  9,  8,  8,  8 ; ROCKER
	dvs  9,  8,  8,  8 ; JUGGLER
	dvs  9,  8,  8,  8 ; TAMER
	dvs  9,  8,  8,  8 ; BIRD_KEEPER
	dvs  9,  8,  8,  8 ; BLACKBELT
	dvs  9,  8,  8,  8 ; SONY1
	dvs  9,  8,  8,  8 ; PROF_OAK
	dvs 13,  9, 13, 13 ; CHIEF
	dvs  9,  8,  8,  8 ; SCIENTIST
	dvs 13, 12,  9, 13 ; GIOVANNI
	dvs 13,  8, 10,  8 ; ROCKET
	dvs 13,  8, 12,  8 ; COOLTRAINER_M
	dvs  7, 12, 12,  8 ; COOLTRAINER_F
	dvs 13, 12, 13,  9 ; BRUNO
	dvs  9, 10,  7,  7 ; BROCK
	dvs  7,  8,  8,  8 ; MISTY
	dvs 13,  8,  8,  8 ; LT_SURGE
	dvs  7,  8,  8,  8 ; ERIKA
	dvs  9, 12, 13, 13 ; KOGA
	dvs 13, 12,  9, 13 ; BLAINE
	dvs  7, 10, 10, 14 ; SABRINA
	dvs  9,  8,  8,  8 ; GENTLEMAN
	dvs 13,  9, 13, 13 ; RIVAL2
	dvs 15,  9, 13, 14 ; RIVAL3 
	dvs  7, 15, 13, 15 ; LORELEI
	dvs  7,  8,  8,  8 ; CHANNELER
	dvs  7, 15, 13, 15 ; AGATHA
	dvs 13, 12, 13, 13 ; LANCE
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Rocket ♀ Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
	dvs 12,  8, 11,  8 ; ROCKET_F

; Unsued

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Soldier Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	dvs  9,  8,  8,  9 ; SOLDIER

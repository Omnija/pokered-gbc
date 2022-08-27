; Palettes for overworld places (ie. PAL_VIRIDIAN) are no longer needed by the color hack
; and can be replaced with whatever.

SuperPalettes:
; entries correspond to PAL_* constants
	RGB 25,18,00, 15,08,00, 00,00,00, 00,00,00 ; PAL_TOWNMAP2 (second palette used on the town map)
	RGB 31,31,31, 17,01,02, 26,00,00, 00,00,00 ; PAL_SLOTS5
	RGB 31,31,31, 19,31,00, 11,23,31, 00,00,00 ; PAL_VIRIDIAN
	RGB 31,31,31, 18,18,15, 11,23,31, 00,00,00 ; PAL_PEWTER
	RGB 31,31,31, 05,08,31, 11,23,31, 00,00,00 ; PAL_CERULEAN
	RGB 31,31,31, 25,04,31, 11,23,31, 00,00,00 ; PAL_LAVENDER
	RGB 31,31,31, 31,19,00, 11,23,31, 00,00,00 ; PAL_VERMILION
	RGB 31,31,31, 05,31,05, 11,23,31, 00,00,00 ; PAL_CELADON
	RGB 31,31,31, 31,15,15, 11,23,31, 00,00,00 ; PAL_FUCHSIA
	RGB 31,31,31, 31,08,08, 11,23,31, 00,00,00 ; PAL_CINNABAR
	RGB 31,31,31, 11,08,31, 11,23,31, 00,00,00 ; PAL_INDIGO
	RGB 31,31,31, 31,31,00, 11,23,31, 00,00,00 ; PAL_SAFFRON
	RGB 31,31,31, 00,21,31, 10,28,00, 00,00,00 ; PAL_TOWNMAP
IF DEF(_RED)
	RGB 31,31,31, 30,30,17, 17,23,10, 21,00,04 ; PAL_LOGO1
ELSE
	RGB 31,31,31, 30,30,17, 21,00,04, 14,19,29 ; PAL_LOGO1
ENDC
	RGB 31,31,31, 28,24,00, 18,19,18, 05,12,22 ; PAL_LOGO2
	RGB 31,31,31, 29,25,15, 04,17,31, 00,00,00 ; PAL_EXP (only used when GEN_2_GRAPHICS is set)
	RGB 31,31,31, 29,19,13, 14,04,20, 00,00,00 ; PAL_MEWMON
	RGB 31,31,31, 16,18,31, 00,01,25, 00,00,00 ; PAL_BLUEMON
	RGB 31,31,31, 31,17,00, 31,00,00, 00,00,00 ; PAL_REDMON
	RGB 31,31,31, 12,24,22, 05,13,29, 00,00,00 ; PAL_CYANMON
	RGB 31,31,31, 25,15,31, 19,00,22, 00,00,00 ; PAL_PURPLEMON
	RGB 31,31,31, 29,18,10, 17,09,05, 00,00,00 ; PAL_BROWNMON
	RGB 31,31,31, 17,31,11, 01,22,06, 00,00,00 ; PAL_GREENMON
	RGB 31,31,31, 31,15,18, 31,00,06, 00,00,00 ; PAL_PINKMON
	RGB 31,31,31, 31,31,00, 28,14,00, 00,00,00 ; PAL_YELLOWMON
	RGB 31,31,31, 26,16,22, 15,13,18, 00,00,00 ; PAL_GREYMON
	RGB 31,31,31, 00,14,00, 02,20,03, 00,00,00 ; PAL_SLOTS1
	RGB 31,31,31, 26,00,00, 02,20,03, 00,00,00 ; PAL_SLOTS2
	RGB 31,31,31, 08,04,22, 02,20,03, 00,00,00 ; PAL_SLOTS3
	RGB 31,31,31, 29,30,01, 02,20,03, 00,00,00 ; PAL_SLOTS4
	RGB 31,31,31, 07,07,07, 02,03,03, 00,00,00 ; PAL_BLACK
	RGB 31,31,31, 29,25,15, 00,23,00, 00,00,00 ; PAL_GREENBAR
	RGB 31,31,31, 29,25,15, 30,20,00, 00,00,00 ; PAL_YELLOWBAR
	RGB 31,31,31, 29,25,15, 30,00,00, 00,00,00 ; PAL_REDBAR
	RGB 31,31,31, 11,15,23, 04,04,20, 00,00,00 ; PAL_BADGE
	RGB 31,31,31, 23,08,00, 17,14,11, 00,00,00 ; PAL_CAVE
	RGB 31,31,31, 31,28,14, 24,20,10, 00,00,00 ; PAL_GAMEFREAK

; The following are only available with gen 2 graphics patch: individual palettes for
; pokemon, trainers, etc.

IF GEN_2_GRAPHICS
; Pokemon begins
	RGB 31,31,31, 12,31,11, 31,10,06, 00,00,00 ; PAL_BULBASAUR
	RGB 31,31,31, 12,31,11, 31,12,17, 00,00,00 ; PAL_IVYSAUR
	RGB 31,31,31, 12,31,19, 31,09,19, 00,00,00 ; PAL_VENUSAUR
	RGB 31,31,31, 31,13,04, 22,05,05, 00,00,00 ; PAL_CHARMANDER
	RGB 31,31,31, 31,14,05, 23,09,10, 00,00,00 ; PAL_CHARMELEON
	RGB 31,31,31, 31,11,00, 06,09,15, 00,00,00 ; PAL_CHARIZARD
	RGB 31,31,31, 22,18,08, 12,19,31, 00,00,00 ; PAL_SQUIRTLE
	RGB 31,31,31, 22,18,08, 12,19,31, 00,00,00 ; PAL_WARTORTLE
	RGB 31,31,31, 24,20,03, 08,11,31, 00,00,00 ; PAL_BLASTOISE
	RGB 31,31,31, 12,22,06, 31,09,15, 00,00,00 ; PAL_CATERPIE
	RGB 31,31,31, 15,31,00, 09,14,01, 00,00,00 ; PAL_METAPOD
	RGB 31,31,31, 18,25,31, 26,05,13, 00,00,00 ; PAL_BUTTERFREE
	RGB 31,31,31, 26,17,05, 25,05,03, 00,00,00 ; PAL_WEEDLE
	RGB 31,31,31, 26,25,03, 20,14,08, 00,00,00 ; PAL_KAKUNA
	RGB 31,31,31, 31,19,04, 30,04,01, 00,00,00 ; PAL_BEEDRILL
	RGB 31,31,31, 31,21,31, 19,08,02, 00,00,00 ; PAL_PIDGEY
	RGB 31,31,31, 31,10,12, 19,08,02, 00,00,00 ; PAL_PIDGEOTTO
	RGB 31,31,31, 31,10,12, 19,08,02, 00,00,00 ; PAL_PIDGEOT
	RGB 31,31,31, 22,08,30, 16,03,17, 00,00,00 ; PAL_RATTATA
	RGB 31,31,31, 29,23,10, 17,10,00, 00,00,00 ; PAL_RATICATE
	RGB 31,31,31, 29,23,13, 21,08,11, 00,00,00 ; PAL_SPEAROW
	RGB 31,31,31, 22,17,07, 31,11,00, 00,00,00 ; PAL_FEAROW
	RGB 31,31,31, 20,08,21, 21,00,07, 00,00,00 ; PAL_EKANS
	RGB 31,31,31, 18,08,19, 22,04,09, 00,00,00 ; PAL_ARBOK
	RGB 31,31,31, 29,26,05, 26,06,00, 00,00,00 ; PAL_PIKACHU
	RGB 31,31,31, 31,26,07, 31,12,00, 00,00,00 ; PAL_RAICHU
	RGB 31,31,31, 22,18,06, 12,07,01, 00,00,00 ; PAL_SANDSHREW
	RGB 31,31,31, 23,14,04, 13,07,00, 00,00,00 ; PAL_SANDSLASH
	RGB 31,31,31, 18,21,30, 12,06,14, 00,00,00 ; PAL_NIDORAN_F
	RGB 31,31,31, 13,20,31, 07,12,14, 00,00,00 ; PAL_NIDORINA
	RGB 31,31,31, 27,19,07, 09,16,27, 00,00,00 ; PAL_NIDOQUEEN
	RGB 31,31,31, 27,17,22, 21,02,08, 00,00,00 ; PAL_NIDORAN_M
	RGB 31,31,31, 26,17,22, 21,02,08, 00,00,00 ; PAL_NIDORINO
	RGB 31,31,31, 24,10,19, 13,03,15, 00,00,00 ; PAL_NIDOKING
	RGB 31,31,31, 31,14,18, 13,07,00, 00,00,00 ; PAL_CLEFAIRY
	RGB 31,31,31, 31,14,18, 13,07,00, 00,00,00 ; PAL_CLEFABLE
	RGB 31,31,31, 31,18,09, 23,09,10, 00,00,00 ; PAL_VULPIX
	RGB 31,31,31, 31,25,09, 18,15,00, 00,00,00 ; PAL_NINETALES
	RGB 31,31,31, 31,16,31, 06,16,31, 00,00,00 ; PAL_JIGGLYPUFF
	RGB 31,31,31, 31,16,31, 06,16,31, 00,00,00 ; PAL_WIGGLYTUFF
	RGB 31,31,31, 12,15,19, 05,08,17, 00,00,00 ; PAL_ZUBAT
	RGB 31,31,31, 12,15,19, 05,08,17, 00,00,00 ; PAL_GOLBAT
;	RGB 31,31,31, 12,15,19, 05,08,17, 00,00,00 ; PAL_CROBAT			; New Pokemon
	RGB 31,31,31, 11,23,03, 06,09,09, 00,00,00 ; PAL_ODDISH
	RGB 31,31,31, 31,14,07, 08,09,13, 00,00,00 ; PAL_GLOOM
	RGB 31,31,31, 31,06,03, 08,09,13, 00,00,00 ; PAL_VILEPLUME
	RGB 31,31,31, 31,12,03, 23,03,00, 00,00,00 ; PAL_PARAS
	RGB 31,31,31, 31,09,04, 14,05,01, 00,00,00 ; PAL_PARASECT
	RGB 31,31,31, 28,05,02, 11,00,14, 00,00,00 ; PAL_VENONAT
	RGB 31,31,31, 27,10,24, 12,05,14, 00,00,00 ; PAL_VENOMOTH
	RGB 31,31,31, 19,11,04, 24,06,04, 00,00,00 ; PAL_DIGLETT
	RGB 31,31,31, 19,11,04, 24,06,04, 00,00,00 ; PAL_DUGTRIO
	RGB 31,31,31, 31,27,13, 20,08,03, 00,00,00 ; PAL_MEOWTH
	RGB 31,31,31, 31,28,10, 12,09,04, 00,00,00 ; PAL_PERSIAN
	RGB 31,31,31, 31,27,04, 17,15,00, 00,00,00 ; PAL_PSYDUCK
	RGB 31,31,31, 22,21,26, 08,11,24, 00,00,00 ; PAL_GOLDUCK
	RGB 31,31,31, 29,20,11, 19,09,07, 00,00,00 ; PAL_MANKEY
	RGB 31,31,31, 31,18,12, 16,08,05, 00,00,00 ; PAL_PRIMEAPE
	RGB 31,31,31, 31,23,07, 31,09,04, 00,00,00 ; PAL_GROWLITHE
	RGB 31,31,31, 31,23,07, 31,09,04, 00,00,00 ; PAL_ARCANINE
	RGB 31,31,31, 26,08,05, 07,08,10, 00,00,00 ; PAL_POLIWAG
	RGB 31,31,31, 16,16,26, 08,05,15, 00,00,00 ; PAL_POLIWHIRL
	RGB 31,31,31, 16,16,26, 06,06,15, 00,00,00 ; PAL_POLIWRATH
;	RGB 31,31,31, 15,31,00, 09,14,01, 00,00,00 ; PAL_POLITOED		; New pokemon
	RGB 31,31,31, 28,19,03, 12,08,10, 00,00,00 ; PAL_ABRA
	RGB 31,31,31, 28,19,03, 12,08,10, 00,00,00 ; PAL_KADABRA
	RGB 31,31,31, 28,19,03, 12,08,10, 00,00,00 ; PAL_ALAKAZAM
	RGB 31,31,31, 20,17,11, 09,11,04, 00,00,00 ; PAL_MACHOP
	RGB 31,31,31, 16,17,11, 22,04,04, 00,00,00 ; PAL_MACHOKE
	RGB 31,31,31, 21,18,11, 09,11,04, 00,00,00 ; PAL_MACHAMP
	RGB 31,31,31, 20,31,07, 27,10,09, 00,00,00 ; PAL_BELLSPROUT
	RGB 31,31,31, 13,31,07, 29,09,09, 00,00,00 ; PAL_WEEPINBELL
	RGB 31,31,31, 15,26,03, 31,10,13, 00,00,00 ; PAL_VICTREEBEL
	RGB 31,31,31, 11,20,31, 30,05,10, 00,00,00 ; PAL_TENTACOOL
	RGB 31,31,31, 11,20,31, 26,02,02, 00,00,00 ; PAL_TENTACRUEL
	RGB 31,31,31, 18,17,15, 08,11,07, 00,00,00 ; PAL_GEODUDE
	RGB 31,31,31, 17,17,18, 08,11,07, 00,00,00 ; PAL_GRAVELER
	RGB 31,31,31, 18,17,15, 08,11,07, 00,00,00 ; PAL_GOLEM
	RGB 31,31,31, 26,27,04, 31,05,03, 00,00,00 ; PAL_PONYTA
	RGB 31,31,31, 26,27,04, 31,05,03, 00,00,00 ; PAL_RAPIDASH
	RGB 31,31,31, 31,10,17, 21,05,08, 00,00,00 ; PAL_SLOWPOKE
	RGB 31,31,31, 31,10,17, 12,17,11, 00,00,00 ; PAL_SLOWBRO
;	RGB 31,31,31, 31,10,17, 12,17,11, 00,00,00 ; PAL_SLOWKING		; New pokemon
	RGB 31,31,31, 11,20,31, 31,06,02, 00,00,00 ; PAL_MAGNEMITE
	RGB 31,31,31, 11,20,31, 31,06,02, 00,00,00 ; PAL_MAGNETON
	RGB 31,31,31, 23,12,03, 06,26,01, 00,00,00 ; PAL_FARFETCH_D
;	RGB 31,31,31, 21,13,09, 12,08,06, 00,00,00 ; PAL_SWANDOE	 	; New pokemon
	RGB 31,31,31, 21,13,09, 12,08,06, 00,00,00 ; PAL_DODUO
	RGB 31,31,31, 26,16,08, 18,08,06, 00,00,00 ; PAL_DODRIO
	RGB 31,31,31, 19,21,31, 29,09,13, 00,00,00 ; PAL_SEEL
	RGB 31,31,31, 19,21,31, 08,11,18, 00,00,00 ; PAL_DEWGONG
	RGB 31,31,31, 29,02,20, 12,01,12, 00,00,00 ; PAL_GRIMER
	RGB 31,31,31, 29,02,20, 12,01,12, 00,00,00 ; PAL_MUK
	RGB 31,31,31, 16,08,13, 21,07,01, 00,00,00 ; PAL_SHELLDER
	RGB 31,31,31, 21,10,22, 12,04,13, 00,00,00 ; PAL_CLOYSTER
;	RGB 31,31,31, 21,10,22, 12,04,13, 00,00,00 ; PAL_MURMUDER		; New pokemon
	RGB 31,31,31, 30,08,30, 17,00,23, 00,00,00 ; PAL_GASTLY
	RGB 31,31,31, 25,07,06, 14,00,19, 00,00,00 ; PAL_HAUNTER
	RGB 31,31,31, 31,05,02, 09,00,16, 00,00,00 ; PAL_GENGAR
	RGB 31,31,31, 17,15,20, 09,06,11, 00,00,00 ; PAL_ONIX
;	RGB 31,31,31, 17,15,20, 09,06,11, 00,00,00 ; PAL_STEELIX		; New pokemon
	RGB 31,31,31, 31,23,04, 18,10,12, 00,00,00 ; PAL_DROWZEE
	RGB 31,31,31, 31,25,00, 21,12,00, 00,00,00 ; PAL_HYPNO
	RGB 31,31,31, 29,17,09, 29,05,04, 00,00,00 ; PAL_KRABBY
	RGB 31,31,31, 29,17,09, 29,05,04, 00,00,00 ; PAL_KINGLER
	RGB 31,31,31, 25,23,17, 31,09,08, 00,00,00 ; PAL_VOLTORB
	RGB 31,31,31, 25,23,17, 31,09,08, 00,00,00 ; PAL_ELECTRODE
	RGB 31,31,31, 31,15,17, 19,05,09, 00,00,00 ; PAL_EXEGGCUTE
	RGB 31,31,31, 20,13,06, 05,16,07, 00,00,00 ; PAL_EXEGGUTOR
	RGB 31,31,31, 20,19,12, 16,10,04, 00,00,00 ; PAL_CUBONE
	RGB 31,31,31, 20,19,12, 16,10,04, 00,00,00 ; PAL_MAROWAK
;	RGB 31,31,31, 25,23,17, 13,07,00, 00,00,00 ; PAL_HITMON			; New pokemon
	RGB 31,31,31, 22,14,05, 15,16,15, 00,00,00 ; PAL_HITMONLEE
	RGB 31,31,31, 21,15,12, 25,05,05, 00,00,00 ; PAL_HITMONCHAN
;	RGB 31,31,31, 21,15,12, 05,11,31, 00,00,00 ; PAL_HITMONTOP		; New pokemon
	RGB 31,31,31, 31,10,18, 26,06,05, 00,00,00 ; PAL_LICKITUNG
;	RGB 31,31,31, 31,10,18, 26,06,05, 00,00,00 ; PAL_LICKILONG		; New pokemon
	RGB 31,31,31, 25,10,25, 18,06,18, 00,00,00 ; PAL_KOFFING
	RGB 31,31,31, 25,10,25, 18,06,18, 00,00,00 ; PAL_WEEZING
	RGB 31,31,31, 15,11,17, 07,09,04, 00,00,00 ; PAL_RHYHORN
	RGB 31,31,31, 15,11,17, 07,09,04, 00,00,00 ; PAL_RHYDON
	RGB 31,31,31, 28,16,21, 31,09,19, 00,00,00 ; PAL_CHANSEY
;	RGB 31,31,31, 28,16,21, 31,09,19, 00,00,00 ; PAL_KISSLEY		; New pokemon
	RGB 31,31,31, 09,13,23, 17,06,06, 00,00,00 ; PAL_TANGELA
;	RGB 31,31,31, 15,31,00, 09,14,01, 00,00,00 ; PAL_TANGALINE		; New pokemon
	RGB 31,31,31, 19,14,04, 08,08,02, 00,00,00 ; PAL_KANGASKHAN
	RGB 31,31,31, 28,27,12, 11,17,31, 00,00,00 ; PAL_HORSEA
	RGB 31,31,31, 28,22,16, 09,16,31, 00,00,00 ; PAL_SEADRA
;	RGB 31,31,31, 28,22,16, 09,11,31, 00,00,00 ; PAL_KINGDRA		; New pokemon
	RGB 31,31,31, 31,12,19, 31,10,02, 00,00,00 ; PAL_GOLDEEN
	RGB 31,31,31, 19,22,30, 31,10,02, 00,00,00 ; PAL_SEAKING
	RGB 31,31,31, 23,17,11, 31,05,03, 00,00,00 ; PAL_STARYU
	RGB 31,31,31, 26,22,00, 19,07,18, 00,00,00 ; PAL_STARMIE
	RGB 31,31,31, 31,11,31, 28,07,13, 00,00,00 ; PAL_MR_MIME
	RGB 31,31,31, 15,26,00, 23,25,00, 00,00,00 ; PAL_SCYTHER
;	RGB 31,31,31, 28,10,01, 10,10,05, 00,00,00 ; PAL_SCIZOR			; New pokemon
	RGB 31,31,31, 31,27,04, 29,06,19, 00,00,00 ; PAL_JYNX
	RGB 31,31,31, 31,31,05, 24,16,05, 00,00,00 ; PAL_ELECTABUZZ
	RGB 31,31,31, 31,20,00, 23,07,06, 00,00,00 ; PAL_MAGMAR
	RGB 31,31,31, 20,20,14, 17,10,07, 00,00,00 ; PAL_PINSIR
	RGB 31,31,31, 25,15,05, 10,07,04, 00,00,00 ; PAL_TAUROS
	RGB 31,31,31, 29,10,06, 18,03,09, 00,00,00 ; PAL_MAGIKARP
	RGB 31,31,31, 27,25,07, 09,14,26, 00,00,00 ; PAL_GYARADOS
	RGB 31,31,31, 28,21,13, 08,16,28, 00,00,00 ; PAL_LAPRAS
	RGB 31,31,31, 23,12,28, 13,07,16, 00,00,00 ; PAL_DITTO
	RGB 31,31,31, 24,16,11, 17,10,08, 00,00,00 ; PAL_EEVEE
	RGB 31,31,31, 16,22,31, 09,11,31, 00,00,00 ; PAL_VAPOREON
	RGB 31,31,31, 31,31,03, 28,11,01, 00,00,00 ; PAL_JOLTEON
	RGB 31,31,31, 31,10,01, 21,05,02, 00,00,00 ; PAL_FLAREON
;	RGB 31,31,31, 15,31,00, 09,14,01, 00,00,00 ; PAL_LEAFEON		; New pokemon
;	RGB 31,31,31, 23,12,28, 13,07,16, 00,00,00 ; PAL_ESPEON			; New pokemon
;	RGB 31,31,31, 17,15,20, 17,15,20, 00,00,00 ; PAL_UMBREON		; New pokemon
;	RGB 31,31,31, 14,19,31, 08,11,31, 00,00,00 ; PAL_GLACEON		; New pokemon
;	RGB 31,31,31, 31,16,31, 06,16,31, 00,00,00 ; PAL_SYLVEON		; New pokemon
	RGB 31,31,31, 24,09,04, 12,11,25, 00,00,00 ; PAL_PORYGON
	RGB 31,31,31, 20,17,11, 07,14,21, 00,00,00 ; PAL_OMANYTE
	RGB 31,31,31, 20,17,11, 07,14,21, 00,00,00 ; PAL_OMASTAR
	RGB 31,31,31, 23,15,11, 14,11,08, 00,00,00 ; PAL_KABUTO
	RGB 31,31,31, 23,15,11, 14,11,08, 00,00,00 ; PAL_KABUTOPS
	RGB 31,31,31, 21,15,18, 13,11,08, 00,00,00 ; PAL_AERODACTYL
	RGB 31,31,31, 27,18,14, 13,09,09, 00,00,00 ; PAL_SNORLAX
	RGB 31,31,31, 11,21,31, 08,11,16, 00,00,00 ; PAL_ARTICUNO
	RGB 31,31,31, 31,28,00, 23,16,00, 00,00,00 ; PAL_ZAPDOS
	RGB 31,31,31, 31,22,00, 31,12,03, 00,00,00 ; PAL_MOLTRES
	RGB 31,31,31, 28,26,07, 05,11,24, 00,00,00 ; PAL_DRATINI
	RGB 31,31,31, 14,19,31, 05,11,31, 00,00,00 ; PAL_DRAGONAIR
	RGB 31,31,31, 24,17,04, 11,10,17, 00,00,00 ; PAL_DRAGONITE
	RGB 31,31,31, 22,20,25, 16,05,20, 00,00,00 ; PAL_MEWTWO
	RGB 31,31,31, 31,15,31, 07,11,26, 00,00,00 ; PAL_MEW
; New pokemon	
;	RGB 31,31,31, 28,26,07, 05,11,24, 00,00,00 ; PAL_MANBOO			; New pokemon
;	RGB 31,31,31, 14,19,31, 05,11,31, 00,00,00 ; PAL_SANKOR			; New pokemon
;	RGB 31,31,31, 24,17,04, 11,10,17, 00,00,00 ; PAL_GROTESQUE		; New pokemon
	
; Trainers Begin
	RGB 31,31,31, 27,20,09, 09,12,23, 00,00,00 ; PAL_YOUNGSTER
	RGB 31,31,31, 27,17,10, 06,10,18, 00,00,00 ; PAL_BUGCATCHER
	RGB 31,31,31, 25,17,06, 13,08,25, 00,00,00 ; PAL_LASS
	RGB 31,31,31, 24,14,07, 03,07,13, 00,00,00 ; PAL_SAILOR
	RGB 31,31,31, 31,19,08, 15,25,02, 00,00,00 ; PAL_JR_TRAINER_M
	RGB 31,31,31, 31,19,08, 10,20,02, 00,00,00 ; PAL_JR_TRAINER_F
	RGB 31,31,31, 28,20,13, 13,05,18, 00,00,00 ; PAL_POKEMANIAC
	RGB 31,31,31, 30,22,17, 11,09,10, 00,00,00 ; PAL_SUPERNERD
	RGB 31,31,31, 23,15,09, 13,08,23, 00,00,00 ; PAL_HIKER
	RGB 31,31,31, 20,17,09, 04,03,10, 00,00,00 ; PAL_BIKER
	RGB 31,31,31, 28,16,09, 12,04,23, 00,00,00 ; PAL_BURGLAR
	RGB 31,31,31, 26,19,15, 29,24,09, 00,00,00 ; PAL_ENGINEER
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Swimmer ♀ Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	RGB 31,31,31, 25,16,05, 06,14,04, 00,00,00 ; PAL_SWIMMER_F
;	RGB 31,31,31, 26,15,10, 09,06,31, 00,00,00 ; PAL_JUGGLER

	RGB 31,31,31, 30,17,13, 07,12,15, 00,00,00 ; PAL_FISHERMAN
	RGB 31,31,31, 21,13,01, 03,04,09, 00,00,00 ; PAL_SWIMMER_M
	RGB 31,31,31, 28,22,18, 09,13,18, 00,00,00 ; PAL_CUEBALL
	RGB 31,31,31, 28,18,12, 10,03,22, 00,00,00 ; PAL_GAMBLER
	RGB 31,31,31, 24,17,11, 08,09,17, 00,00,00 ; PAL_BEAUTY
	RGB 31,31,31, 30,22,17, 10,12,19, 00,00,00 ; PAL_PSYCHIC
	RGB 31,31,31, 31,22,19, 31,08,05, 00,00,00 ; PAL_ROCKER
	RGB 31,31,31, 26,15,10, 09,06,31, 00,00,00 ; PAL_JUGGLER
	RGB 31,31,31, 28,20,15, 12,13,18, 00,00,00 ; PAL_TAMER
	RGB 31,31,31, 30,22,17, 06,12,26, 00,00,00 ; PAL_BIRDKEEPER
	RGB 31,31,31, 26,15,08, 13,10,12, 00,00,00 ; PAL_BLACKBELT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Blue/Red Rival Colours
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IF DEF(_RED)
	RGB 31,31,31, 31,24,08, 08,14,25, 00,00,00 ; PAL_GARY1
	ELSE
	RGB 31,31,31, 31,24,08, 26,07,08, 00,00,00 ; PAL_GARY1
ENDC	
	RGB 31,31,31, 31,24,08, 22,14,05, 00,00,00 ; PAL_OAK
	RGB 31,31,31, 24,19,11, 10,13,17, 00,00,00 ; PAL_CHIEF
	RGB 31,31,31, 24,19,11, 10,13,17, 00,00,00 ; PAL_SCIENTIST
	RGB 31,31,31, 25,17,12, 08,10,12, 00,00,00 ; PAL_GIOVANNI
	RGB 31,31,31, 29,17,15, 20,08,05, 00,00,00 ; PAL_ROCKET
	RGB 31,31,31, 26,18,15, 22,09,03, 00,00,00 ; PAL_COOLTRAINER_M
	RGB 31,31,31, 26,18,15, 22,09,03, 00,00,00 ; PAL_COOLTRAINER_F
	RGB 31,31,31, 25,17,12, 08,10,12, 00,00,00 ; PAL_BRUNO
	RGB 31,31,31, 30,18,14, 14,07,10, 00,00,00 ; PAL_BROCK
	RGB 31,31,31, 29,19,16, 20,10,05, 00,00,00 ; PAL_MISTY
	RGB 31,31,31, 25,17,14, 09,14,10, 00,00,00 ; PAL_LT_SURGE
	RGB 31,31,31, 31,18,13, 07,15,08, 00,00,00 ; PAL_ERIKA
	RGB 31,31,31, 27,18,14, 12,07,13, 00,00,00 ; PAL_KOGA
	RGB 31,31,31, 30,20,16, 07,11,12, 00,00,00 ; PAL_BLAINE
	RGB 31,31,31, 30,22,17, 24,07,09, 00,00,00 ; PAL_SABRINA
	RGB 31,31,31, 25,16,12, 09,09,15, 00,00,00 ; PAL_GENTLEMAN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Blue/Red Rival Colours
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IF DEF(_RED)
	RGB 31,31,31, 31,24,08, 08,14,25, 00,00,00 ; PAL_GARY2
	RGB 31,31,31, 31,24,08, 08,14,25, 00,00,00 ; PAL_GARY3
ELSE
	RGB 31,31,31, 31,24,08, 26,07,08, 00,00,00 ; PAL_GARY2
	RGB 31,31,31, 31,24,08, 26,07,08, 00,00,00 ; PAL_GARY3
ENDC
	RGB 31,31,31, 28,20,16, 25,06,06, 00,00,00 ; PAL_LORELEI
	RGB 31,31,31, 30,22,17, 08,08,20, 00,00,00 ; PAL_CHANNELER
	RGB 31,31,31, 27,22,17, 16,11,20, 00,00,00 ; PAL_AGATHA
	RGB 31,31,31, 29,19,15, 21,09,05, 00,00,00 ; PAL_LANCE
	
; New Trainers begin
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Rocket ♀ Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	RGB 31,31,31, 29,17,15, 20,08,05, 00,00,00 ; PAL_ROCKET_F
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Soldier Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	RGB 31,31,31, 15,25,15, 10,015,10, 00,00,00 ; PAL_SOLDIER

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Blue/Red Hero Colours
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IF DEF(_RED)
	RGB 31,31,31, 31,24,08, 22,07,08, 00,00,00 ; PAL_HERO
ELSE
	RGB 31,31,31, 31,24,08, 08,14,25, 00,00,00 ; PAL_HERO
ENDC
	RGB 31,31,31, 31,24,08, 07,20,08, 00,00,00 ; PAL_HEROF

ENDC

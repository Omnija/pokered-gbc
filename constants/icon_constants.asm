; party menu icons
; used in MonPartySpritePointers (see data/icon_pointers.asm)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Removed not being used anymore
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	const_def
;	const ICON_MON       ; $0
;	const ICON_BALL      ; $1
;	const ICON_HELIX     ; $2
;	const ICON_FAIRY     ; $3
;	const ICON_BIRD      ; $4
;	const ICON_WATER     ; $5
;	const ICON_BUG       ; $6
;	const ICON_GRASS     ; $7
;	const ICON_SNAKE     ; $8
;	const ICON_QUADRUPED ; $9

ICON_TRADEBUBBLE EQU $e

ICONOFFSET EQU $40 ; difference between alternating icon frames' tile IDs

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Party Menu ICONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	const_def
;	const ICON_NULL		   ; NULL
	const ICON_BULBASAUR   ; BULBASAUR
;	const ICON_IVYSAUR     ; IVYSAUR
;	const ICON_VENUSAUR    ; VENUSAUR
	const ICON_CHARMANDER  ; CHARMANDER
;	const ICON_CHARMELEON  ; CHARMELEON
;	const ICON_CHARIZARD   ; CHARIZARD
	const ICON_SQUIRTLE    ; SQUIRTLE
;	const ICON_WARTORTLE   ; WARTORTLE
;	const ICON_BLASTOISE   ; BLASTOISE
	const ICON_CATERPIE    ; CATERPIE
;	const ICON_METAPOD     ; METAPOD
;	const ICON_BUTTERFREE  ; BUTTERFREE
	const ICON_WEEDLE      ; WEEDLE
;	const ICON_KAKUNA      ; KAKUNA
;	const ICON_BEEDRILL    ; BEEDRILL
	const ICON_PIDGEY      ; PIDGEY
;	const ICON_PIDGEOTTO   ; PIDGEOTTO
;	const ICON_PIDGEOT     ; PIDGEOT
	const ICON_RATTATA     ; RATTATA
;	const ICON_RATICATE    ; RATICATE
	const ICON_SPEAROW     ; SPEAROW
;	const ICON_FEAROW      ; FEAROW
	const ICON_EKANS       ; EKANS
;	const ICON_ARBOK       ; ARBOK
	const ICON_PIKACHU     ; PIKACHU
;	const ICON_RAICHU      ; RAICHU
	const ICON_SANDSHREW   ; SANDSHREW
;	const ICON_SANDSLASH   ; SANDSLASH
	const ICON_NIDORAN_F   ; NIDORAN_F
;	const ICON_NIDORINA    ; NIDORINA
;	const ICON_NIDOQUEEN   ; NIDOQUEEN
	const ICON_NIDORAN_M   ; NIDORAN_M
;	const ICON_NIDORINO    ; NIDORINO
;	const ICON_NIDOKING    ; NIDOKING
	const ICON_CLEFAIRY    ; CLEFAIRY
;	const ICON_CLEFABLE    ; CLEFABLE
	const ICON_VULPIX      ; VULPIX
;	const ICON_NINETALES   ; NINETALES
	const ICON_JIGGLYPUFF  ; JIGGLYPUFF
;	const ICON_WIGGLYTUFF  ; WIGGLYTUFF
	const ICON_ZUBAT       ; ZUBAT
;	const ICON_GOLBAT      ; GOLBAT
;	const ICON_CROBAT      ; CROBAT		; New pokemon
	const ICON_ODDISH      ; ODDISH
;	const ICON_GLOOM       ; GLOOM
;	const ICON_VILEPLUME   ; VILEPLUME
	const ICON_PARAS       ; PARAS
;	const ICON_PARASECT    ; PARASECT
	const ICON_VENONAT     ; VENONAT
;	const ICON_VENOMOTH    ; VENOMOTH
	const ICON_DIGLETT     ; DIGLETT
;	const ICON_DUGTRIO     ; DUGTRIO
	const ICON_MEOWTH      ; MEOWTH
;	const ICON_PERSIAN     ; PERSIAN
	const ICON_PSYDUCK     ; PSYDUCK
;	const ICON_GOLDUCK     ; GOLDUCK
	const ICON_MANKEY      ; MANKEY
;	const ICON_PRIMEAPE    ; PRIMEAPE
	const ICON_GROWLITHE   ; GROWLITHE
;	const ICON_ARCANINE    ; ARCANINE
	const ICON_POLIWAG     ; POLIWAG
;	const ICON_POLIWHIRL   ; POLIWHIRL
;	const ICON_POLIWRATH   ; POLIWRATH
;	const ICON_POLITOED    ; POLITOED	; New pokemon
	const ICON_ABRA        ; ABRA
;	const ICON_KADABRA     ; KADABRA
;	const ICON_ALAKAZAM    ; ALAKAZAM
	const ICON_MACHOP      ; MACHOP
;	const ICON_MACHOKE     ; MACHOKE
;	const ICON_MACHAMP     ; MACHAMP
	const ICON_BELLSPROUT  ; BELLSPROUT
;	const ICON_WEEPINBELL  ; WEEPINBELL
;	const ICON_VICTREEBEL  ; VICTREEBEL
	const ICON_TENTACOOL   ; TENTACOOL
;	const ICON_TENTACRUEL  ; TENTACRUEL
	const ICON_GEODUDE     ; GEODUDE
;	const ICON_GRAVELER    ; GRAVELER
;	const ICON_GOLEM       ; GOLEM
	const ICON_PONYTA      ; PONYTA
;	const ICON_RAPIDASH    ; RAPIDASH
	const ICON_SLOWPOKE    ; SLOWPOKE
;	const ICON_SLOWBRO     ; SLOWBRO
;	const ICON_SLOWKING    ; SLOWKING	; New pokemon
	const ICON_MAGNEMITE   ; MAGNEMITE
;	const ICON_MAGNETON    ; MAGNETON
	const ICON_FARFETCH_D  ; FARFETCH_D
;	const ICON_SWANDOE     ; SWANDOE	; New pokemon
	const ICON_DODUO       ; DODUO
;	const ICON_DODRIO      ; DODRIO
	const ICON_SEEL        ; SEEL
;	const ICON_DEWGONG     ; DEWGONG
	const ICON_GRIMER      ; GRIMER
;	const ICON_MUK         ; MUK
	const ICON_SHELLDER    ; SHELLDER
;	const ICON_CLOYSTER    ; CLOYSTER
;	const ICON_MURMUDER    ; MURMUDER	; New pokemon
	const ICON_GASTLY      ; GASTLY
;	const ICON_HAUNTER     ; HAUNTER
;	const ICON_GENGAR      ; GENGAR
	const ICON_ONIX        ; ONIX
;	const ICON_STEELIX     ; STEELIX	; New pokemon
	const ICON_DROWZEE     ; DROWZEE
;	const ICON_HYPNO       ; HYPNO
	const ICON_KRABBY      ; KRABBY
;	const ICON_KINGLER     ; KINGLER
	const ICON_VOLTORB     ; VOLTORB
;	const ICON_ELECTRODE   ; ELECTRODE
	const ICON_EXEGGCUTE   ; EXEGGCUTE
;	const ICON_EXEGGUTOR   ; EXEGGUTOR
	const ICON_CUBONE      ; CUBONE
;	const ICON_MAROWAK     ; MAROWAK
	const ICON_HITMON      ; HITMON		; New pokemon
;	const ICON_HITMONLEE   ; HITMONLEE
;	const ICON_HITMONCHAN  ; HITMONCHAN
;	const ICON_HITMONTOP   ; HITMONTOP  ; New pokemon
	const ICON_LICKITUNG   ; LICKITUNG
;	const ICON_LICKILONG   ; LICKILONG	; New Pokemon
	const ICON_KOFFING     ; KOFFING
;	const ICON_WEEZING     ; WEEZING
	const ICON_RHYHORN     ; RHYHORN
;	const ICON_RHYDON      ; RHYDON
	const ICON_CHANSEY     ; CHANSEY
;	const ICON_KISSLEY     ; KISSLEY	; New pokemon
	const ICON_TANGELA     ; TANGELA
;	const ICON_TANGALINE   ; TANGALINE	; New pokemon
	const ICON_KANGASKHAN  ; KANGASKHAN
	const ICON_HORSEA      ; HORSEA
;	const ICON_SEADRA      ; SEADRA
;	const ICON_KINGDRA     ; KINGDRA	; New pokemon
	const ICON_GOLDEEN     ; GOLDEEN
;	const ICON_SEAKING     ; SEAKING
	const ICON_STARYU      ; STARYU
;	const ICON_STARMIE     ; STARMIE
	const ICON_MR__MIME    ; MR__MIME
	const ICON_SCYTHER     ; SCYTHER
;	const ICON_SCIZOR      ; SCIZOR		; New pokemon
	const ICON_JYNX        ; JYNX
	const ICON_ELECTABUZZ  ; ELECTABUZZ
	const ICON_MAGMAR      ; MAGMAR
	const ICON_PINSIR      ; PINSIR
	const ICON_TAUROS      ; TAUROS
	const ICON_MAGIKARP    ; MAGIKARP
;	const ICON_GYARADOS    ; GYARADOS
	const ICON_LAPRAS      ; LAPRAS
	const ICON_DITTO       ; DITTO
	const ICON_EEVEE       ; EEVEE
;	const ICON_VAPOREON    ; VAPOREON
;	const ICON_JOLTEON     ; JOLTEON
;	const ICON_FLAREON     ; FLAREON
;	const ICON_LEAFEON     ; LEAFEON	; New pokemon
;	const ICON_ESPEON      ; ESPEON 	; New pokemon
;	const ICON_UMBREON     ; UMBREON	; New pokemon
;	const ICON_GLACEON     ; GLACEON	; New pokemon
;	const ICON_SYLVEON     ; SYLVEON	; New pokemon
	const ICON_PORYGON     ; PORYGON
	const ICON_OMANYTE     ; OMANYTE
;	const ICON_OMASTAR     ; OMASTAR
	const ICON_KABUTO      ; KABUTO
;	const ICON_KABUTOPS    ; KABUTOPS
	const ICON_AERODACTYL  ; AERODACTYL
	const ICON_SNORLAX     ; SNORLAX
	const ICON_ARTICUNO    ; ARTICUNO
	const ICON_ZAPDOS      ; ZAPDOS
	const ICON_MOLTRES     ; MOLTRES
	const ICON_DRATINI     ; DRATINI
;	const ICON_DRAGONAIR   ; DRAGONAIR
;	const ICON_DRAGONITE   ; DRAGONITE
	const ICON_MEWTWO      ; MEWTWO
	const ICON_MEW         ; MEW
; New pokemon lines
	const ICON_MANBOO      ; MANBOO  	; New pokemon
;	const ICON_SANKOR	   ; SANKOR		; New pokemon
;	const ICON_GROTESQUE   ; GROTESQUE	; New pokemon

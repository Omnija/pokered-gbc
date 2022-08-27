; monochrome palette color ids
	const_def
	const SHADE_WHITE ; %00
	const SHADE_LIGHT ; %01
	const SHADE_DARK  ; %10
	const SHADE_BLACK ; %11
NUM_PAL_COLORS EQU const_value

PAL_COLOR_SIZE EQU 2
PALETTE_SIZE EQU NUM_PAL_COLORS * PAL_COLOR_SIZE

; pal/blk packets
; SetPalFunctions indexes (see engine/gfx/palettes.asm)
	const_def
	const SET_PAL_BATTLE_BLACK         ; $00
	const SET_PAL_BATTLE               ; $01
	const SET_PAL_TOWN_MAP             ; $02
	const SET_PAL_STATUS_SCREEN        ; $03
	const SET_PAL_POKEDEX              ; $04
	const SET_PAL_SLOTS                ; $05
	const SET_PAL_TITLE_SCREEN         ; $06
	const SET_PAL_NIDORINO_INTRO       ; $07
	const SET_PAL_GENERIC              ; $08
	const SET_PAL_OVERWORLD            ; $09
	const SET_PAL_PARTY_MENU           ; $0A
	const SET_PAL_POKEMON_WHOLE_SCREEN ; $0B
	const SET_PAL_GAME_FREAK_INTRO     ; $0C
	const SET_PAL_TRAINER_CARD         ; $0D
	const SET_PAL_OAK_INTRO            ; $0E
	const SET_PAL_NAMING_SCREEN        ; $0F
	const SET_PAL_BATTLE_AFTER_BLACK   ; $10

SET_PAL_PARTY_MENU_HP_BARS EQU $fc
SET_PAL_DEFAULT EQU $ff
; sgb palettes
; SuperPalettes indexes (see data/sgb/sgb_palettes.asm)
	const_def
	const PAL_TOWNMAP2  ; $00
	const PAL_SLOTS5    ; $01
	const PAL_VIRIDIAN  ; $02
	const PAL_PEWTER    ; $03
	const PAL_CERULEAN  ; $04
	const PAL_LAVENDER  ; $05
	const PAL_VERMILION ; $06
	const PAL_CELADON   ; $07
	const PAL_FUCHSIA   ; $08
	const PAL_CINNABAR  ; $09
	const PAL_INDIGO    ; $0A
	const PAL_SAFFRON   ; $0B
	const PAL_TOWNMAP   ; $0C
	const PAL_LOGO1     ; $0D
	const PAL_LOGO2     ; $0E
	const PAL_EXP       ; $0F
	const PAL_MEWMON    ; $10
	const PAL_BLUEMON   ; $11
	const PAL_REDMON    ; $12
	const PAL_CYANMON   ; $13
	const PAL_PURPLEMON ; $14
	const PAL_BROWNMON  ; $15
	const PAL_GREENMON  ; $16
	const PAL_PINKMON   ; $17
	const PAL_YELLOWMON ; $18
	const PAL_GREYMON   ; $19
	const PAL_SLOTS1    ; $1A
	const PAL_SLOTS2    ; $1B
	const PAL_SLOTS3    ; $1C
	const PAL_SLOTS4    ; $1D
	const PAL_BLACK     ; $1E
	const PAL_GREENBAR  ; $1F
	const PAL_YELLOWBAR ; $20
	const PAL_REDBAR    ; $21
	const PAL_BADGE     ; $22
	const PAL_CAVE      ; $23
	const PAL_GAMEFREAK ; $24
IF GEN_2_GRAPHICS
; Pokemons Begin
	const PAL_BULBASAUR  ; $25
	const PAL_IVYSAUR    ; $26
	const PAL_VENUSAUR   ; $27
	const PAL_CHARMANDER ; $28
	const PAL_CHARMELEON ; $29
	const PAL_CHARIZARD  ; $2A
	const PAL_SQUIRTLE   ; $2B
	const PAL_WARTORTLE  ; $2C
	const PAL_BLASTOISE  ; $2D
	const PAL_CATERPIE   ; $2E
	const PAL_METAPOD    ; $2F
	const PAL_BUTTERFREE ; $30
	const PAL_WEEDLE     ; $31
	const PAL_KAKUNA     ; $32
	const PAL_BEEDRILL   ; $33
	const PAL_PIDGEY     ; $34
	const PAL_PIDGEOTTO  ; $35
	const PAL_PIDGEOT    ; $36
	const PAL_RATTATA    ; $37
	const PAL_RATICATE   ; $38
	const PAL_SPEAROW    ; $39
	const PAL_FEAROW     ; $3A
	const PAL_EKANS      ; $3B
	const PAL_ARBOK      ; $3C
	const PAL_PIKACHU    ; $3D
	const PAL_RAICHU     ; $3E
	const PAL_SANDSHREW  ; $3F
	const PAL_SANDSLASH  ; $40
	const PAL_NIDORAN_F  ; $41
	const PAL_NIDORINA   ; $42
	const PAL_NIDOQUEEN  ; $43
	const PAL_NIDORAN_M  ; $44
	const PAL_NIDORINO   ; $45
	const PAL_NIDOKING   ; $46
	const PAL_CLEFAIRY   ; $47
	const PAL_CLEFABLE   ; $48
	const PAL_VULPIX     ; $49
	const PAL_NINETALES  ; $4A
	const PAL_JIGGLYPUFF ; $4B
	const PAL_WIGGLYTUFF ; $4C
	const PAL_ZUBAT      ; $4D
	const PAL_GOLBAT     ; $4E
;	const PAL_CROBAT     ; $4E		; New pokemon
	const PAL_ODDISH     ; $4F
	const PAL_GLOOM      ; $50
	const PAL_VILEPLUME  ; $51
	const PAL_PARAS      ; $52
	const PAL_PARASECT   ; $53
	const PAL_VENONAT    ; $54
	const PAL_VENOMOTH   ; $55
	const PAL_DIGLETT    ; $56
	const PAL_DUGTRIO    ; $57
	const PAL_MEOWTH     ; $58
	const PAL_PERSIAN    ; $59
	const PAL_PSYDUCK    ; $5A
	const PAL_GOLDUCK    ; $5B
	const PAL_MANKEY     ; $5C
	const PAL_PRIMEAPE   ; $5D
	const PAL_GROWLITHE  ; $5E
	const PAL_ARCANINE   ; $5F
	const PAL_POLIWAG    ; $60
	const PAL_POLIWHIRL  ; $61
	const PAL_POLIWRATH  ; $62
;	const PAL_POLITOED   ; $62		; New pokemon
	const PAL_ABRA       ; $63
	const PAL_KADABRA    ; $64
	const PAL_ALAKAZAM   ; $65
	const PAL_MACHOP     ; $66
	const PAL_MACHOKE    ; $67
	const PAL_MACHAMP    ; $68
	const PAL_BELLSPROUT ; $69
	const PAL_WEEPINBELL ; $6A
	const PAL_VICTREEBEL ; $6B
	const PAL_TENTACOOL  ; $6C
	const PAL_TENTACRUEL ; $6D
	const PAL_GEODUDE    ; $6E
	const PAL_GRAVELER   ; $6F
	const PAL_GOLEM      ; $70
	const PAL_PONYTA     ; $71
	const PAL_RAPIDASH   ; $72
	const PAL_SLOWPOKE   ; $73
	const PAL_SLOWBRO    ; $74
;	const PAL_SLOWKING   ; $74		; New pokemon
	const PAL_MAGNEMITE  ; $75
	const PAL_MAGNETON   ; $76
	const PAL_FARFETCH_D ; $77
;	const PAL_SWANDOE    ; $77		; New pokemon
	const PAL_DODUO      ; $78
	const PAL_DODRIO     ; $79
	const PAL_SEEL       ; $7A
	const PAL_DEWGONG    ; $7B
	const PAL_GRIMER     ; $7C
	const PAL_MUK        ; $7D
	const PAL_SHELLDER   ; $7E
	const PAL_CLOYSTER   ; $7F
;	const PAL_MURMUDER   ; $7E		; New pokemon
	const PAL_GASTLY     ; $80
	const PAL_HAUNTER    ; $81
	const PAL_GENGAR     ; $82
	const PAL_ONIX       ; $83
;	const PAL_STEELIX    ; $83		; New pokemon
	const PAL_DROWZEE    ; $84
	const PAL_HYPNO      ; $85
	const PAL_KRABBY     ; $86
	const PAL_KINGLER    ; $87
	const PAL_VOLTORB    ; $88
	const PAL_ELECTRODE  ; $89
	const PAL_EXEGGCUTE  ; $8A
	const PAL_EXEGGUTOR  ; $8B
	const PAL_CUBONE     ; $8C
	const PAL_MAROWAK    ; $8D
;	const PAL_HITMON	 ; $8E		; New pokemon
	const PAL_HITMONLEE  ; $8E
	const PAL_HITMONCHAN ; $8F
;	const PAL_HITMONTOP  ; $8F		; New pokemon
	const PAL_LICKITUNG  ; $90
;	const PAL_LICKILONG  ; $BC		; New pokemon
	const PAL_KOFFING    ; $91
	const PAL_WEEZING    ; $92
	const PAL_RHYHORN    ; $93
	const PAL_RHYDON     ; $94
	const PAL_CHANSEY    ; $95
;	const PAL_KISSLEY    ; $95		; New pokemon
	const PAL_TANGELA    ; $96
;	const PAL_TANGALINE  ; $96		; New pokemon
	const PAL_KANGASKHAN ; $97
	const PAL_HORSEA     ; $98
	const PAL_SEADRA     ; $99
;	const PAL_KINGDRA    ; $99		; New pokemon
	const PAL_GOLDEEN    ; $9A
	const PAL_SEAKING    ; $9B
	const PAL_STARYU     ; $9C
	const PAL_STARMIE    ; $9D
	const PAL_MR_MIME    ; $9E
	const PAL_SCYTHER    ; $9F
;	const PAL_SCIZOR     ; $9F		; New pokemon
	const PAL_JYNX       ; $A0
	const PAL_ELECTABUZZ ; $A1
	const PAL_MAGMAR     ; $A2
	const PAL_PINSIR     ; $A3
	const PAL_TAUROS     ; $A4
	const PAL_MAGIKARP   ; $A5
	const PAL_GYARADOS   ; $A6
	const PAL_LAPRAS     ; $A7
	const PAL_DITTO      ; $A8
	const PAL_EEVEE      ; $A9
	const PAL_VAPOREON   ; $AA
	const PAL_JOLTEON    ; $AB
	const PAL_FLAREON    ; $AC
;	const PAL_LEAFEON    ; $AC		; New pokemon
;	const PAL_ESPEON     ; $AC		; New pokemon
;	const PAL_UMBREON    ; $AC		; New pokemon
;	const PAL_GLACEON    ; $AC		; New pokemon
;	const PAL_SYLVEON    ; $AC		; New pokemon
	const PAL_PORYGON    ; $AD
	const PAL_OMANYTE    ; $AE
	const PAL_OMASTAR    ; $AF
	const PAL_KABUTO     ; $B0
	const PAL_KABUTOPS   ; $B1
	const PAL_AERODACTYL ; $B2
	const PAL_SNORLAX    ; $B3
	const PAL_ARTICUNO   ; $B4
	const PAL_ZAPDOS     ; $B5
	const PAL_MOLTRES    ; $B6
	const PAL_DRATINI    ; $B7
	const PAL_DRAGONAIR  ; $B8
	const PAL_DRAGONITE  ; $B9
	const PAL_MEWTWO     ; $BA
	const PAL_MEW        ; $BB
; New pokemon Line	
;	const PAL_MANBOO     ; $B7		; New pokemon
;	const PAL_SANKOR     ; $B8		; New pokemon
;	const PAL_GROTESQUE  ; $B9		; New pokemon

; Trainers Begin
	const PAL_YOUNGSTER     ; $BC
	const PAL_BUGCATCHER    ; $BD
	const PAL_LASS          ; $BE
	const PAL_SAILOR        ; $BF
	const PAL_JR_TRAINER_M  ; $C0
	const PAL_JR_TRAINER_F  ; $C1
	const PAL_POKEMANIAC    ; $C2
	const PAL_SUPERNERD     ; $C3
	const PAL_HIKER         ; $C4
	const PAL_BIKER         ; $C5
	const PAL_BURGLAR       ; $C6
	const PAL_ENGINEER      ; $C7
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Swimmer ♀ Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;	
;	const PAL_SWIMMER_F     ; $C8	
;	const PAL_JUGGLER       ; $C8
	const PAL_FISHERMAN     ; $C9
	const PAL_SWIMMER       ; $CA
	const PAL_CUEBALL       ; $CB
	const PAL_GAMBLER       ; $CC
	const PAL_BEAUTY        ; $CD
	const PAL_PSYCHIC       ; $CE
	const PAL_ROCKER        ; $CF
	const PAL_JUGGLER       ; $D0
	const PAL_TAMER         ; $D1
	const PAL_BIRDKEEPER    ; $D2
	const PAL_BLACKBELT     ; $D3
	const PAL_GARY1         ; $D4
	const PAL_OAK           ; $D5
	const PAL_CHIEF         ; $D6
	const PAL_SCIENTIST     ; $D7
	const PAL_GIOVANNI      ; $D8
	const PAL_ROCKET        ; $D9
	const PAL_COOLTRAINER_M ; $DA
	const PAL_COOLTRAINER_F ; $DB
	const PAL_BRUNO         ; $DC
	const PAL_BROCK         ; $DD
	const PAL_MISTY         ; $DE
	const PAL_LT_SURGE      ; $DF
	const PAL_ERIKA         ; $E0
	const PAL_KOGA          ; $E1
	const PAL_BLAINE        ; $E2
	const PAL_SABRINA       ; $E3
	const PAL_GENTLEMAN     ; $E4
	const PAL_GARY2         ; $E5
	const PAL_GARY3         ; $E6
	const PAL_LORELEI       ; $E7
	const PAL_CHANNELER     ; $E8
	const PAL_AGATHA        ; $E9
	const PAL_LANCE         ; $EA
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Rocket ♀ Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;	
;	const PAL_ROCKET_F      ; $EB
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Soldier Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	const PAL_SOLDIER       ; $ED
	
	const PAL_HERO          ; $EC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Female Player Palette - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	const PAL_HEROF         ; $EC
ENDC

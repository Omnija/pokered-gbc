;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Physical/Special Split - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

_PhysicalSpecialSplit:: ;Determines if a move is Physical or Special
	ld a, [wTempMoveID]
	ld c,a
	ld b, $00
	ld hl,.MovesTable
	add hl,bc
	ld a,[hl]
	ld [wTempMoveID], a
	ret

	
.MovesTable
	db SUPPORT ;NOTHING      EQU $00
	db PHYSICAL;POUND        EQU $01
	db PHYSICAL;KARATE_CHOP  EQU $02
	db PHYSICAL;DOUBLESLAP   EQU $03
	db PHYSICAL;COMET_PUNCH  EQU $04
	db PHYSICAL;MEGA_PUNCH   EQU $05
	db PHYSICAL;PAY_DAY      EQU $06
	db PHYSICAL;FIRE_PUNCH   EQU $07
	db PHYSICAL;ICE_PUNCH    EQU $08
	db PHYSICAL;THUNDERPUNCH EQU $09
	db PHYSICAL;SCRATCH      EQU $0A
	db PHYSICAL;VICEGRIP     EQU $0B
	db PHYSICAL;GUILLOTINE   EQU $0C
	db SPECIAL ;RAZOR_WIND   EQU $0D
	db SUPPORT ;SWORDS_DANCE EQU $0E
	db PHYSICAL;CUT          EQU $0F
	db SPECIAL ;GUST         EQU $10
	db PHYSICAL;WING_ATTACK  EQU $11
	db SUPPORT ;WHIRLWIND    EQU $12
	db PHYSICAL;FLY          EQU $13
	db PHYSICAL;BIND         EQU $14
	db PHYSICAL;SLAM         EQU $15
	db PHYSICAL;VINE_WHIP    EQU $16
	db PHYSICAL;STOMP        EQU $17
	db PHYSICAL;DOUBLE_KICK  EQU $18
	db PHYSICAL;MEGA_KICK    EQU $19
	db PHYSICAL;JUMP_KICK    EQU $1A
	db PHYSICAL;ROLLING_KICK EQU $1B
	db SUPPORT ;SAND_ATTACK  EQU $1C
	db PHYSICAL;HEADBUTT     EQU $1D
	db PHYSICAL;HORN_ATTACK  EQU $1E
	db PHYSICAL;FURY_ATTACK  EQU $1F
	db PHYSICAL;HORN_DRILL   EQU $20
	db PHYSICAL;TACKLE       EQU $21
	db PHYSICAL;BODY_SLAM    EQU $22
	db PHYSICAL;WRAP         EQU $23
	db PHYSICAL;TAKE_DOWN    EQU $24
	db PHYSICAL;THRASH       EQU $25
	db PHYSICAL;DOUBLE_EDGE  EQU $26
	db SUPPORT ;TAIL_WHIP    EQU $27
	db PHYSICAL;POISON_STING EQU $28
	db PHYSICAL;TWINEEDLE    EQU $29
	db PHYSICAL;PIN_MISSILE  EQU $2A
	db SUPPORT ;LEER         EQU $2B
	db PHYSICAL;BITE         EQU $2C
	db SUPPORT ;GROWL        EQU $2D
	db SUPPORT ;ROAR         EQU $2E
	db SUPPORT ;SING         EQU $2F
	db SUPPORT ;SUPERSONIC   EQU $30
	db SPECIAL ;SONICBOOM    EQU $31
	db SUPPORT ;DISABLE      EQU $32
	db SPECIAL ;ACID         EQU $33
	db SPECIAL ;EMBER        EQU $34
	db SPECIAL ;FLAMETHROWER EQU $35
	db SUPPORT ;MIST         EQU $36
	db SPECIAL ;WATER_GUN    EQU $37
	db SPECIAL ;HYDRO_PUMP   EQU $38
	db SPECIAL ;SURF         EQU $39
	db SPECIAL ;ICE_BEAM     EQU $3A
	db SPECIAL ;BLIZZARD     EQU $3B
	db SPECIAL ;PSYBEAM      EQU $3C
	db SPECIAL ;BUBBLEBEAM   EQU $3D
	db SPECIAL ;AURORA_BEAM  EQU $3E
	db SPECIAL ;HYPER_BEAM   EQU $3F
	db PHYSICAL;PECK         EQU $40
	db PHYSICAL;DRILL_PECK   EQU $41
	db PHYSICAL;SUBMISSION   EQU $42
	db PHYSICAL;LOW_KICK     EQU $43
	db PHYSICAL;COUNTER      EQU $44
	db PHYSICAL;SEISMIC_TOSS EQU $45
	db PHYSICAL;STRENGTH     EQU $46
	db SPECIAL ;ABSORB       EQU $47
	db SPECIAL ;MEGA_DRAIN   EQU $48
	db SUPPORT ;LEECH_SEED   EQU $49
	db SUPPORT ;GROWTH       EQU $4A
	db PHYSICAL;RAZOR_LEAF   EQU $4B
	db SPECIAL ;SOLARBEAM    EQU $4C
	db SUPPORT ;POISONPOWDER EQU $4D
	db SUPPORT ;STUN_SPORE   EQU $4E
	db SUPPORT ;SLEEP_POWDER EQU $4F
	db SPECIAL ;PETAL_DANCE  EQU $50
	db SUPPORT ;STRING_SHOT  EQU $51
	db SPECIAL ;DRAGON_RAGE  EQU $52
	db SPECIAL ;FIRE_SPIN    EQU $53
	db SPECIAL ;THUNDERSHOCK EQU $54
	db SPECIAL ;THUNDERBOLT  EQU $55
	db SUPPORT ;THUNDER_WAVE EQU $56
	db SPECIAL ;THUNDER      EQU $57
	db PHYSICAL;ROCK_THROW   EQU $58
	db PHYSICAL;EARTHQUAKE   EQU $59
	db PHYSICAL;FISSURE      EQU $5A
	db PHYSICAL;DIG          EQU $5B
	db SUPPORT ;TOXIC        EQU $5C
	db SPECIAL ;CONFUSION    EQU $5D
	db SPECIAL ;PSYCHIC_M    EQU $5E
	db SUPPORT ;HYPNOSIS     EQU $5F
	db SUPPORT ;MEDITATE     EQU $60
	db SUPPORT ;AGILITY      EQU $61
	db PHYSICAL;QUICK_ATTACK EQU $62
	db PHYSICAL;RAGE         EQU $63
	db SUPPORT ;TELEPORT     EQU $64
	db SPECIAL ;NIGHT_SHADE  EQU $65
	db SUPPORT ;MIMIC        EQU $66
	db SUPPORT ;SCREECH      EQU $67
	db SUPPORT ;DOUBLE_TEAM  EQU $68
	db SUPPORT ;RECOVER      EQU $69
	db SUPPORT ;HARDEN       EQU $6A
	db SUPPORT ;MINIMIZE     EQU $6B
	db SUPPORT ;SMOKESCREEN  EQU $6C
	db SUPPORT ;CONFUSE_RAY  EQU $6D
	db SUPPORT ;WITHDRAW     EQU $6E
	db SUPPORT ;DEFENSE_CURL EQU $6F
	db SUPPORT ;BARRIER      EQU $70
	db SUPPORT ;LIGHT_SCREEN EQU $71
	db SUPPORT ;HAZE         EQU $72
	db SUPPORT ;REFLECT      EQU $73
	db SUPPORT ;FOCUS_ENERGY EQU $74
	db PHYSICAL;BIDE         EQU $75
	db SUPPORT ;METRONOME    EQU $76
	db SUPPORT ;MIRROR_MOVE  EQU $77
	db PHYSICAL;SELFDESTRUCT EQU $78
	db PHYSICAL;EGG_BOMB     EQU $79
	db PHYSICAL;LICK         EQU $7A
	db SPECIAL ;SMOG         EQU $7B
	db SPECIAL ;SLUDGE       EQU $7C
	db PHYSICAL;BONE_CLUB    EQU $7D
	db SPECIAL ;FIRE_BLAST   EQU $7E
	db PHYSICAL;WATERFALL    EQU $7F
	db PHYSICAL;CLAMP        EQU $80
	db SPECIAL ;SWIFT        EQU $81
	db PHYSICAL;SKULL_BASH   EQU $82
	db PHYSICAL;SPIKE_CANNON EQU $83
	db PHYSICAL;CONSTRICT    EQU $84
	db SUPPORT ;AMNESIA      EQU $85
	db SUPPORT ;KINESIS      EQU $86
	db SUPPORT ;SOFTBOILED   EQU $87
	db PHYSICAL;HI_JUMP_KICK EQU $88
	db SUPPORT ;GLARE        EQU $89
	db SPECIAL ;DREAM_EATER  EQU $8A
	db SUPPORT ;POISON_GAS   EQU $8B
	db PHYSICAL;BARRAGE      EQU $8C
	db PHYSICAL;LEECH_LIFE   EQU $8D
	db SUPPORT ;LOVELY_KISS  EQU $8E
	db PHYSICAL;SKY_ATTACK   EQU $8F
	db SUPPORT ;TRANSFORM    EQU $90
	db SPECIAL ;BUBBLE       EQU $91
	db PHYSICAL;DIZZY_PUNCH  EQU $92
	db SUPPORT ;SPORE        EQU $93
	db SUPPORT ;FLASH        EQU $94
	db SPECIAL ;PSYWAVE      EQU $95
	db SUPPORT ;SPLASH       EQU $96
	db SUPPORT ;ACID_ARMOR   EQU $97
	db PHYSICAL;CRABHAMMER   EQU $98
	db PHYSICAL;EXPLOSION    EQU $99
	db PHYSICAL;FURY_SWIPES  EQU $9A
	db PHYSICAL;BONEMERANG   EQU $9B
	db SUPPORT ;REST         EQU $9C
	db PHYSICAL;ROCK_SLIDE   EQU $9D
	db PHYSICAL;HYPER_FANG   EQU $9E
	db SUPPORT ;HONE_CLAWS   EQU $9F
	db SUPPORT ;CONVERSION   EQU $A0
	db SPECIAL ;TRI_ATTACK   EQU $A1
	db PHYSICAL;SUPER_FANG   EQU $A2
	db PHYSICAL;SLASH        EQU $A3
	db SUPPORT ;SUBSTITUTE   EQU $A4
	db PHYSICAL;STRUGGLE     EQU $A5
;;;;;;;;;;;;;;;;;;	
; New Type Moves
;;;;;;;;;;;;;;;;;;	
;Steel
	db SPECIAL ;FLASH_CANNON EQU $A8
	db PHYSICAL;IRON_STRIKE  EQU $A9
	db PHYSICAL;METEOR_MASH  EQU $AA
;Dark
	db SPECIAL ;DARK_PULSE   EQU $AC

;Fairy
	db SPECIAL ;MOONBLAST    EQU $AF
	db SPECIAL ;DRAININGKISS EQU $B0
	db SUPPORT ;Moonlight
    
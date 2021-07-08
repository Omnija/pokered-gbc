DrawHP:
; Draws the HP bar in the stats screen
	call GetPredefRegisters
	ld a, $1
	jr DrawHP_

DrawHP2:
; Draws the HP bar in the party screen
	call GetPredefRegisters
	ld a, $2

DrawHP_:
	ld [wHPBarType], a
	push hl
	ld a, [wLoadedMonHP]
	ld b, a
	ld a, [wLoadedMonHP + 1]
	ld c, a
	or b
	jr nz, .nonzeroHP
	xor a
	ld c, a
	ld e, a
	ld a, $6
	ld d, a
	jp .drawHPBarAndPrintFraction
.nonzeroHP
	ld a, [wLoadedMonMaxHP]
	ld d, a
	ld a, [wLoadedMonMaxHP + 1]
	ld e, a
	predef HPBarLength
	ld a, $6
	ld d, a
	ld c, a
.drawHPBarAndPrintFraction
	pop hl
	push de
	push hl
	push hl
	call DrawHPBar
	pop hl
	ldh a, [hUILayoutFlags]
	bit 0, a
	jr z, .printFractionBelowBar
	ld bc, $9 ; right of bar
	jr .printFraction
.printFractionBelowBar
	ld bc, SCREEN_WIDTH + 1 ; below bar
.printFraction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Status Screen DVs - Joenote
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	add hl, bc
;	ld de, wLoadedMonHP
;	lb bc, 2, 3
;	call PrintNumber
;	ld a, "/"
;	ld [hli], a
;	ld de, wLoadedMonMaxHP
;	lb bc, 2, 3
;	call PrintNumber
;	pop hl
;	pop de
;	ret
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Status Screen DVs - Joenote
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	call DVParse
	call Joypad
	ld a, [hJoyHeld]
	bit 2, a
	jr z, .checkstart
	ld de, wLoadedMonHPExp
	lb bc, 2, 3 ; 2, 5
	jr .printnum
.checkstart	;print DVs if start is held
;	bit 3, a
	jr z, .doregular
;	ld de, wUnusedD726  
	lb bc, 1, 2
	jr .printnum
.doregular
	ld de, wLoadedMonHP
	lb bc, 2, 3
	call PrintNumber
	ld a, "/"
	ld [hli], a
	ld de, wLoadedMonMaxHP
	lb bc, 2, 3
	
.printnum
	call PrintNumber
	pop hl
	pop de
	ret


; Predef 0x37
StatusScreen:
	call LoadMonData
	ld a, [wMonDataLocation]
	cp BOX_DATA
	jr c, .DontRecalculate
; mon is in a box or daycare
	ld a, [wLoadedMonBoxLevel]
	ld [wLoadedMonLevel], a
	ld [wCurEnemyLVL], a
	ld hl, wLoadedMonHPExp - 1
	ld de, wLoadedMonStats
	ld b, $1
	call CalcStats ; Recalculate stats
.DontRecalculate
	ld hl, wd72c
	set 1, [hl]
	ld a, $33
	ldh [rNR50], a ; Reduce the volume
	call GBPalWhiteOutWithDelay3
	call ClearScreen
	call UpdateSprites
	call LoadHpBarAndStatusTilePatterns
	ld de, BattleHudTiles1  ; source
	ld hl, vChars2 tile $6d ; dest
	lb bc, BANK(BattleHudTiles1), 3
	call CopyVideoDataDouble ; ·│ :L and halfarrow line end
	ld de, BattleHudTiles2
	ld hl, vChars2 tile $78
	lb bc, BANK(BattleHudTiles2), 1
	call CopyVideoDataDouble ; │
	ld de, BattleHudTiles3
	ld hl, vChars2 tile $76
	lb bc, BANK(BattleHudTiles3), 2
	call CopyVideoDataDouble ; ─ ┘
	ld de, PTile
	ld hl, vChars2 tile $72
	lb bc, BANK(PTile), 1
	call CopyVideoDataDouble ; bold P (for PP)
	ldh a, [hTileAnimations]
	push af
	xor a
	ldh [hTileAnimations], a
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Changing Status Screen Design
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

IF GEN_2_GRAPHICS
	hlcoord 9, 0 ; 19, 3 ; No Position
	lb bc, 2, 8 ; 2, 8
ELSE
	hlcoord 9,0 ; 19, 1
	lb bc, 6, 10 ; 6, 10
ENDC
;	call DrawLineBox ; Draws the box around name, HP and status
;	hlcoord 2, 7
;	nop
	ld [hl], "<DOT>"
	dec hl
	ld [hl], "№"
	hlcoord 8, 4 ; 19, 9 ; IDNoText Position
	lb bc, 8, 6 ; 8, 6
;	call DrawLineBox ; Draws the box around types, ID No. and OT
;	hlcoord 10, 9
	ld de, IDNoText
;	ld de, Type1Text
	call PlaceString ; "TYPE1/ replaced with IDNoText/"
	hlcoord 0, 7 ; 11, 3
	
	ld a, $e3 ; horizontal dash tile ($e3 seperation line)
	ld c, SCREEN_WIDTH
.dashes
	ld [hli], a
	dec c
	jr nz, .dashes

	coord hl, 1, 8 ; Exp bar Position
	
	predef DrawHP2
;	predef DrawHP
	
	ld hl, wStatusScreenHPBarColor
	call GetHealthBarColor
	
;;;;;;;;;;;;;;;;
; Adding Shiny
;;;;;;;;;;;;;;;;
	ld de, wLoadedMonDVs
	callfar IsMonShiny
	ld hl, wShinyMonFlag
	jr nz, .shiny
	res 0, [hl]
	jr .setPal
.shiny
	set 0, [hl]
.setPal

	ld b, SET_PAL_STATUS_SCREEN
	call StatusScreenHook ; HAX: Draws EXP bar if GEN_2_GRAPHICS is set
	hlcoord 7, 11 ; 16, 6
	ld de, wLoadedMonStatus
	call PrintStatusCondition
	jr nz, .StatusWritten
	hlcoord 7, 11 ; 16, 6
	ld de, OKText
	call PlaceString ; "OK"
.StatusWritten
	hlcoord 0, 11 ; 9, 6
	ld de, StatusText
	call PlaceString ; "STATUS/"
	hlcoord 14, 0 ; 14, 2
	call PrintLevel ; Pokémon level
	ld a, [wMonHIndex]
	ld [wd11e], a
;	ld [wd0b5], a
	predef IndexToPokedex
	hlcoord 10, 0 ; 3, 7
	ld de, wd11e
	lb bc, LEADING_ZEROES | 1, 3
	call PrintNumber ; Pokémon no.
;	hlcoord 11, 10
;	predef PrintMonType
	ld hl, NamePointers2
	call .GetStringPointer
	ld d, h
	ld e, l
	hlcoord 8, 2 ; 9, 1
	call PlaceString ; Pokémon name
	ld hl, OTPointers
	call .GetStringPointer
	ld d, h
	ld e, l
	hlcoord 11, 6 ; 12, 16
	call PlaceString ; OT
	hlcoord 11, 4 ; 12, 14
	ld de, wLoadedMonOTID
	lb bc, LEADING_ZEROES | 2, 5
	call PrintNumber ; ID Number
	ld d, $0
	call PrintStatsBox

;;;;;;;;;;;;;;;;;;;;;;;
; Adding Shiny/Gender
;;;;;;;;;;;;;;;;;;;;;;;	
	call PrintMonGender_StatusScreen
	call PrintMonShiny_StatusScreen
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Changing Status Screen Design
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	coord hl, 0, 13
	ld de, StatusScreenExpText
	call PlaceString ; "EXP POINTS" "LEVEL UP"
	ld a, [wLoadedMonLevel]
	push af
	cp MAX_LEVEL
	jr z, .Level100
	inc a
	ld [wLoadedMonLevel], a ; Increase temporarily if not 100
.Level100
	coord hl, 5, 16
	ld [hl], "<to>"
	inc hl
	inc hl
	call PrintLevel
	pop af
	ld [wLoadedMonLevel], a
	call PrintEXPBar_StatusScreen
	ld de, wLoadedMonExp
	coord hl, 2, 14
	lb bc, 3, 7
	call PrintNumber ; exp
	call CalcExpToLevelUp
	ld de, wLoadedMonExp
	coord hl, 0, 16
	lb bc, 3, 5
	call PrintNumber ; exp needed to level up
;	hlcoord 9, 0
;	call StatusScreen_ClearName
;	hlcoord 9, 1
;	call StatusScreen_ClearName

	call Delay3
	call GBPalNormal
	hlcoord 0, 0 ; 1, 0  [Pokemon Pic Location]
	call LoadFlippedFrontSpriteByMonIndex ; draw Pokémon picture
	ld a, [wcf91]
	call PlayCry ; play Pokémon cry
	call WaitForTextScrollButtonPress ; wait for button
	pop af
	ldh [hTileAnimations], a
	ret

.GetStringPointer
	ld a, [wMonDataLocation]
	add a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wMonDataLocation]
	cp DAYCARE_DATA
	ret z
	ld a, [wWhichPokemon]
	jp SkipFixedLengthTextEntries

OTPointers:
	dw wPartyMonOT
	dw wEnemyMonOT
	dw wBoxMonOT
	dw wDayCareMonOT

NamePointers2:
	dw wPartyMonNicks
	dw wEnemyMonNicks
	dw wBoxMonNicks
	dw wDayCareMonName


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Changing Status Screen Design
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
TypesText:
	db "TYPE/@"

;Type1Text:
;	db   "TYPE1/"
;	next ""
	; fallthrough
;Type2Text:
;	db   "TYPE2/@"
;	next ""
	; fallthrough
IDNoText:
;	db   "ID/"
	db   "<ID>№/"
	next "OT/@"
;	next ""
	; fallthrough
;OTText:
;	db   "OT/"
;	next "@"

StatusText:
	db "STATUS/@"

OKText:
	db "OK@"

;;;;;;;;;;;;;;;;;
; Adding Gender
;;;;;;;;;;;;;;;;;
PrintMonGender_StatusScreen:
	ld a, [wLoadedMonSpecies]
	ld [wGenderTemp], a
	ld de, wLoadedMonDVs
	callfar GetMonGender
	ld a, [wGenderTemp]
	and a
	ret z
	dec a
	ld a, "♂"
	jr z, .ok
	ld a, "♀"
.ok
	coord hl, 18, 0 ; 17,  2
	ld [hl], a
	ret

;;;;;;;;;;;;;;;;
; Adding Shiny
;;;;;;;;;;;;;;;;	
PrintMonShiny_StatusScreen:
	ld de, wLoadedMonDVs
	callfar IsMonShiny
	ret z
	coord hl, 19, 0 ; 18, 2
	ld [hl], "<SHINY>"
	ret

; Draws a line starting from hl high b and wide c
DrawLineBox:
	ld de, SCREEN_WIDTH ; New line
.PrintVerticalLine
	ld [hl], $78 ; │
	add hl, de
	dec b
	jr nz, .PrintVerticalLine
	ld [hl], $77 ; ┘
	dec hl
.PrintHorizLine
	ld [hl], $76 ; ─
	dec hl
	dec c
	jr nz, .PrintHorizLine
	ld [hl], $6f ; ← (halfarrow ending)
	ret

PTile: INCBIN "gfx/font/P.1bpp"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Changing Status Screen Design
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PrintEXPBar_StatusScreen:
; Not using due to covering some font
;IF GEN_2_GRAPHICS
;	call StatusScreen2Hook

;ELSE
;	hlcoord 9, 17 ; 19, 3
;	ld [hl], $78
;ENDC

; Exp bar corners
	coord hl, 0, 17
	ld [hl], $6F ; exp bar left end tile
	coord hl, 9, 17
	ld [hl], $6c     ; exp bar right end tile

	ret

PrintStatsBox:
	ld a, d
	and a ; a is 0 from the status screen
	jr nz, .DifferentBox
	hlcoord 10, 8 ; 0, 8
	ld b, 8
	ld c, 8
	call TextBoxBorder ; Draws the box
	hlcoord 11, 9 ; Start printing stats from here ; 1, 9
	ld bc, $19 ; Number offset
	jr .PrintStats
.DifferentBox
	hlcoord 9, 2 ; Level up box position
	ld b, 8
	ld c, 9
	call TextBoxBorder
	hlcoord 11, 3 ; Level up stats position
	ld bc, $18
.PrintStats
	push bc
	push hl
	ld de, StatsText
	call PlaceString
	pop hl
	pop bc
	add hl, bc

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Status Screen DVs - Joenote
; print stat exp if select is held
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	call Joypad
	ld a, [hJoyHeld]
	bit 2, a
	jr z, .checkstart


	jr z, .checkstart
	ld de, wLoadedMonAttackExp
	lb bc, 2, 3
	call PrintStat
	ld de, wLoadedMonDefenseExp
	call PrintStat
	ld de, wLoadedMonSpeedExp
	call PrintStat
	ld de, wLoadedMonSpecialExp	
	jp PrintNumber
	
;	ld de, wLoadedMonAttack
;	lb bc, 2, 3
;	call PrintStat
;	ld de, wLoadedMonDefense
;	call PrintStat
;	ld de, wLoadedMonSpeed
;	call PrintStat
;	ld de, wLoadedMonSpecial
;	jp PrintNumber
	
.checkstart	;joenote - print DVs if start is held
	bit 3, a
	jr z, .doregular
	ld de, wTempMonDVs
	lb bc, 1, 2
	call PrintStat
	ld de, wTempMonDVs + 1
	call PrintStat
	ld de, wTempMonDVs + 2
	call PrintStat
	ld de, wTempMonDVs + 3
	jp PrintNumber
.doregular
	ld de, wLoadedMonAttack
	lb bc, 2, 3
	call PrintStat
	ld de, wLoadedMonDefense
	call PrintStat
	ld de, wLoadedMonSpeed
	call PrintStat
	ld de, wLoadedMonSpecial	
	jp PrintNumber
	
PrintStat:
	push hl
	call PrintNumber
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	ret

StatsText:
	db   "ATTACK"
	next "DEFENSE"
	next "SPEED"
	next "SPECIAL@"

StatusScreen2:
	ldh a, [hTileAnimations]
	push af
	xor a
	ldh [hTileAnimations], a
	ldh [hAutoBGTransferEnabled], a
	ld bc, NUM_MOVES + 1
	ld hl, wMoves
	call FillMemory
	ld hl, wLoadedMonMoves
	ld de, wMoves
	ld bc, NUM_MOVES
	call CopyData
	callfar FormatMovesString
	hlcoord 8, 2 ; 9, 2
	lb bc, 5, 10
	call ClearScreenArea ; Clear under name
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Changing Status Screen Design
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;IF GEN_2_GRAPHICS
;	call StatusScreen2Hook
;	nop
;	nop
;ELSE
;	hlcoord 9, 17 ; 19, 3
;	ld [hl], $78
;ENDC

	coord hl, 8, 4
	ld de, TypesText
	call PlaceString ; "TYPES/"

	hlcoord 0, 8
	ld b, 8
	ld c, 18
	call TextBoxBorder ; Draw move container
	hlcoord 2, 9
	ld de, wMovesString
	call PlaceString ; Print moves
	ld a, [wNumMovesMinusOne]
	inc a
	ld c, a
	ld a, $4
	sub c
	ld b, a ; Number of moves ?
	hlcoord 11, 10
	ld de, SCREEN_WIDTH * 2
	ld a, "<BOLD_P>"
	call StatusScreen_PrintPP ; Print "PP"
	ld a, b
	and a
	jr z, .InitPP
	ld c, a
	ld a, "-"
	call StatusScreen_PrintPP ; Fill the rest with --
.InitPP
	ld hl, wLoadedMonMoves
	decoord 14, 10
	ld b, 0
.PrintPP
	ld a, [hli]
	and a
	jr z, .PPDone
	push bc
	push hl
	push de
	ld hl, wCurrentMenuItem
	ld a, [hl]
	push af
	ld a, b
	ld [hl], a
	push hl
	callfar GetMaxPP
	pop hl
	pop af
	ld [hl], a
	pop de
	pop hl
	push hl
	ld bc, wPartyMon1PP - wPartyMon1Moves - 1
	add hl, bc
	ld a, [hl]
	and $3f
	ld [wStatusScreenCurrentPP], a
	ld h, d
	ld l, e
	push hl
	ld de, wStatusScreenCurrentPP
	lb bc, 1, 2
	call PrintNumber
	ld a, "/"
	ld [hli], a
	ld de, wMaxPP
	lb bc, 1, 2
	call PrintNumber
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	ld d, h
	ld e, l
	pop hl
	pop bc
	inc b
	ld a, b
	cp $4
	jr nz, .PrintPP
.PPDone
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Changing Status Screen Design
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	hlcoord 9, 3
;	ld de, StatusScreenExpText
;	call PlaceString
;	ld a, [wLoadedMonLevel]
;	push af
;	cp MAX_LEVEL
;	jr z, .Level100
;	inc a
;	ld [wLoadedMonLevel], a ; Increase temporarily if not 100
;.Level100
;	hlcoord 14, 6
;	ld [hl], "<to>"
;	inc hl
;	inc hl
;	call PrintLevel
;	pop af
;	ld [wLoadedMonLevel], a
;	ld de, wLoadedMonExp
;	hlcoord 12, 4
;	lb bc, 3, 7
;	call PrintNumber ; exp
;	call CalcExpToLevelUp
;	ld de, wLoadedMonExp
;	hlcoord 7, 6
;	lb bc, 3, 7
;	call PrintNumber ; exp needed to level up
;	hlcoord 9, 0
;	call StatusScreen_ClearName
;	hlcoord 9, 1
;	call StatusScreen_ClearName
	
	
	ld a, [wMonHIndex]
	ld [wd0b5], a
	ld [wd11e], a
	call GetMonName
	hlcoord 8, 2 ; 9, 1
	call PlaceString
	
	coord hl, 9, 5 ; Types Text Position
	predef PrintMonType
	
	ld a, $1
	ldh [hAutoBGTransferEnabled], a
	call Delay3
	call WaitForTextScrollButtonPress ; wait for button
	pop af
	ldh [hTileAnimations], a
	ld hl, wd72c
	res 1, [hl]
	ld a, $77
	ldh [rNR50], a
	call GBPalWhiteOut
	jp ClearScreen

CalcExpToLevelUp:
	ld a, [wLoadedMonLevel]
	cp MAX_LEVEL
	jr z, .atMaxLevel
	inc a
	ld d, a
	callfar CalcExperience
	ld hl, wLoadedMonExp + 2
	ldh a, [hExperience + 2]
	sub [hl]
	ld [hld], a
	ldh a, [hExperience + 1]
	sbc [hl]
	ld [hld], a
	ldh a, [hExperience]
	sbc [hl]
	ld [hld], a
	ret
.atMaxLevel
	ld hl, wLoadedMonExp
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

StatusScreenExpText:
	db   "EXP POINTS"
	next "LEVEL UP@"

StatusScreen_ClearName:
	ld bc, 10
	ld a, " "
	jp FillMemory

StatusScreen_PrintPP:
; print PP or -- c times, going down two rows each time
	ld [hli], a
	ld [hld], a
	add hl, de
	dec c
	jr nz, StatusScreen_PrintPP
	ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Status Screen DVs - Joenote
; DVs Score
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DVParse:
	push hl
	push bc
	ld hl, wTempMonDVs
	ld b, $00

	ld a, [wLoadedMonDVs]	;get attack dv
	swap a
	and $0F
	ld [hl], a
	inc hl
	and $01
	sla a
	sla a
	sla a
	or b
	ld b, a
	
	
	ld a, [wLoadedMonDVs]	;get defense dv
	and $0F
	ld [hl], a
	inc hl
	and $01
	sla a
	sla a
	or b
	ld b, a
	
	ld a, [wLoadedMonDVs + 1]	;get speed dv
	swap a
	and $0F
	ld [hl], a
	inc hl
	and $01
	sla a
	or b
	ld b, a
	
	ld a, [wLoadedMonDVs + 1]	;get special dv
	and $0F
	ld [hl], a
	inc hl
	and $01
	or b
	ld b, a

	ld [hl], b	;load hp dv
	
	pop bc
	pop hl
	ret
	
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Dex Shiny Colours - Joenote
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ShinyDisplayScreen:
	ld hl, wShinyMonFlag
;	res 1, [hl]
	set 0, [hl]
	ret
	
ShinyDisableScreen:
	ld hl, wShinyMonFlag
	res 0, [hl]
;	set 1, [hl]
	ret

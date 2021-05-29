;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Field Moves - Joenote
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CheckForSmartHMuse::	
	farcall GetTileAndCoordsInFrontOfPlayer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding HM Moves - Joenote
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;check for cut
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	ld a, [wObtainedBadges]
	bit 1, a ; does the player have the Cascade Badge?
	jr z, .nocut
	;does a party 'mon have CUT?
	ld c, CUT
	call PartyMoveTest
	jr z, .nocut
	;which tileset is being used?
	ld a, [wCurMapTileset]
	and a ; OVERWORLD
	jr z, .overworld
	;check gym tileset
	cp GYM
	jr nz, .nocut
	ld a, [wTileInFrontOfPlayer]
	cp $50 ; gym cuttable tree
	jr nz, .nocut
	jr .canCut
.overworld
	dec a
	ld a, [wTileInFrontOfPlayer]
	cp $3d ; cuttable tree
	jr z, .canCut
	cp $52 ; grass
	jr nz, .nocut
.canCut
	ld [wCutTile], a
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	farcall InitCutAnimOAM
	ld de, CutTreeBlockSwaps
	farcall ReplaceTreeTileBlock
	farcall RedrawMapView
	farcall AnimCut
	ld a, $1
	ld [wUpdateSpritesEnabled], a
	ld a, SFX_CUT
	call PlaySound
	ld a, $90
	ld [hWY], a
	call UpdateSprites
	farcall RedrawMapView
	jp .return
.nocut
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;check for surfing
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	ld a, [wObtainedBadges]
	bit 4, a ; does the player have the Soul Badge?
	jp z, .nosurf
	ld a, [wWalkBikeSurfState]
	ld [wWalkBikeSurfStateCopy], a
	cp 2 ; is the player already surfing?
	jp z, .nosurf	
	;surfing not allowed if forced to ride bike
	ld a, [wd732]
	bit 5, a
	jr nz, .nosurf
	;load a 1 into wActionResultOrTookBattleTurn as a marker that we are checking surf from this function
	ld a, $01  
	ld [wActionResultOrTookBattleTurn], a
	farcall IsSurfingAllowed
	xor a
	ld [wActionResultOrTookBattleTurn], a
	;now check bit to see of surfing allowed
	ld hl, wd728
	bit 1, [hl]
	res 1, [hl]
	jp z, .nosurf
	farcall IsNextTileShoreOrWater	;unsets carry if player is facing water or shore
	jr c, .nosurf
	ld hl, TilePairCollisionsWater
	call CheckForTilePairCollisions
	jr c, .nosurf
	;is the surfboard in the bag?
	ld b, SURFBOARD
	call IsItemInBag
	jr nz, .beginsurfing
	;check if a party member has surf
	ld c, SURF
	call PartyMoveTest
	jp z, .nosurf
.beginsurfing
	;we can now initiate surfing
	ld hl, wd730
	set 7, [hl]
	ld a, 2
	ld [wWalkBikeSurfState], a ; change player state to surfing
	;update sprites
	call LoadPlayerSpriteGraphics
	call PlayDefaultMusic ; play surfing music
	;move player forward
	ld a, [wPlayerDirection] ; direction the player is going
	bit PLAYER_DIR_BIT_UP, a
	ld b, D_UP
	jr nz, .storeSimulatedButtonPress
	bit PLAYER_DIR_BIT_DOWN, a
	ld b, D_DOWN
	jr nz, .storeSimulatedButtonPress
	bit PLAYER_DIR_BIT_LEFT, a
	ld b, D_LEFT
	jr nz, .storeSimulatedButtonPress
	ld b, D_RIGHT
.storeSimulatedButtonPress
	ld a, b
	ld [wSimulatedJoypadStatesEnd], a
	ld a, 1
	ld [wSimulatedJoypadStatesIndex], a
	jp .return
.nosurf
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;check for flash
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	ld a, [wObtainedBadges]
	bit 0, a ; does the player have the Boulder Badge?
	jr z, .noflash
	;check if the map pal offset is not zero
	ld a, [wMapPalOffset]
	and a 
	jr z, .noflash
	;check if a party member has strength
	ld c, FLASH
	call PartyMoveTest
	jr z, .noflash
	;restore the map pal offset to brighten it up
	xor a
	ld [wMapPalOffset], a
	jp .return
.noflash

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;check for strength
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	ld a, [wObtainedBadges]
	bit 3, a ; does the player have the Rainbow Badge?
	jr z, .nostrength
	;check if a party member has strength
	ld c, STRENGTH
	call PartyMoveTest
	jr z, .nostrength
	;set the usingStrength bit
	ld a, [wd728]
	set 0, a
	ld [wd728], a
	jp .return
.nostrength
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.return
	ret z
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
;Check if any pokemon in the party has a certain move
;move ID should be in 'c'
;set zero flag if move not found
;clear zero flag if move found
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PartyMoveTest:
	push hl
	push bc
	;;;;;
	ld hl, wPartyMon1Moves
	ld b, NUM_MOVES + 1
	call MoveTestLoop
	jr nz, .return_1
	;;;;;
	ld a, [wPartyCount]
	cp 2
	jr c, .return_0
	ld hl, wPartyMon2Moves
	ld b, NUM_MOVES + 1
	call MoveTestLoop
	jr nz, .return_1
	;;;;;
	ld a, [wPartyCount]
	cp 3
	jr c, .return_0
	ld hl, wPartyMon3Moves
	ld b, NUM_MOVES + 1
	call MoveTestLoop
	jr nz, .return_1
	;;;;;
	ld a, [wPartyCount]
	cp 4
	jr c, .return_0
	ld hl, wPartyMon4Moves
	ld b, NUM_MOVES + 1
	call MoveTestLoop
	jr nz, .return_1
	;;;;;
	ld a, [wPartyCount]
	cp 5
	jr c, .return_0
	ld hl, wPartyMon5Moves
	ld b, NUM_MOVES + 1
	call MoveTestLoop
	jr nz, .return_1
	;;;;;
	ld a, [wPartyCount]
	cp 6
	jr c, .return_0
	ld hl, wPartyMon6Moves
	ld b, NUM_MOVES + 1
	call MoveTestLoop
	jr nz, .return_1
.return_0
	xor a
.return_1
	pop bc
	pop hl
	ret
	
MoveTestLoop:
	dec b
	jr z, .return
	ld a, [hli]
	cp c
	jr nz, MoveTestLoop
	inc b
.return
	ret

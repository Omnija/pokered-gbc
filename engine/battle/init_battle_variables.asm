InitBattleVariables: ; 525af (14:65af)
	ld a, [hTilesetType]
	ld [wSavedTilesetType], a
	xor a
	ld [wActionResultOrTookBattleTurn], a
	ld [wBattleResult], a
	ld hl, wPartyAndBillsPCSavedMenuItem
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [wListScrollOffset], a
	ld [wCriticalHitOrOHKO], a
	ld [wBattleMonSpecies], a
	ld [wPartyGainExpFlags], a
	ld [wPlayerMonNumber], a
	ld [wEscapedFromBattle], a
	ld [wMapPalOffset], a
	ld hl, wPlayerHPBarColor
	ld [hli], a ; wPlayerHPBarColor
	ld [hl], a ; wEnemyHPBarColor
	ld hl, wCanEvolveFlags
	ld b, $3c
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	inc a ; POUND
	ld [wTestBattlePlayerSelectedMove], a
	ld a, [W_CURMAP]
	cp SAFARI_ZONE_EAST
	jr c, .notSafariBattle
	cp SAFARI_ZONE_REST_HOUSE_1
	jr nc, .notSafariBattle
	ld a, $2 ; safari battle
	ld [W_BATTLETYPE], a
.notSafariBattle
	jpab PlayBattleMusic
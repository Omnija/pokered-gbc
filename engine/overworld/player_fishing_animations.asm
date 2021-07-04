;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Relocation flying animations to
; engine/overworld/player_flying_animations.asm
; Bank "Player Features"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

FishingAnim:
	ld c, 10
	call DelayFrames
	ld hl, wd736
	set 6, [hl] ; reserve the last 4 OAM entries
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Female Player - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 	ld a, [wPlayerGender] ; added gender check
  	and a      ; added gender check
    jr z, .BoySpriteLoad
    ld de, GreenSprite
  	ld hl, vNPCSprites
    ld bc, (BANK(GreenSprite) << 8) + $0c
    jr .KeepLoadingSprites
.BoySpriteLoad
	
	ld de, RedSprite
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Female Player - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ld hl, vNPCSprites
    lb bc, BANK(RedSprite), $c
;	ld hl, vNPCSprites tile $00
;	lb bc, BANK(RedSprite), 12
.KeepLoadingSprites
	call CopyVideoData
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Female Player - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
   	ld a, [wPlayerGender] ; added gender check
   	and a      ; added gender check
   	jr z, .BoyTiles ; skip loading Green's stuff if you're Red
    ld a, $4
    ld hl, GreenFishingTiles
   	jr .ContinueRoutine ; go back to main routine after loading Green's stuff
.BoyTiles ; alternately, load Red's stuff
	
	ld a, $4
	ld hl, RedFishingTiles
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Female Player - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.ContinueRoutine
	
	call LoadAnimSpriteGfx
	ld a, [wSpritePlayerStateData1ImageIndex]
	ld c, a
	ld b, $0
	ld hl, FishingRodOAM
	add hl, bc
	ld de, wOAMBuffer + $9c
	ld bc, $4
	call CopyData
	ld c, 100
	call DelayFrames
	ld a, [wRodResponse]
	and a
	ld hl, NoNibbleText
	jr z, .done
	cp $2
	ld hl, NothingHereText
	jr z, .done

; there was a bite

; shake the player's sprite vertically
	ld b, 10
.loop
	ld hl, wSpritePlayerStateData1YPixels
	call .ShakePlayerSprite
	ld hl, wOAMBuffer + $9c
	call .ShakePlayerSprite
	call Delay3
	dec b
	jr nz, .loop

; If the player is facing up, hide the fishing rod so it doesn't overlap with
; the exclamation bubble that will be shown next.
	ld a, [wSpritePlayerStateData1ImageIndex] ; (image index is locked to standing images)
	cp SPRITE_FACING_UP
	jr nz, .skipHidingFishingRod
	ld a, $a0
	ld [wOAMBuffer + $9c], a

.skipHidingFishingRod
	ld hl, wEmotionBubbleSpriteIndex
	xor a
	ld [hli], a ; player's sprite
	ld [hl], a ; EXCLAMATION_BUBBLE
	predef EmotionBubble

; If the player is facing up, unhide the fishing rod.
	ld a, [wSpritePlayerStateData1ImageIndex] ; (image index is locked to standing images)
	cp SPRITE_FACING_UP
	jr nz, .skipUnhidingFishingRod
	ld a, $44
	ld [wOAMBuffer + $9c], a

.skipUnhidingFishingRod
	ld hl, ItsABiteText

.done
	call PrintText
	ld hl, wd736
	res 6, [hl] ; unreserve the last 4 OAM entries
	call LoadFontTilePatterns
	ret

.ShakePlayerSprite
	ld a, [hl]
	xor $1
	ld [hl], a
	ret

NoNibbleText:
	text_far _NoNibbleText
	text_end

NothingHereText:
	text_far _NothingHereText
	text_end

ItsABiteText:
	text_far _ItsABiteText
	text_end

FishingRodOAM:
; specifies how the fishing rod should be drawn on the screen
	dbsprite  9, 11,  4,  3, $fd, 0         ; down
	dbsprite  9,  8,  4,  4, $fd, 0         ; up
	dbsprite  8, 10,  0,  0, $fe, 0         ; left
	dbsprite 11, 10,  0,  0, $fe, OAM_HFLIP ; right

fishing_gfx: MACRO
	dw \1
	db \2
	db BANK(\1)
	dw vNPCSprites tile \3
ENDM

RedFishingTiles:
	fishing_gfx RedFishingTilesFront, 2, $02
	fishing_gfx RedFishingTilesBack,  2, $06
	fishing_gfx RedFishingTilesSide,  2, $0a
	fishing_gfx RedFishingRodTiles,   3, $fd
	
GreenFishingTiles:
	fishing_gfx GreenFishingTilesFront, 2, $02
	fishing_gfx GreenFishingTilesBack,  2, $06
	fishing_gfx GreenFishingTilesSide,  2, $0a
	fishing_gfx RedFishingRodTiles, 	3, $fd

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Relocation flying animations to
; engine/overworld/player_flying_animations.asm
; Bank "Player Features"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

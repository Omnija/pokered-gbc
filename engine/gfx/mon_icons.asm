AnimatePartyMon_ForceSpeed1:
	xor a
	ld [wCurrentMenuItem], a
	ld b, a
	inc a
	jr GetAnimationSpeed

; wPartyMenuHPBarColors contains the party mon's health bar colors
; 0: green
; 1: yellow
; 2: red
AnimatePartyMon::
	ld hl, wPartyMenuHPBarColors
	ld a, [wCurrentMenuItem]
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]

GetAnimationSpeed:
	ld c, a
	ld hl, PartyMonSpeeds
	add hl, bc
	ld a, [wOnSGB]
	xor $1
	add [hl]
	ld c, a
	add a
	ld b, a
	ld a, [wAnimCounter]
	and a
	jr z, .resetSprites
	cp c
	jr z, .animateSprite
.incTimer
	inc a
	cp b
	jr nz, .skipResetTimer
	xor a ; reset timer
.skipResetTimer
	ld [wAnimCounter], a
	jp DelayFrame
.resetSprites
	push bc
	ld hl, wMonPartySpritesSavedOAM
	ld de, wOAMBuffer
	ld bc, $60
	call CopyData
	pop bc
	xor a
	jr .incTimer
.animateSprite
	push bc
	ld hl, wOAMBuffer + $02 ; OAM tile id
	ld bc, $10
	ld a, [wCurrentMenuItem]
	call AddNTimes

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Party Menu ICONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
	ld a, [hl] ; contains tile number
	bit 2, a
	jr z, .firstFrame
	sub 8
.firstFrame
	add 4
	ld bc, 4
rept 3
	ld [hl], a
	add hl, bc
	inc a
endr
	ld [hl], a
.done
	pop bc
	ld a, c
	jr .incTimer
	
;	ld c, ICONOFFSET
;	ld a, [hl]
;	cp ICON_BALL << 2
;	jr z, .editCoords
;	cp ICON_HELIX << 2
;	jr nz, .editTileIDS
; ICON_BALL and ICON_HELIX only shake up and down
;.editCoords
;	dec hl
;	dec hl ; dec hl to the OAM y coord
;	ld c, $1 ; amount to increase the y coord by
; otherwise, load a second sprite frame
;.editTileIDS
;	ld b, $4
;	ld de, $4
;.loop
;	ld a, [hl]
;	add c
;	ld [hl], a
;	add hl, de
;	dec b
;	jr nz, .loop
;	pop bc
;	ld a, c
;	jr .incTimer

; Party mon animations cycle between 2 frames.
; The members of the PartyMonSpeeds array specify the number of V-blanks
; that each frame lasts for green HP, yellow HP, and red HP in order.
; On the naming screen, the yellow HP speed is always used.
PartyMonSpeeds:
	db 5, 16, 32

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Party Menu ICONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LoadMonPartySpriteGfx: ; nickname screen, etc
	call DisableLCD
	ld a, [wcf91] ; contains mon id
	ld [wd11e], a
	push de
	predef IndexToPokedex
	pop de
	ld a, [wd11e]
	dec a
	ld hl, MonPartyData
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl] ; read the icon id
	ld hl, MonIcons
	ld bc, $80
	call AddNTimes ; hl now contains pointer to mon icon
	ld a, BANK(MonIcons)
	ld de, vSprites
	call FarCopyData2
	ld de, vSprites + $38 * $10
	ld hl, TradeBubbleIconGFX
	ld bc, $40
	call CopyData
	ld de, vSprites + $78 * $10
	ld hl, TradeBubbleIconGFX + $40
	ld bc, $40
	call CopyData
	jp EnableLCD
	
;LoadMonPartySpriteGfx:
; Load mon party sprite tile patterns into VRAM during V-blank.
;	ld hl, MonPartySpritePointers
;	ld a, $1c

LoadAnimSpriteGfx:
; Load animated sprite tile patterns into VRAM during V-blank. hl is the address
; of an array of structures that contain arguments for CopyVideoData and a is
; the number of structures in the array.
	ld bc, $0
.loop
	push af
	push bc
	push hl
	add hl, bc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call CopyVideoData
	pop hl
	pop bc
	ld a, $6
	add c
	ld c, a
	pop af
	dec a
	jr nz, .loop
	ret
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Party Menu ICONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LoadMonPartySpriteGfxWithLCDDisabled: ; party menu
; Load mon party sprite tile patterns into VRAM immediately by disabling the
; LCD.
	call DisableLCD
	xor a
	push af
	ld hl, wPartySpecies
.loop
	; load the correct mon icon into each subsequent OAM slot
	ld a, [hli] ; contains mon id
	push hl
	ld [wd11e], a
	push de
	predef IndexToPokedex
	pop de
	ld a, [wd11e]
	dec a
	ld hl, MonPartyData
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl] ; read the icon id
	ld hl, MonIcons
	ld bc, $80
	call AddNTimes
	ld d, h
	ld e, l
	pop hl
	pop af
	push af
	push hl
	ld h, d
	ld l, e
	push hl
	ld hl, vSprites
	ld bc, $80
	call AddNTimes
	ld d, h
	ld e, l
	ld a, BANK(MonIcons)
	ld bc, $80
	pop hl
	call FarCopyData2
	pop hl
	ld a, [wPartyCount]
	ld b, a
	pop af
	inc a
	cp b
	jr z, .done
	push af
	jr .loop
.done
	jp EnableLCD


;LoadMonPartySpriteGfxWithLCDDisabled:
; Load mon party sprite tile patterns into VRAM immediately by disabling the
; LCD.
;	call DisableLCD
;	ld hl, MonPartySpritePointers
;	ld a, $1c
;	ld bc, $0
;.loop
;	push af
;	push bc
;	push hl
;	add hl, bc
;	ld a, [hli]
;	ld e, a
;	ld a, [hli]
;	ld d, a
;	push de
;	ld a, [hli]
;	ld c, a
;	swap c
;	ld b, $0
;	ld a, [hli]
;	ld e, [hl]
;	inc hl
;	ld d, [hl]
;	pop hl
;	call FarCopyData2
;	pop hl
;	pop bc
;	ld a, $6
;	add c
;	ld c, a
;	pop af
;	dec a
;	jr nz, .loop
;	jp EnableLCD

;INCLUDE "data/icon_pointers.asm"

WriteMonPartySpriteOAMByPartyIndex:
; Write OAM blocks for the party mon in [hPartyMonIndex].
	push hl
	push de
	push bc
	ldh a, [hPartyMonIndex]
	ld hl, wPartySpecies
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl]
	call GetPartyMonSpriteID
	ld [wOAMBaseTile], a
	call WriteMonPartySpriteOAM
	pop bc
	pop de
	pop hl
	ret

WriteMonPartySpriteOAMBySpecies:
; Write OAM blocks for the party sprite of the species in
; [wMonPartySpriteSpecies].
	xor a
	ldh [hPartyMonIndex], a
	ld a, [wMonPartySpriteSpecies]
	call GetPartyMonSpriteID
	ld [wOAMBaseTile], a
	jr WriteMonPartySpriteOAM


;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Disabled Unused Function
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;UnusedPartyMonSpriteFunction:
; This function is unused and doesn't appear to do anything useful. It looks
; like it may have been intended to load the tile patterns and OAM data for
; the mon party sprite associated with the species in [wcf91].
; However, its calculations are off and it loads garbage data.
;	ld a, [wcf91]
;	call GetPartyMonSpriteID
;	push af
;	ld hl, vSprites tile $00
;	call .LoadTilePatterns
;	pop af
;	add $54
;	ld hl, vSprites tile $04
;	call .LoadTilePatterns
;	xor a
;	ld [wMonPartySpriteSpecies], a
;	jr WriteMonPartySpriteOAMBySpecies

;.LoadTilePatterns
;	push hl
;	add a
;	ld c, a
;	ld b, 0
;	ld hl, MonPartySpritePointers
;	add hl, bc
;	add hl, bc
;	add hl, bc
;	ld a, [hli]
;	ld e, a
;	ld a, [hli]
;	ld d, a
;	ld a, [hli]
;	ld c, a
;	ld a, [hli]
;	ld b, a
;	pop hl
;	jp CopyVideoData


;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Party Menu ICONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
WriteMonPartySpriteOAM:
	push af
	ld c, $10
	ld h, HIGH(wOAMBuffer)
	ldh a, [hPartyMonIndex]
	swap a
	ld l, a
	add $10
	ld b, a
	pop af
	
;	cp ICON_HELIX << 2
;	jr z, .helix
;	call WriteSymmetricMonPartySpriteOAM
;	jr .makeCopy
;.helix

	call WriteAsymmetricMonPartySpriteOAM
; Make a copy of the OAM buffer with the first animation frame written so that
; we can flip back to it from the second frame by copying it back.

;.makeCopy
	ld hl, wOAMBuffer
	ld de, wMonPartySpritesSavedOAM
	ld bc, $60
	jp CopyData


;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Party Menu ICONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
GetPartyMonSpriteID:
	ld a, [hPartyMonIndex]
	add a
	add a
	add a
	ld [wOAMBaseTile], a
	ret


;GetPartyMonSpriteID:
;	ld [wd11e], a
;	predef IndexToPokedex
;	ld a, [wd11e]
;	ld c, a
;	dec a
;	srl a
;	ld hl, MonPartyData
;	ld e, a
;	ld d, 0
;	add hl, de
;	ld a, [hl]
;	bit 0, c
;	jr nz, .skipSwap
;	swap a ; use lower nybble if pokedex num is even
;.skipSwap
;	and $f0
;	srl a ; value == ICON constant << 2
;	srl a
;	ret

;INCLUDE "data/pokemon/menu_icons.asm"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Party Menu ICONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
INCLUDE "data/pokemon/menu_party_icons.asm"

;INC_FRAME_1 EQUS "0, $20"
;INC_FRAME_2 EQUS "$20, $20"

;BugIconFrame1:       INCBIN "gfx/icons/bug.2bpp", INC_FRAME_1
;PlantIconFrame1:     INCBIN "gfx/icons/plant.2bpp", INC_FRAME_1
;BugIconFrame2:       INCBIN "gfx/icons/bug.2bpp", INC_FRAME_2
;PlantIconFrame2:     INCBIN "gfx/icons/plant.2bpp", INC_FRAME_2
;SnakeIconFrame1:     INCBIN "gfx/icons/snake.2bpp", INC_FRAME_1
;QuadrupedIconFrame1: INCBIN "gfx/icons/quadruped.2bpp", INC_FRAME_1
;SnakeIconFrame2:     INCBIN "gfx/icons/snake.2bpp", INC_FRAME_2
;QuadrupedIconFrame2: INCBIN "gfx/icons/quadruped.2bpp", INC_FRAME_2

TradeBubbleIconGFX:  INCBIN "gfx/trade/bubble.2bpp"

CeruleanTradeHouse_Script:
	jp EnableAutoTextBoxDrawing

CeruleanTradeHouse_TextPointers:
	dw CeruleanHouse1Text1
	dw CeruleanHouse1Text2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Bulbasaur Gift - Yellow
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	dw CeruleanHouse1Text3	    ; bulbasaur gifter
	dw CeruleanHouse1Text4		; bulbasaur

CeruleanHouse1Text1:
	text_far _CeruleanHouse1Text1
	text_end

CeruleanHouse1Text2:
	text_asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Trading OT Names
;;;;;;;;;;;;;;;;;;;;;;;;;;;	
	ld hl, Trader6Name
	call SetCustomName
	
	ld a, TRADE_FOR_LOLA
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd

Trader6Name:
	db "DONTAE@"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Bulbasaur Gift - Yellow
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
CeruleanHouse1Text3:
	text_asm
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	CheckEvent EVENT_GOT_BULBASAUR_IN_CERULEAN
	jr nz, .asm_1cfbf
	ld hl, CeruleanHouse1Text_1cfc8
	call PrintText
; Part of the yellow version script
;	ld a, [wPikachuHappiness]
;	cp 147
	jr c, .asm_1cfb3
	ld hl, CeruleanHouse1Text_1cfce
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .asm_1cfb6
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, BULBASAUR
	ld [wd11e], a
	ld [wcf91], a
	call GetMonName
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	lb bc, BULBASAUR, 10
	call GivePokemon
	jr nc, .asm_1cfb3
	ld a, [wAddedToParty]
	and a
	call z, WaitForTextScrollButtonPress
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, CeruleanHouse1Text_1cfd3
	call PrintText
	ld a, HS_CERULEAN_BULBASAUR
	ld [wMissableObjectIndex], a
	predef HideObject
	SetEvent EVENT_GOT_BULBASAUR_IN_CERULEAN
.asm_1cfb3
	jp TextScriptEnd

.asm_1cfb6
	ld hl, CeruleanHouse1Text_1cfdf
	call PrintText
	jp TextScriptEnd

.asm_1cfbf
	ld hl, CeruleanHouse1Text_1cfd9
	call PrintText
	jp TextScriptEnd

CeruleanHouse1Text_1cfc8:
	text_far MelanieText1
	text_waitbutton
	text_end

CeruleanHouse1Text_1cfce:
	text_far MelanieText2
	text_end

CeruleanHouse1Text_1cfd3:
	text_far MelanieText3
	text_waitbutton
	text_end

CeruleanHouse1Text_1cfd9:
	text_far MelanieText4
	text_waitbutton
	text_end

CeruleanHouse1Text_1cfdf:
	text_far MelanieText5
	text_waitbutton
	text_end

CeruleanHouse1Text4:
	text_far MelanieBulbasaurText
	text_asm
	ld a, BULBASAUR
	call PlayCry
	jp TextScriptEnd

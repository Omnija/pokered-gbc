Route2TradeHouse_Script:
	jp EnableAutoTextBoxDrawing

Route2TradeHouse_TextPointers:
	dw Route2HouseText1
	dw Route2HouseText2

Route2HouseText1:
	text_far _Route2HouseText1
	text_end

Route2HouseText2:
	text_asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Trading OT Names
;;;;;;;;;;;;;;;;;;;;;;;;;;;	
	ld hl, Trader1Name
	call SetCustomName
	
	ld a, TRADE_FOR_MARCEL
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd
	
	Trader1Name:
	db "REYLEY@"

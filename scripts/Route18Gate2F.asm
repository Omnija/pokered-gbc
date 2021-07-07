Route18Gate2F_Script:
	jp DisableAutoTextBoxDrawing

Route18Gate2F_TextPointers:
	dw Route18GateUpstairsText1
	dw Route18GateUpstairsText2
	dw Route18GateUpstairsText3

Route18GateUpstairsText1:
	text_asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Trading OT Names
;;;;;;;;;;;;;;;;;;;;;;;;;;;
	ld hl, Trader5Name
	call SetCustomName
	
	ld a, TRADE_FOR_MARC
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd
	
Trader5Name:
	db "HADEN@"

Route18GateUpstairsText2:
	text_asm
	ld hl, Route18GateUpstairsText_49993
	jp GateUpstairsScript_PrintIfFacingUp

Route18GateUpstairsText_49993:
	text_far _Route18GateUpstairsText_49993
	text_end

Route18GateUpstairsText3:
	text_asm
	ld hl, Route18GateUpstairsText_4999f
	jp GateUpstairsScript_PrintIfFacingUp

Route18GateUpstairsText_4999f:
	text_far _Route18GateUpstairsText_4999f
	text_end

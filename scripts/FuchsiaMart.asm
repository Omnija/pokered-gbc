FuchsiaMart_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaMart_TextPointers:
	dw FuchsiaCashierText
	dw FuchsiaMartText2
	dw FuchsiaMartText3

FuchsiaMartText2:
	text_far _FuchsiaMartText2
	text_end

FuchsiaMartText3:
	text_far _FuchsiaMartText3
	text_end

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Freeing home space from mart
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
FuchsiaCashierText:
	script_mart ULTRA_BALL, GREAT_BALL, SUPER_POTION, REVIVE, FULL_HEAL, SUPER_REPEL

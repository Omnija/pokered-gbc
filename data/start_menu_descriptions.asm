;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Start menu descriptions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

StartMenuDescriptionTable:
; regular menu descriptions
	dw .Pokedex
	dw .Pokemon
	dw .Item
	dw .Player
	dw .Save
	dw .Option
	dw .Exit

.LinkTable:
; descriptions for link mode
	dw .Pokedex
	dw .Pokemon
	dw .Item
	dw .Player
	dw .Reset ; in place of "SAVE"
	dw .Option
	dw .Exit

.Pokedex:
	db "#MON"
	next "database@"

.Pokemon:
	db "#MON"
	next "party@"

.Item:
	db "Backpack"
	next "items@"

.Player:
	db "Player"
	next "info@"

.Save:
	db "Save your"
	next "progress@"

.Reset:
	db "Soft-reset"
	next "the game@"

.Option:
	db "Change"
	next "settings@"

.Exit:
	db "Close"
	next "menu@"
	
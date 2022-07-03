IF DEF(_RED)
DefaultNamesPlayerList:
	db "NEW NAME@"
	db "RED@"
	db "ASH@"
	db "RYU@"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Female Player - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DefaultNamesGirlList:	
	db "NEW NAME@"
	db "GREEN@"
	db "LEAF@"
	db "LILY@"

DefaultNamesRivalList:
	db "NEW NAME@"
	db "BLUE@"
	db "GARY@"
	db "KEN@"
	
ELSE

DefaultNamesPlayerList:
	db "NEW NAME@"
	db "BLUE@"
	db "GARY@"
	db "KEN@"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Female Player - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DefaultNamesGirlList:	
	db "NEW NAME@"
	db "GREEN@"
	db "LEAF@"
	db "LANEY@"

DefaultNamesRivalList:
	db "NEW NAME@"
	db "RED@"
	db "ASH@"
	db "RYU@"
ENDC

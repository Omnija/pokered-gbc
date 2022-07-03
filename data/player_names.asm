IF DEF(_RED)
DefaultNamesPlayer:
	db   "NEW NAME"
	next "RED"
	next "ASH"
	next "RYU"
	db   "@"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Female Player - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DefaultNamesGirl:
	db   "NEW NAME"
	next "GREEN"
	next "LEAF"
	next "LILY"
	db   "@"

DefaultNamesRival:
    db   "NEW NAME"
	next "BLUE"
	next "GARY"
	next "KEN"
    db   "@"

ELSE

DefaultNamesPlayer:
	db   "NEW NAME"
	next "BLUE"
	next "GARY"
	next "KEN"
	db   "@"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Female Player - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DefaultNamesGirl:
	db   "NEW NAME"
	next "GREEN"
	next "LEAF"
	next "LANEY"
	db   "@"

DefaultNamesRival:
	db   "NEW NAME"
	next "RED"
	next "ASH"
	next "RYU"
	db   "@"
ENDC

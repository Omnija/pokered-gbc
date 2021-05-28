IF DEF(_RED)
DefaultNamesPlayer:
	db   "NEW NAME"
	next "RED"
	next "ASH"
	next "RYU"
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

DefaultNamesRival:
	db   "NEW NAME"
	next "RED"
	next "ASH"
	next "RYU"
	db   "@"
ENDC

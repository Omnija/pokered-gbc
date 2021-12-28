Route21Mons:
	db 25 ; grass encounter rate
IF DEF(_RED)
;	db 21, RATTATA
;	db 23, PIDGEY
	db 30, RATICATE
	db 23, RATTATA
	db 21, LICKITUNG
	db 30, PIDGEOTTO
	db 32, PIDGEOTTO
	db 28, TANGELA
	db 30, TANGELA
	db 32, TANGELA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding trade only pokemon
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	db 28, LICKITUNG
	db 30, FARFETCHD
ENDC

IF DEF(_BLUE)
;	db 21, RATTATA
;	db 23, PIDGEY
	db 30, RATICATE
	db 23, RATTATA
	db 21, FARFETCHD
	db 30, PIDGEOTTO
	db 32, PIDGEOTTO
	db 28, TANGELA
	db 30, TANGELA
	db 32, TANGELA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding trade only pokemon
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	db 28, FARFETCHD
	db 30, LICKITUNG
ENDC

	db 5 ; water encounter rate
	db  5, TENTACOOL
	db 10, TENTACOOL
	db 15, TENTACOOL
	db  5, TENTACOOL
	db 10, TENTACOOL
	db 15, TENTACOOL
	db 20, TENTACOOL
	db 30, TENTACOOL
	db 35, TENTACOOL
	db 40, TENTACOOL

_SSAnne2Text1::
	text "This ship, she is"
	line "a luxury liner"
	cont "for trainers!"

	para "At every port, we"
	line "hold parties with"
	cont "invited trainers!"
	done

_SSAnneRivalBeforeBattleText::
	text "<RIVAL>: Bonjour!"
	line "<PLAYER>!"

	para "Imagine seeing"
	line "you here!"

	para "<PLAYER>, were you"
	line "really invited?"

	para "So how's your"
	line "#DEX coming?"

	para "I already caught"
	line "40 kinds, pal!"

	para "Different kinds"
	line "are everywhere!"

	para "Crawl around in"
	line "grassy areas!"
	done

_SSAnneRivalDefeatedText::
	text "Humph!"

	para "At least you're"
	line "raising your"
	cont "#MON!"
	prompt

_SSAnneRivalWonText::
	text "<PLAYER>! What are"
	line "you, seasick?"
	
IF DEF(_RED)	; blue says
	para "You should shape"
	line "up, pal!"
ELSE	; red says
	para "You should listen"
	line "to your"
	cont "#MON more!"
ENDC
	prompt

_SSAnneRivalCaptainText::
	text "<RIVAL>: I heard"
	line "there was a CUT"
	cont "master on board."

IF DEF(_RED)	; blue says
	para "But, he was just a"
	line "seasick, old man!"
ELSE	; red says
	para "He was feeling"
	line "quite sea sick!"
ENDC

	para "But, CUT itself is"
	line "really useful!"
	
	para "You should go see"
IF DEF(_RED)	; blue says
	line "him! Smell ya!"
ELSE	; red says
	line "him! Later!"
ENDC
	done

_MoveTutorWelcomeText::
	text "Hello, I am a"
	line "Move Tutor."
	
	para "For only ¥500, I"
	line "can teach a move"
	cont "to one of your"
	cont "#mon."
	prompt
	
_TeachTutorMoveText::
	text "Want me to teach"
	line "@"
	text_ram wcf4b
	db $0
	cont "to a #mon?"
	done

_MoveTutorComeAgainText::
	text "Come again!"
	done

_MonCannotLearnTutorMoveText::
	text "Oh, I can't teach"
	line "that #mon"
	cont "@"
	text_ram wcf4b
	text "."
	prompt

_MoveTutorNotEnoughMoneyText::
	text "I'm sorry, you"
	line "don't have enough"
	cont "money."
	done

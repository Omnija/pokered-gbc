;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Deleter - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

_MoveDeleterGreetingText::
	text "Umm..."

	para "Oh, yes, I'm the"
	line "Move Deleter."

	para "I can make"
	line "#mon forget"
	cont "moves."

	para "Shall I make a"
	line "#mon forget?"
	done

_MoveDeleterSaidYesText::
	text "Which #mon"
	line "should forget a"
	cont "move?"
	prompt

_MoveDeleterWhichMoveText::
	text "Which move should"
	line "it forget, then?"
	done

_MoveDeleterConfirmText::
	text "Make it forget"
	line "@"
	text_ram wcf4b
	text "?"
	prompt

_MoveDeleterForgotText::
	text "@"
	text_ram wcf4b
	text " was"
	line "forgotten!"
	prompt

_MoveDeleterByeText::
	text "Come visit me"
	line "again!"
	done

_MoveDeleterOneMoveText::
	text "That #mon"
	line "knows only one"
	cont "move."
	done

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Relearner - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

_MoveRelearnerGreetingText::
	text "I'm the #mon"
	line "Move Maniac!"

	para "I know every"
	line "single move that"
	cont "#mon learn"
	cont "growing up."

	para "For ¥500, I can"
	line "make a #mon"
	cont "of yours remember"
	cont "a move."
	done

_MoveRelearnerSaidYesText::
	text "Which #mon"
	line "should learn it?"
	prompt

_MoveRelearnerNotEnoughMoneyText::
	text "Hmmm..."

	para "You don't have"
	line "enough money!"
	done

_MoveRelearnerWhichMoveText::
	text "Which move should"
	line "it learn?"
	done

_MoveRelearnerByeText::
	text "If any of your"
	line "#mon need to"
	cont "remember a move,"
	cont "come visit me!"
	done

_MoveRelearnerNoMovesText::
	text "This #mon"
	line "hasn't forgotten"
	cont "any moves."
	done

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Tutor - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Breeding System - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
_DayCareMText2::
    text "Hello there! I'm"
    line "the Day Care Man!"
    
    para "Come back and see"
    line "me another time."
    done
    
_DayCareMText3::
    text "It's a Ditto that"
    line "belongs to the"
    cont "Day Care Man."
    done
	
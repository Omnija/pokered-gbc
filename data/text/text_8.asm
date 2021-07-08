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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Trainer Rematch - Joenote
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
_RematchTrainerText::
	text "<PLAYER> is it time"
	line "for a rematch?"
	done

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Bulbasaur Gift - Yellow
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
MelanieText1::
	text "I take care of"
	line "injured #MON."

	para "I nursed this"
	line "BULBASAUR back to"
	cont "health."

	para "It needs a good"
	line "trainer to take"
	cont "care of it now.@"
	text_end

MelanieText2::
	text "I know! Would you"
	line "take care of this"
	cont "BULBASAUR?"
	done

MelanieText3::
	text "Please take care"
	line "of BULBASAUR!@"
	text_end

MelanieText4::
	text "Is BULBASAUR"
	line "doing well?@"
	text_end

MelanieText5::
	text "Oh..."
	line "That's too bad...@"
	text_end

MelanieBulbasaurText::
	text "BULBASAUR: Bubba!"
	line "Zoar!@"
	text_end

;MelanieOddishText::
;	text "ODDISH: Orddissh!@"
;	text_end

;MelanieSandshrewText::
;	text "SANDSHREW: Pikii!@"
;	text_end

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Charmander Gift - Yellow
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
_Route24DamianText1::
	text "I'm not good at"
	line "raising #MON."

	para "I should release"
	line "my CHARMANDER"
	cont "because I haven't"
	cont "raised it well..."

	para "If you promise me"
	line "you'll care for"
	cont "it, it's yours."
	done

_Route24DamianText2::
	text "Take good care of"
	line "my CHARMANDER!@@"

_Route24DamianText3::
	text "Oh... I'd better"
	line "release it then."
	done

_Route24DamianText4::
	text "How's CHARMANDER"
	line "doing?"
	done

_Route24DamianText5::
	text "I'm not good at"
	line "raising #MON."

	para "I can't use this"
	line "item on my"
	cont "CHARMANDER..."

	para "It would just"
	line "be a waste."

	para "You have a"
	line "CHARMANDER too?"

	para "If you promise me"
	line "you'll care for"
	cont "it, this item is"
	cont "yours."
	prompt

_Route24DamianText6::
	text "<PLAYER> got"
	line "@"
	text_ram wcf4b
	text "!@@"

_Route24DamianText7::
	text "Oh... You can't"
	line "carry this."
	done

_Route24DamianText8::
	text "How's your CHAR-"
	line "MANDER doing?"
	done

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Squirtle Gift - Yellow
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
_OfficerJennyText1::
	text "I just caught a"
	line "SQUIRTLE that was"
	cont "always getting"
	cont "into mischief."

	para "I think it needs a"
	line "good trainer to"
	cont "set it straight."
	done

_OfficerJennyText2::
	text "You have the"
	line "THUNDERBADGE!?"

	para "You must be a"
	line "good trainer!"

	para "I just caught a"
	line "SQUIRTLE that was"
	cont "always getting"
	cont "into mischief."

	para "Would you take"
	line "good care of it?"
	done

_OfficerJennyText3::
	text "OK! Please treat"
	line "SQUIRTLE right!@@"

_OfficerJennyText4::
	text "Oh... What am I"
	line "to do now?"
	done

_OfficerJennyText5::
	text "How is SQUIRTLE"
	line "doing?"
	done

_OfficerJennyText6::
	text "Some SQUIRTLE"
	line "around here is"
	cont "always getting"
	cont "into mischief."

	para "PROF.OAK gave you"
	line "a SQUIRTLE?"
	cont "And it behaves?"

	para "You must be a"
	line "good trainer!"

	para "Take this and"
	line "raise your"
	cont "SQUIRTLE right!"
	prompt

_OfficerJennyText7::
	text "<PLAYER> got"
	line "@"
	text_ram wcf4b
	text "!@@"

_OfficerJennyText8::
	text "Oh... You can't"
	line "carry this."
	done

_OfficerJennyText9::
	text "How is your"
	line "SQUIRTLE doing?"
	done

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Female Player - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
_BoyGirlText::
    text "Play as a boy, or"
    line "as a girl?"
    done

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Chansey - Yellow
;;;;;;;;;;;;;;;;;;;;;;;;;;;
_NurseChanseyText::
	text "CHANSEY: Chaaan"
	line "sey!"
	done

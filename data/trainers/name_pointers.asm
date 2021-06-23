TrainerNamePointers:
; what is the point of these?
; End battle name pointers!
	dw .YoungsterName
	dw .BugCatcherName
	dw .LassName
	dw wTrainerName
	dw .JrTrainerMName
	dw .JrTrainerFName
	dw .PokemaniacName
	dw .SuperNerdName
	dw wTrainerName
	dw wTrainerName
	dw .BurglarName
	dw .EngineerName

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Swimmer ♀ Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;	
	dw .SwimmerFName
;	dw .UnusedJugglerName

	dw wTrainerName
	dw .SwimmerName
	dw wTrainerName
	dw wTrainerName
	dw .BeautyName
	dw wTrainerName
	dw .RockerName
	dw .JugglerName
	dw wTrainerName
	dw wTrainerName
	dw .BlackbeltName
	dw wTrainerName
	dw .ProfOakName
	dw .ChiefName
	dw .ScientistName
	dw wTrainerName
	dw .RocketName
	dw .CooltrainerMName
	dw .CooltrainerFName
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Soldier Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;	dw .SoldierName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName

.YoungsterName:     db "YOUNGSTER@"
.BugCatcherName:    db "BUG CATCHER@"
.LassName:          db "LASS@"
.JrTrainerMName:    db "JR.TRAINER♂@"
.JrTrainerFName:    db "JR.TRAINER♀@"
.PokemaniacName:    db "POKéMANIAC@"
.SuperNerdName:     db "SUPER NERD@"
.BurglarName:       db "BURGLAR@"
.EngineerName:      db "ENGINEER@"

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Swimmer ♀ Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;	
.SwimmerFName:       db "SWIMMER♀@"
;.UnusedJugglerName: db "JUGGLER@"

.SwimmerName:       db "SWIMMER♂@"
.BeautyName:        db "BEAUTY@"
.RockerName:        db "ROCKER@"
.JugglerName:       db "JUGGLER@"
.BlackbeltName:     db "BLACKBELT@"
.ProfOakName:       db "PROF.OAK@"
.ChiefName:         db "CHIEF@"
.ScientistName:     db "SCIENTIST@"
.RocketName:        db "ROCKET@"
.CooltrainerMName:  db "COOLTRAINER♂@"
.CooltrainerFName:  db "COOLTRAINER♀@"
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Soldier Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;.SoldierName:	    db "SOLDIER@"

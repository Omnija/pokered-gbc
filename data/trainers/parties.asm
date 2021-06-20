TrainerDataPointers:
	dw YoungsterData
	dw BugCatcherData
	dw LassData
	dw SailorData
	dw JrTrainerMData
	dw JrTrainerFData
	dw PokemaniacData
	dw SuperNerdData
	dw HikerData
	dw BikerData
	dw BurglarData
	dw EngineerData
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Swimmer ♀ Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
	dw SwimmerFData
;	dw UnusedJugglerData

	dw FisherData
	dw SwimmerData
	dw CueBallData
	dw GamblerData
	dw BeautyData
	dw PsychicData
	dw RockerData
	dw JugglerData
	dw TamerData
	dw BirdKeeperData
	dw BlackbeltData
	dw Green1Data
	dw ProfOakData
	dw ChiefData
	dw ScientistData
	dw GiovanniData
	dw RocketData
	dw CooltrainerMData
	dw CooltrainerFData
	dw BrunoData
	dw BrockData
	dw MistyData
	dw LtSurgeData
	dw ErikaData
	dw KogaData
	dw BlaineData
	dw SabrinaData
	dw GentlemanData
	dw Green2Data
	dw Green3Data
	dw LoreleiData
	dw ChannelerData
	dw AgathaData
	dw LanceData

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Soldier Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
	dw SoldierData

; if first byte != $FF, then
	; first byte is level (of all pokemon on this team)
	; all the next bytes are pokemon species
	; null-terminated
; if first byte == $FF, then
	; first byte is $FF (obviously)
	; every next two bytes are a level and species
	; null-terminated
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Individual Trainer Names
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
YoungsterData:
; Route 3
	db "JIMMY@", 11, RATTATA, EKANS, 0
	db "WARREN@", 14, SPEAROW, 0
; Mt. Moon 1F
	db "JOSH@", 10, RATTATA, RATTATA, ZUBAT, 0
; Route 24
	db "TIMMY@", 14, RATTATA, EKANS, ZUBAT, 0
; Route 25
	db "CALVIN@", 15, RATTATA, SPEAROW, 0
	db "DAN@", 17, SLOWPOKE, 0
	db "CHAD@", 14, EKANS, SANDSHREW, 0
; SS Anne 1F Rooms
	db "TYLER@", 21, NIDORAN_M, 0
; Route 11
	db "EDDIE@", 21, EKANS, 0
	db "DILLON@", 19, SANDSHREW, ZUBAT, 0
	db "YASU@", 17, RATTATA, RATTATA, RATICATE, 0
	db "DAVE@", 18, NIDORAN_M, NIDORINO, 0
; Unused
	db 17, SPEAROW, RATTATA, RATTATA, SPEAROW, 0

BugCatcherData:
; Viridian Forest
	db "RICK@", 6, WEEDLE, CATERPIE, 0
	db "DOUG@", 7, WEEDLE, KAKUNA, WEEDLE, 0
	db "SAMMY@", 9, WEEDLE, 0
; Route 3
	db "RICK@", 10, CATERPIE, WEEDLE, CATERPIE, 0
	db "GREG@", 9, WEEDLE, KAKUNA, CATERPIE, METAPOD, 0
	db "JAMES@", 11, CATERPIE, METAPOD, 0
; Mt. Moon 1F
	db "KENT@", 11, WEEDLE, KAKUNA, 0
	db "ROBBY@", 10, CATERPIE, METAPOD, CATERPIE, 0
; Route 24
	db "CALE@", 14, CATERPIE, WEEDLE, 0
; Route 6
	db "KEIGO@", 16, WEEDLE, CATERPIE, WEEDLE, 0
	db "ELIJAH@", 20, BUTTERFREE, 0
; Unused
	db "X@", 18, METAPOD, CATERPIE, VENONAT, 0
; Route 9
	db "BRENT@", 19, BEEDRILL, BEEDRILL, 0
	db "SID@", 20, CATERPIE, WEEDLE, VENONAT, 0

LassData:
; Route 3
	db "JANICE@", 9, PIDGEY, PIDGEY, 0
	db "SALLY@", 10, RATTATA, NIDORAN_M, 0
	db "ROBIN@", 14, JIGGLYPUFF, 0
; Route 4
	db "CRISSY@", 31, PARAS, PARAS, PARASECT, 0
; Mt. Moon 1F
	db "MIRIAM@", 11, ODDISH, BELLSPROUT, 0
	db "IRIS@", 14, CLEFAIRY, 0
; Route 24
	db "ALI@", 16, PIDGEY, NIDORAN_F, 0
	db "RELI@", 14, PIDGEY, NIDORAN_F, 0
; Route 25
	db "KELSEY@", 15, NIDORAN_M, NIDORAN_F, 0
	db "HALEY@", 13, ODDISH, PIDGEY, ODDISH, 0
; SS Anne 1F Rooms
	db "ANN@", 18, PIDGEY, NIDORAN_F, 0
; SS Anne 2F Rooms
	db "DAWN@", 18, RATTATA, PIKACHU, 0
; Route 8
	db "PAIGE@", 23, NIDORAN_F, NIDORINA, 0
	db "ANDREA@", 24, MEOWTH, MEOWTH, MEOWTH, 0
	db "MEGAN@", 19, PIDGEY, RATTATA, NIDORAN_M, MEOWTH, PIKACHU, 0
	db "JULIA@", 22, CLEFAIRY, CLEFAIRY, 0
; Celadon Gym
	db "KAY@", 23, BELLSPROUT, WEEPINBELL, 0
	db "LISA@", 23, ODDISH, GLOOM, 0

SailorData:
; SS Anne Stern
	db "EDMOND@", 18, MACHOP, SHELLDER, 0
	db "TREVOR@", 17, MACHOP, TENTACOOL, 0
; SS Anne B1F Rooms
	db "LEONARD@", 21, SHELLDER, 0
	db "DUNCAN@", 17, HORSEA, SHELLDER, TENTACOOL, 0
	db "HUEY@", 18, TENTACOOL, STARYU, 0
	db "DYLAN@", 17, HORSEA, HORSEA, HORSEA, 0
	db "PHILLIP@", 20, MACHOP, 0
; Vermilion Gym
	db "DWAYNE@", 21, PIKACHU, PIKACHU, 0

JrTrainerMData:
; Pewter Gym
	db "JERRY@", 11, DIGLETT, SANDSHREW, 0
; Route 24/Route 25
	db "SHANE@", 14, RATTATA, EKANS, 0
; Route 24
	db "ETHAN@", 18, MANKEY, 0
; Route 6
	db "RICKY@", 20, SQUIRTLE, 0
	db "JEFF@", 16, SPEAROW, RATICATE, 0
; Unused
	db "X@", 18, DIGLETT, DIGLETT, SANDSHREW, 0
; Route 9
	db "CHRIS@", 21, GROWLITHE, CHARMANDER, 0
	db "DREW@", 19, RATTATA, DIGLETT, EKANS, SANDSHREW, 0
; Route 12
	db "JUSTIN@", 29, NIDORAN_M, NIDORINO, 0

JrTrainerFData:
; Cerulean Gym
	db "DIANA@", 19, GOLDEEN, 0
; Route 6
	db "NANCY@", 16, RATTATA, PIKACHU, 0
	db "ISABEL@", 16, PIDGEY, PIDGEY, PIDGEY, 0
; Unused
	db "X@", 22, BULBASAUR, 0
; Route 9
	db "ALICIA@", 18, ODDISH, BELLSPROUT, ODDISH, BELLSPROUT, 0
	db "CAITY@", 23, MEOWTH, 0
; Route 10
	db "HEIDI@", 20, PIKACHU, CLEFAIRY, 0
	db "CAROL@", 21, PIDGEY, PIDGEOTTO, 0
; Rock Tunnel B1F
	db "SOFIA@", 21, JIGGLYPUFF, PIDGEY, MEOWTH, 0
	db "MARTHA@", 22, ODDISH, BULBASAUR, 0
; Celadon Gym
	db "TANYA@", 24, BULBASAUR, IVYSAUR, 0
; Route 13
	db "SUSIE@", 24, PIDGEY, MEOWTH, RATTATA, PIKACHU, MEOWTH, 0
	db "GINGER@", 30, POLIWAG, POLIWAG, 0
	db "GWEN@", 27, PIDGEY, MEOWTH, PIDGEY, PIDGEOTTO, 0
	db "ALMA@", 28, GOLDEEN, POLIWAG, HORSEA, 0
; Route 20
	db "MISSY@", 31, GOLDEEN, SEAKING, 0
; Rock Tunnel 1F
	db "LEAH@", 22, BELLSPROUT, CLEFAIRY, 0
	db "DANA@", 20, MEOWTH, ODDISH, PIDGEY, 0
	db "ARIANA@", 19, PIDGEY, RATTATA, RATTATA, BELLSPROUT, 0
; Route 15
	db "KINDRA@", 28, GLOOM, ODDISH, ODDISH, 0
	db "BECKY@", 29, PIKACHU, RAICHU, 0
	db "CELIA@", 33, CLEFAIRY, 0
	db "YASMIN@", 29, BELLSPROUT, ODDISH, TANGELA, 0
; Route 20
	db "IRENE@", 30, TENTACOOL, HORSEA, SEEL, 0

PokemaniacData:
; Route 10
	db "MARK@", 30, RHYHORN, LICKITUNG, 0
	db "HERMAN@", 20, CUBONE, SLOWPOKE, 0
; Rock Tunnel B1F
	db "COOPER@", 20, SLOWPOKE, SLOWPOKE, SLOWPOKE, 0
	db "STEVE@", 22, CHARMANDER, CUBONE, 0
	db "WINSTON@", 25, SLOWPOKE, 0
; Victory Road 2F
	db "DAWSON@", 40, CHARMELEON, LAPRAS, LICKITUNG, 0
; Rock Tunnel 1F
	db "ASHTON@", 23, CUBONE, SLOWPOKE, 0

SuperNerdData:
; Mt. Moon 1F
	db "JOVAN@", 11, MAGNEMITE, VOLTORB, 0
; Mt. Moon B2F
	db "MIGUEL@", 12, GRIMER, VOLTORB, KOFFING, 0
; Route 8
	db "AIDAN@", 20, VOLTORB, KOFFING, VOLTORB, MAGNEMITE, 0
	db "GLENN@", 22, GRIMER, MUK, GRIMER, 0
	db "LESLIE@", 26, KOFFING, 0
; Unused
	db "X@", 22, KOFFING, MAGNEMITE, WEEZING, 0
	db "X@", 20, MAGNEMITE, MAGNEMITE, KOFFING, MAGNEMITE, 0
	db "X@", 24, MAGNEMITE, VOLTORB, 0
; Cinnabar Gym
	db "ERIK@", 36, VULPIX, VULPIX, NINETALES, 0
	db "AVERY@", 34, PONYTA, CHARMANDER, VULPIX, GROWLITHE, 0
	db "DEREK@", 41, RAPIDASH, 0
	db "ZAC@", 37, GROWLITHE, VULPIX, 0

HikerData:
; Mt. Moon 1F
	db "MARCOS@", 10, GEODUDE, GEODUDE, ONIX, 0
; Route 25
	db "FRANKLIN@", 15, MACHOP, GEODUDE, 0
	db "NOB@", 13, GEODUDE, GEODUDE, MACHOP, GEODUDE, 0
	db "WAYNE@", 17, ONIX, 0
; Route 9
	db "ALAN@", 21, GEODUDE, ONIX, 0
	db "SIDNEY@", 20, GEODUDE, MACHOP, GEODUDE, 0
; Route 10
	db "CLARK@", 21, GEODUDE, ONIX, 0
	db "TRENT@", 19, ONIX, GRAVELER, 0
; Rock Tunnel B1F
	db "DUDLEY@", 21, GEODUDE, GEODUDE, GRAVELER, 0
	db "ALLEN@", 25, GEODUDE, 0
; Route 9/Rock Tunnel B1F
	db "JEREMY@", 20, MACHOP, ONIX, 0
; Rock Tunnel 1F
	db "LENNY@", 19, GEODUDE, MACHOP, GEODUDE, GEODUDE, 0
	db "OLIVER@", 20, ONIX, ONIX, GEODUDE, 0
	db "LUCAS@", 21, GEODUDE, GRAVELER, 0

BikerData:
; Route 13
	db "JARED@", 28, KOFFING, KOFFING, KOFFING, 0
; Route 14
	db "MALIK@", 29, KOFFING, GRIMER, 0
; Route 15
	db "ERNEST@", 25, KOFFING, KOFFING, WEEZING, KOFFING, GRIMER, 0
	db "ALEX@", 28, KOFFING, GRIMER, WEEZING, 0
; Route 16
	db "LAO@", 29, GRIMER, KOFFING, 0
	db "HIDEO@", 33, WEEZING, 0
	db "RUBEN@", 26, GRIMER, GRIMER, GRIMER, GRIMER, 0
; Route 17
	; From https://www.smogon.com/smog/issue27/glitch:
	; 0E:5FC2 is offset of the ending 0 for this first Biker on Route 17.
	; BaseStats + (MonBaseStatsEnd - MonBaseStats) * (000 - 1) = $5FC2;
	; that's the formula from GetMonHeader for the base stats of mon #000.
	; (BaseStats = $43DE and BANK(BaseStats) = $0E.)
	; Finally, PokedexOrder lists 0 as the dex ID for every MissingNo.
	; The result is that this data gets interpreted as the base stats
	; for MissingNo: 0, 33, MUK, 0, 29, VOLTORB, VOLTORB, 0, ..., 28, GRIMER, GRIMER.
	db "VIRGIL@", 28, WEEZING, KOFFING, WEEZING, 0
	db "BILLY@", 33, MUK, 0
	db "NIKOLAS@", 29, VOLTORB, VOLTORB, 0
	db "JAXON@", 29, WEEZING, MUK, 0
	db "WILLIAM@", 25, KOFFING, WEEZING, KOFFING, KOFFING, WEEZING, 0
; Route 14
	db "LUKAS@", 26, KOFFING, KOFFING, GRIMER, KOFFING, 0
	db "ISAAC@", 28, GRIMER, GRIMER, KOFFING, 0
	db "GERALD@", 29, KOFFING, MUK, 0

BurglarData:
; Unused
	db "X@", 29, GROWLITHE, VULPIX, 0
	db "X@", 33, GROWLITHE, 0
	db "X@", 28, VULPIX, CHARMANDER, PONYTA, 0
; Cinnabar Gym
	db "QUINN@", 36, GROWLITHE, VULPIX, NINETALES, 0
	db "RAMON@", 41, PONYTA, 0
	db "DUSTY@", 37, VULPIX, GROWLITHE, 0
; Mansion 2F
	db "ARNIE@", 34, CHARMANDER, CHARMELEON, 0
; Mansion 3F
	db "SIMON@", 38, NINETALES, 0
; Mansion B1F
	db "LEWIS@", 34, GROWLITHE, PONYTA, 0

EngineerData:
; Unused
	db "X@", 21, VOLTORB, MAGNEMITE, 0
; Route 11
	db "BRAXTON@", 21, MAGNEMITE, 0
	db "BERNIE@", 18, MAGNEMITE, MAGNEMITE, MAGNETON, 0

UnusedJugglerData:
; none

FisherData:
; SS Anne 2F Rooms
	db "DALE@", 17, GOLDEEN, TENTACOOL, GOLDEEN, 0
; SS Anne B1F Rooms
	db "ELLIOT@", 17, TENTACOOL, STARYU, SHELLDER, 0
; Route 12
	db "KYLE@", 22, GOLDEEN, POLIWAG, GOLDEEN, 0
	db "MARTIN@", 24, TENTACOOL, GOLDEEN, 0
	db "STEPHEN@", 27, GOLDEEN, 0
	db "BARNEY@", 21, POLIWAG, SHELLDER, GOLDEEN, HORSEA, 0
; Route 21
	db "RONALD@", 28, SEAKING, GOLDEEN, SEAKING, SEAKING, 0
	db "CLAUDE@", 31, SHELLDER, CLOYSTER, 0
	db "WADE@", 27, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, 0
	db "NOLAN@", 33, SEAKING, GOLDEEN, 0
; Route 12
	db "ANDREW@", 24, MAGIKARP, MAGIKARP, 0

SwimmerData:
; Cerulean Gym
	db "LUIS@", 16, HORSEA, SHELLDER, 0
; Route 19
	db "RICHARD@", 30, TENTACOOL, SHELLDER, 0
	db "REECE@", 29, GOLDEEN, HORSEA, STARYU, 0
	db "MATTHEW@", 30, POLIWAG, POLIWHIRL, 0
	db "DOUGLAS@", 27, HORSEA, TENTACOOL, TENTACOOL, GOLDEEN, 0
	db "DAVID@", 29, GOLDEEN, SHELLDER, SEAKING, 0
	db "TONY@", 30, HORSEA, HORSEA, 0
	db "AXLE@", 27, TENTACOOL, TENTACOOL, STARYU, HORSEA, TENTACRUEL, 0
; Route 20
	db "TUCKER@", 31, SHELLDER, CLOYSTER, 0
	db "DEAN@", 35, STARYU, 0
	db "DARRIN@", 28, HORSEA, HORSEA, SEADRA, HORSEA, 0
; Route 21
	db "SPENCER@", 33, SEADRA, TENTACRUEL, 0
	db "JACK@", 37, STARMIE, 0
	db "JEROME@", 33, STARYU, WARTORTLE, 0
	db "ROLAND@", 32, POLIWHIRL, TENTACOOL, SEADRA, 0

CueBallData:
; Route 16
	db "KOJI@", 28, MACHOP, MANKEY, MACHOP, 0
	db "LUKE@", 29, MANKEY, MACHOP, 0
	db "CAMRON@", 33, MACHOP, 0
; Route 17
	db "RAUL@", 29, MANKEY, PRIMEAPE, 0
	db "ISAIAH@", 29, MACHOP, MACHOKE, 0
	db "ZEKE@", 33, MACHOKE, 0
	db "JAMAL@", 26, MANKEY, MANKEY, MACHOKE, MACHOP, 0
	db "COREY@", 29, PRIMEAPE, MACHOKE, 0
; Route 21
	db "IAN@", 31, TENTACOOL, TENTACOOL, TENTACRUEL, 0

GamblerData:
; Route 11
	db "HUGO@", 18, POLIWAG, HORSEA, 0
	db "JASPER@", 18, BELLSPROUT, ODDISH, 0
	db "DIRK@", 18, VOLTORB, MAGNEMITE, 0
	db "DARIAN@", 18, GROWLITHE, VULPIX, 0
; Route 8
	db "STAN@", 22, POLIWAG, POLIWAG, POLIWHIRL, 0
; Unused
	db "X@", 22, ONIX, GEODUDE, GRAVELER, 0
; Route 8
	db "RICH@", 24, GROWLITHE, VULPIX, 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Swimmer ♀ Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
SwimmerFData:
BeautyData:
; Celadon Gym
	db "BRIDGET@", 21, ODDISH, BELLSPROUT, ODDISH, BELLSPROUT, 0
	db "TAMIA@", 24, BELLSPROUT, BELLSPROUT, 0
	db "LORI@", 26, EXEGGCUTE, 0
; Route 13
	db "LOLA@", 27, RATTATA, PIKACHU, RATTATA, 0
	db "SHEILA@", 29, CLEFAIRY, MEOWTH, 0
; Route 20
	db "TIFFANY@", 35, SEAKING, 0
	db "NORA@", 30, SHELLDER, SHELLDER, CLOYSTER, 0
	db "MELISSA@", 31, POLIWAG, SEAKING, 0
; Route 15
	db "GRACE@", 29, PIDGEOTTO, WIGGLYTUFF, 0
	db "OLIVIA@", 29, BULBASAUR, IVYSAUR, 0
; Unused
	db "X@", 33, WEEPINBELL, BELLSPROUT, WEEPINBELL, 0
; Route 19
	db "ANYA@", 27, POLIWAG, GOLDEEN, SEAKING, GOLDEEN, POLIWAG, 0
	db "ALICE@", 30, GOLDEEN, SEAKING, 0
	db "CONNIE@", 29, STARYU, STARYU, STARYU, 0
; Route 20
	db "SHIRLEY@", 30, SEADRA, HORSEA, SEADRA, 0

PsychicData:
; Saffron Gym
	db "JOHAN@", 31, KADABRA, SLOWPOKE, MR_MIME, KADABRA, 0
	db "TYRON@", 34, MR_MIME, KADABRA, 0
	db "CAMERON@", 33, SLOWPOKE, SLOWPOKE, SLOWBRO, 0
	db "PRESTON@", 38, SLOWBRO, 0

RockerData:
; Vermilion Gym
	db "VINCENT@", 20, VOLTORB, MAGNEMITE, VOLTORB, 0
; Route 12
	db "LUCA@", 29, VOLTORB, ELECTRODE, 0

JugglerData:
; Silph Co. 5F
	db "DALTON@", 29, KADABRA, MR_MIME, 0
; Victory Road 2F
	db "NELSON@",  41, DROWZEE, HYPNO, KADABRA, KADABRA, 0
; Fuchsia Gym
	db "KIRK@", 31, DROWZEE, DROWZEE, KADABRA, DROWZEE, 0
	db "SHAWN@", 34, DROWZEE, HYPNO, 0
; Victory Road 2F
	db "GREGORY@", 48, MR_MIME, 0
; Unused
	db "X@", 33, HYPNO, 0
; Fuchsia Gym
	db "KAYDEN@", 38, HYPNO, 0
	db "NATE@", 34, DROWZEE, KADABRA, 0

TamerData:
; Fuchsia Gym
	db "PHIL@", 34, SANDSLASH, ARBOK, 0
	db "EDGAR@", 33, ARBOK, SANDSLASH, ARBOK, 0
; Viridian Gym
	db "JASON@", 43, RHYHORN, 0
	db "COLE@", 39, ARBOK, TAUROS, 0
; Victory Road 2F
	db "VINCENT@", 44, PERSIAN, GOLDUCK, 0
; Unused
	db "X@", 42, RHYHORN, PRIMEAPE, ARBOK, TAUROS, 0

BirdKeeperData:
; Route 13
	db "BRET@", 29, PIDGEY, PIDGEOTTO, 0
	db "PERRY@", 25, SPEAROW, PIDGEY, PIDGEY, SPEAROW, SPEAROW, 0
	db "ROBERT@", 26, PIDGEY, PIDGEOTTO, SPEAROW, FEAROW, 0
; Route 14
	db "DONALD@", 33, FARFETCHD, 0
	db "BENNY@", 29, SPEAROW, FEAROW, 0
; Route 15
	db "CHIP@", 26, PIDGEOTTO, FARFETCHD, DODUO, PIDGEY, 0
	db "EDWIN@", 28, DODRIO, DODUO, DODUO, 0
; Route 18
	db "WILTON@", 29, SPEAROW, FEAROW, 0
	db "BORIS@", 34, DODRIO, 0
	db "JACOB@", 26, SPEAROW, SPEAROW, FEAROW, SPEAROW, 0
; Route 20
	db "ROGER@", 30, FEAROW, FEAROW, PIDGEOTTO, 0
; Unused
	db "X@", 39, PIDGEOTTO, PIDGEOTTO, PIDGEY, PIDGEOTTO, 0
	db "X@", 42, FARFETCHD, FEAROW, 0
; Route 14
	db "CARTER@", 28, PIDGEY, DODUO, PIDGEOTTO, 0
	db "MITCH@", 26, PIDGEY, SPEAROW, PIDGEY, FEAROW, 0
	db "BECK@", 29, PIDGEOTTO, FEAROW, 0
	db "MARLON@", 28, SPEAROW, DODUO, FEAROW, 0

BlackbeltData:
; Fighting Dojo
	db "KIYO@", 37, HITMONLEE, HITMONCHAN, 0
	db "MIKE@", 31, MANKEY, MANKEY, PRIMEAPE, 0
	db "HIDEKI@", 32, MACHOP, MACHOKE, 0
	db "AARON@", 36, PRIMEAPE, 0
	db "HITOSHI@",31, MACHOP, MANKEY, PRIMEAPE, 0
; Viridian Gym
	db "ATSUSHI@", 40, MACHOP, MACHOKE, 0
	db "KOICHI@", 43, MACHOKE, 0
	db "TAKASHI@", 38, MACHOKE, MACHOP, MACHOKE, 0
; Victory Road 2F
	db "DAISUKE@",43, MACHOKE, MACHOP, MACHOKE, 0

Green1Data:
	db "<RIVAL>@", 5, SQUIRTLE, 0
	db "<RIVAL>@", 5, BULBASAUR, 0
	db "<RIVAL>@", 5, CHARMANDER, 0
; Route 22
	db "<RIVAL>@", $FF, 9, PIDGEY, 8, SQUIRTLE, 0
	db "<RIVAL>@", $FF, 9, PIDGEY, 8, BULBASAUR, 0
	db "<RIVAL>@", $FF, 9, PIDGEY, 8, CHARMANDER, 0
; Cerulean City
	db "<RIVAL>@", $FF, 18, PIDGEOTTO, 15, ABRA, 15, RATTATA, 17, SQUIRTLE, 0
	db "<RIVAL>@", $FF, 18, PIDGEOTTO, 15, ABRA, 15, RATTATA, 17, BULBASAUR, 0
	db "<RIVAL>@", $FF, 18, PIDGEOTTO, 15, ABRA, 15, RATTATA, 17, CHARMANDER, 0

ProfOakData:
; Unused
	db "OAK@", $FF, 66, TAUROS, 67, EXEGGUTOR, 68, ARCANINE, 69, BLASTOISE, 70, GYARADOS, 0
	db "OAK@", $FF, 66, TAUROS, 67, EXEGGUTOR, 68, ARCANINE, 69, VENUSAUR, 70, GYARADOS, 0
	db "OAK@", $FF, 66, TAUROS, 67, EXEGGUTOR, 68, ARCANINE, 69, CHARIZARD, 70, GYARADOS, 0

ChiefData:
; none

ScientistData:
; Unused
	db "TED@", 34, KOFFING, VOLTORB, 0
; Silph Co. 2F
	db "CONNOR@", 26, GRIMER, WEEZING, KOFFING, WEEZING, 0
	db "LIAM@", 28, MAGNEMITE, VOLTORB, MAGNETON, 0
; Silph Co. 3F/Mansion 1F
	db "JOSE@", 29, ELECTRODE, WEEZING, 0
; Silph Co. 4F
	db "RODNEY@", 33, ELECTRODE, 0
; Silph Co. 5F
	db "BEAU@", 26, MAGNETON, KOFFING, WEEZING, MAGNEMITE, 0
; Silph Co. 6F
	db "TAYLOR@", 25, VOLTORB, KOFFING, MAGNETON, MAGNEMITE, KOFFING, 0
; Silph Co. 7F
	db "JOSHUA@", 29, ELECTRODE, MUK, 0
; Silph Co. 8F
	db "PARKER@", 29, GRIMER, ELECTRODE, 0
; Silph Co. 9F
	db "ED@", 28, VOLTORB, KOFFING, MAGNETON, 0
; Silph Co. 10F
	db "TRAVIS@", 29, MAGNEMITE, KOFFING, 0
; Mansion 3F
	db "BRAYDON@", 33, MAGNEMITE, MAGNETON, VOLTORB, 0
; Mansion B1F
	db "IVAN@", 34, MAGNEMITE, ELECTRODE, 0

GiovanniData:
; Rocket Hideout B4F
	db "GIOVANNI@", $FF, 25, ONIX, 24, RHYHORN, 29, KANGASKHAN, 0
; Silph Co. 11F
	db "GIOVANNI@", $FF, 37, NIDORINO, 35, KANGASKHAN, 37, RHYHORN, 41, NIDOQUEEN, 0
; Viridian Gym
	db "GIOVANNI@", $FF, 45, RHYHORN, 42, DUGTRIO, 44, NIDOQUEEN, 45, NIDOKING, 50, RHYDON, 0

RocketData:
; Mt. Moon B2F
	db "GRUNT@", 13, RATTATA, ZUBAT, 0
	db "GRUNT@", 11, SANDSHREW, RATTATA, ZUBAT, 0
	db "GRUNT@", 12, ZUBAT, EKANS, 0
	db "GRUNT@", 16, RATICATE, 0
; Cerulean City
	db "GRUNT@", 17, MACHOP, DROWZEE, 0
; Route 24
	db "GRUNT@", 15, EKANS, ZUBAT, 0
; Game Corner
	db "GRUNT@", 20, RATICATE, ZUBAT, 0
; Rocket Hideout B1F
	db "GRUNT@", 21, DROWZEE, MACHOP, 0
	db "GRUNT@", 21, RATICATE, RATICATE, 0
	db "GRUNT@", 20, GRIMER, KOFFING, KOFFING, 0
	db "GRUNT@", 19, RATTATA, RATICATE, RATICATE, RATTATA, 0
	db "GRUNT@", 22, GRIMER, KOFFING, 0
; Rocket Hideout B2F
	db "GRUNT@", 17, ZUBAT, KOFFING, GRIMER, ZUBAT, RATICATE, 0
; Rocket Hideout B3F
	db "GRUNT@", 20, RATTATA, RATICATE, DROWZEE, 0
	db "GRUNT@", 21, MACHOP, MACHOP, 0
; Rocket Hideout B4F
	db "GRUNT@", 23, SANDSHREW, EKANS, SANDSLASH, 0
	db "GRUNT@", 23, EKANS, SANDSHREW, ARBOK, 0
	db "GRUNT@", 21, KOFFING, ZUBAT, 0
; Pokémon Tower 7F
	db "GRUNT@", 25, ZUBAT, ZUBAT, GOLBAT, 0
	db "GRUNT@", 26, KOFFING, DROWZEE, 0
	db "GRUNT@", 23, ZUBAT, RATTATA, RATICATE, ZUBAT, 0
; Unused
	db "X@",26, DROWZEE, KOFFING, 0
; Silph Co. 2F
	db "GRUNT@", 29, CUBONE, ZUBAT, 0
	db "GRUNT@", 25, GOLBAT, ZUBAT, ZUBAT, RATICATE, ZUBAT, 0
; Silph Co. 3F
	db "GRUNT@", 28, RATICATE, HYPNO, RATICATE, 0
; Silph Co. 4F
	db "GRUNT@", 29, MACHOP, DROWZEE, 0
	db "GRUNT@", 28, EKANS, ZUBAT, CUBONE, 0
; Silph Co. 5F
	db "GRUNT@", 33, ARBOK, 0
	db "GRUNT@", 33, HYPNO, 0
; Silph Co. 6F
	db "GRUNT@", 29, MACHOP, MACHOKE, 0
	db "GRUNT@", 28, ZUBAT, ZUBAT, GOLBAT, 0
; Silph Co. 7F
	db "GRUNT@", 26, RATICATE, ARBOK, KOFFING, GOLBAT, 0
	db "GRUNT@", 29, CUBONE, CUBONE, 0
	db "GRUNT@", 29, SANDSHREW, SANDSLASH, 0
; Silph Co. 8F
	db "GRUNT@", 26, RATICATE, ZUBAT, GOLBAT, RATTATA, 0
	db "GRUNT@", 28, WEEZING, GOLBAT, KOFFING, 0
; Silph Co. 9F
	db "GRUNT@", 28, DROWZEE, GRIMER, MACHOP, 0
	db "GRUNT@", 28, GOLBAT, DROWZEE, HYPNO, 0
; Silph Co. 10F
	db "GRUNT@", 33, MACHOKE, 0
; Silph Co. 11F
	db "GRUNT@", 25, RATTATA, RATTATA, ZUBAT, RATTATA, EKANS, 0
	db "GRUNT@", 32, CUBONE, DROWZEE, MAROWAK, 0

CooltrainerMData:
; Viridian Gym
	db "SAUL@", 39, NIDORINO, NIDOKING, 0
; Victory Road 3F
	db "BEN@", 43, EXEGGUTOR, CLOYSTER, ARCANINE, 0
	db "COLBY@", 43, KINGLER, TENTACRUEL, BLASTOISE, 0
; Unused
	db "X@", 45, KINGLER, STARMIE, 0
; Victory Road 1F
	db "HANK@", 42, IVYSAUR, WARTORTLE, CHARMELEON, CHARIZARD, 0
; Unused
	db "X@", 44, IVYSAUR, WARTORTLE, CHARMELEON, 0
	db "X@", 49, NIDOKING, 0
	db "X@", 44, KINGLER, CLOYSTER, 0
; Viridian Gym
	db "YUJI@", 39, SANDSLASH, DUGTRIO, 0
	db "WREN@", 43, RHYHORN, 0

CooltrainerFData:
; Celadon Gym
	db "MARY@", 24, WEEPINBELL, GLOOM, IVYSAUR, 0
; Victory Road 3F
	db "TINA@", 43, BELLSPROUT, WEEPINBELL, VICTREEBEL, 0
	db "ALEXA@", 43, PARASECT, DEWGONG, CHANSEY, 0
; Unused
	db "X@", 46, VILEPLUME, BUTTERFREE, 0
; Victory Road 1F
	db "NAOMI@", 44, PERSIAN, NINETALES, 0
; Unused
	db "X@", 45, IVYSAUR, VENUSAUR, 0
	db "X@", 45, NIDORINA, NIDOQUEEN, 0
	db "X@", 43, PERSIAN, NINETALES, RAICHU, 0

BrunoData:
	db "BRUNO@", $FF, 53, ONIX, 55, HITMONCHAN, 55, HITMONLEE, 56, ONIX, 58, MACHAMP, 0

BrockData:
	db "BROCK@", $FF, 12, GEODUDE, 14, ONIX, 0

MistyData:
	db "MISTY@", $FF, 18, STARYU, 21, STARMIE, 0

LtSurgeData:
	db "LT.SURGE@", $FF, 21, VOLTORB, 18, PIKACHU, 24, RAICHU, 0

ErikaData:
	db "ERIKA@", $FF, 29, VICTREEBEL, 24, TANGELA, 29, VILEPLUME, 0

KogaData:
	db "KOGA@", $FF, 37, KOFFING, 39, MUK, 37, KOFFING, 43, WEEZING, 0

BlaineData:
	db "BLAINE@", $FF, 42, GROWLITHE, 40, PONYTA, 42, RAPIDASH, 47, ARCANINE, 0

SabrinaData:
	db "SABRINA@", $FF, 38, KADABRA, 37, MR_MIME, 38, VENOMOTH, 43, ALAKAZAM, 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Soldier Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
SoldierData:
GentlemanData:
; SS Anne 1F Rooms
	db "THOMAS@", 18, GROWLITHE, GROWLITHE, 0
	db "ARTHUR@", 19, NIDORAN_M, NIDORAN_F, 0
; SS Anne 2F Rooms/Vermilion Gym
	db "TUCKER@", 23, PIKACHU, 0
; Unused
	db "X@", 48, PRIMEAPE, 0
; SS Anne 2F Rooms
	db "LAMAR@", 17, GROWLITHE, PONYTA, 0

Green2Data:
; SS Anne 2F
	db "<RIVAL>@", $FF, 19, PIDGEOTTO, 16, RATICATE, 18, KADABRA, 20, WARTORTLE, 0
	db "<RIVAL>@", $FF, 19, PIDGEOTTO, 16, RATICATE, 18, KADABRA, 20, IVYSAUR, 0
	db "<RIVAL>@", $FF, 19, PIDGEOTTO, 16, RATICATE, 18, KADABRA, 20, CHARMELEON, 0
; Pokémon Tower 2F
	db "<RIVAL>@", $FF, 25, PIDGEOTTO, 23, GROWLITHE, 22, EXEGGCUTE, 20, KADABRA, 25, WARTORTLE, 0
	db "<RIVAL>@", $FF, 25, PIDGEOTTO, 23, GYARADOS, 22, GROWLITHE, 20, KADABRA, 25, IVYSAUR, 0
	db "<RIVAL>@", $FF, 25, PIDGEOTTO, 23, EXEGGCUTE, 22, GYARADOS, 20, KADABRA, 25, CHARMELEON, 0
; Silph Co. 7F
	db "<RIVAL>@", $FF, 37, PIDGEOT, 38, GROWLITHE, 35, EXEGGCUTE, 35, ALAKAZAM, 40, BLASTOISE, 0
	db "<RIVAL>@", $FF, 37, PIDGEOT, 38, GYARADOS, 35, GROWLITHE, 35, ALAKAZAM, 40, VENUSAUR, 0
	db "<RIVAL>@", $FF, 37, PIDGEOT, 38, EXEGGCUTE, 35, GYARADOS, 35, ALAKAZAM, 40, CHARIZARD, 0
; Route 22
	db "<RIVAL>@", $FF, 47, PIDGEOT, 45, RHYHORN, 45, GROWLITHE, 47, EXEGGCUTE, 50, ALAKAZAM, 53, BLASTOISE, 0
	db "<RIVAL>@", $FF, 47, PIDGEOT, 45, RHYHORN, 45, GYARADOS, 47, GROWLITHE, 50, ALAKAZAM, 53, VENUSAUR, 0
	db "<RIVAL>@", $FF, 47, PIDGEOT, 45, RHYHORN, 45, EXEGGCUTE, 47, GYARADOS, 50, ALAKAZAM, 53, CHARIZARD, 0

Green3Data:
	db "<RIVAL>@", $FF, 61, PIDGEOT, 59, ALAKAZAM, 61, RHYDON, 61, ARCANINE, 63, EXEGGUTOR, 65, BLASTOISE, 0
	db "<RIVAL>@", $FF, 61, PIDGEOT, 59, ALAKAZAM, 61, RHYDON, 61, GYARADOS, 63, ARCANINE, 65, VENUSAUR, 0
	db "<RIVAL>@", $FF, 61, PIDGEOT, 59, ALAKAZAM, 61, RHYDON, 61, EXEGGUTOR, 63, GYARADOS, 65, CHARIZARD, 0

LoreleiData:
	db "LORELEI@", $FF, 54, DEWGONG, 53, CLOYSTER, 54, SLOWBRO, 56, JYNX, 56, LAPRAS, 0

ChannelerData:
; Unused
	db "X@", 22, GASTLY, 0
	db "X@", 24, GASTLY, 0
	db "X@", 23, GASTLY, GASTLY, 0
	db "X@", 24, GASTLY, 0
; Pokémon Tower 3F
	db "HOPE@", 23, GASTLY, 0
	db "CARLY@", 24, GASTLY, 0
; Unused
	db "X@", 24, HAUNTER, 0
; Pokémon Tower 3F
	db "PATRICIA@", 22, GASTLY, 0
; Pokémon Tower 4F
	db "PAULA@", 24, GASTLY, 0
	db "LAUREL@", 23, GASTLY, GASTLY, 0
; Unused
	db "X@", 24, GASTLY, 0
; Pokémon Tower 4F
	db "JODY@", 22, GASTLY, 0
; Unused
	db "X@", 24, GASTLY, 0
; Pokémon Tower 5F
	db "TAMMY@", 23, HAUNTER, 0
; Unused
	db "X@", 24, GASTLY, 0
; Pokémon Tower 5F
	db "RUTH@", 22, GASTLY, 0
	db  "KARINA@", 24, GASTLY, 0
	db "JANAE@", 22, HAUNTER, 0
; Pokémon Tower 6F
	db "ANGEL@", 22, GASTLY, GASTLY, GASTLY, 0
	db "JENNY@", 24, GASTLY, 0
	db "EMILIA@", 24, GASTLY, 0
; Saffron Gym
	db "AMANDA@", 34, GASTLY, HAUNTER, 0
	db "STACY@", 38, HAUNTER, 0
	db "TASHA@",33, GASTLY, GASTLY, HAUNTER, 0

AgathaData:
	db "AGATHA@", $FF, 56, GENGAR, 56, GOLBAT, 55, HAUNTER, 58, ARBOK, 60, GENGAR, 0

LanceData:
	db "LANCE@", $FF, 58, GYARADOS, 56, DRAGONAIR, 56, DRAGONAIR, 60, AERODACTYL, 62, DRAGONITE, 0

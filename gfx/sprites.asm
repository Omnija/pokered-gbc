SECTION "NPC Sprites 1", ROMX

ScientistSprite::        INCBIN "gfx/sprites/scientist.2bpp"
RockerSprite::           INCBIN "gfx/sprites/rocker.2bpp"
SwimmerSprite::          INCBIN "gfx/sprites/swimmer.2bpp"
SafariZoneWorkerSprite:: INCBIN "gfx/sprites/safari_zone_worker.2bpp"
GymGuideSprite::         INCBIN "gfx/sprites/gym_guide.2bpp"
GrampsSprite::           INCBIN "gfx/sprites/gramps.2bpp"
ClerkSprite::            INCBIN "gfx/sprites/clerk.2bpp"
FishingGuruSprite::      INCBIN "gfx/sprites/fishing_guru.2bpp"
GrannySprite::           INCBIN "gfx/sprites/granny.2bpp"
NurseSprite::            INCBIN "gfx/sprites/nurse.2bpp"
LinkReceptionistSprite:: INCBIN "gfx/sprites/link_receptionist.2bpp"
SilphPresidentSprite::   INCBIN "gfx/sprites/silph_president.2bpp"
SilphWorkerSprite::      INCBIN "gfx/sprites/silph_worker.2bpp"
WardenSprite::           INCBIN "gfx/sprites/warden.2bpp"
CaptainSprite::          INCBIN "gfx/sprites/captain.2bpp"
FisherSprite::           INCBIN "gfx/sprites/fisher.2bpp"
KogaSprite::             INCBIN "gfx/sprites/koga.2bpp"
GuardSprite::            INCBIN "gfx/sprites/guard.2bpp"
PokeBallSprite::         INCBIN "gfx/sprites/poke_ball.2bpp"
FossilSprite::           INCBIN "gfx/sprites/fossil.2bpp"
BoulderSprite::          INCBIN "gfx/sprites/boulder.2bpp"
PaperSprite::            INCBIN "gfx/sprites/paper.2bpp"
PokedexSprite::          INCBIN "gfx/sprites/pokedex.2bpp"
ClipboardSprite::        INCBIN "gfx/sprites/clipboard.2bpp"
SnorlaxSprite::          INCBIN "gfx/sprites/snorlax.2bpp"
OldAmberSprite::         INCBIN "gfx/sprites/old_amber.2bpp"
GamblerAsleepSprite::    INCBIN "gfx/sprites/gambler_asleep.2bpp"


SECTION "NPC Sprites 2", ROMX

; Adding Version Alternatives
IF DEF(_RED)
RedBikeSprite::          INCBIN "gfx/sprites/red_bike.2bpp"
RedSprite::              INCBIN "gfx/sprites/red.2bpp"
ELSE
RedBikeSprite::          INCBIN "gfx/sprites/blue_bike.2bpp"
RedSprite::              INCBIN "gfx/sprites/blue.2bpp"
ENDC

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Female Player - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IF DEF(_RED)
GreenBikeSprite::        INCBIN "gfx/sprites/green_bike.2bpp"
GreenSprite::            INCBIN "gfx/sprites/green.2bpp"
ELSE
GreenBikeSprite::        INCBIN "gfx/sprites/yellow_bike.2bpp"
GreenSprite::            INCBIN "gfx/sprites/yellow.2bpp"
ENDC

IF DEF(_RED)
BlueSprite::             INCBIN "gfx/sprites/blue.2bpp"
ELSE
BlueSprite::             INCBIN "gfx/sprites/red.2bpp"
ENDC
OakSprite::              INCBIN "gfx/sprites/oak.2bpp"
YoungsterSprite::        INCBIN "gfx/sprites/youngster.2bpp"
MonsterSprite::          INCBIN "gfx/sprites/monster.2bpp"
CooltrainerFSprite::     INCBIN "gfx/sprites/cooltrainer_f.2bpp"
CooltrainerMSprite::     INCBIN "gfx/sprites/cooltrainer_m.2bpp"
LittleGirlSprite::       INCBIN "gfx/sprites/little_girl.2bpp"
BirdSprite::             INCBIN "gfx/sprites/bird.2bpp"
MiddleAgedManSprite::    INCBIN "gfx/sprites/middle_aged_man.2bpp"
GamblerSprite::          INCBIN "gfx/sprites/gambler.2bpp"
SuperNerdSprite::        INCBIN "gfx/sprites/super_nerd.2bpp"
GirlSprite::             INCBIN "gfx/sprites/girl.2bpp"
HikerSprite::            INCBIN "gfx/sprites/hiker.2bpp"
BeautySprite::           INCBIN "gfx/sprites/beauty.2bpp"
GentlemanSprite::        INCBIN "gfx/sprites/gentleman.2bpp"
DaisySprite::            INCBIN "gfx/sprites/daisy.2bpp"
BikerSprite::            INCBIN "gfx/sprites/biker.2bpp"
SailorSprite::           INCBIN "gfx/sprites/sailor.2bpp"
CookSprite::             INCBIN "gfx/sprites/cook.2bpp"
BikeShopClerkSprite::    INCBIN "gfx/sprites/bike_shop_clerk.2bpp"
MrFujiSprite::           INCBIN "gfx/sprites/mr_fuji.2bpp"
GiovanniSprite::         INCBIN "gfx/sprites/giovanni.2bpp"
RocketSprite::           INCBIN "gfx/sprites/rocket.2bpp"
ChannelerSprite::        INCBIN "gfx/sprites/channeler.2bpp"
WaiterSprite::           INCBIN "gfx/sprites/waiter.2bpp"
ErikaSprite::            INCBIN "gfx/sprites/erika.2bpp"
MiddleAgedWomanSprite::  INCBIN "gfx/sprites/middle_aged_woman.2bpp"
BrunetteGirlSprite::     INCBIN "gfx/sprites/brunette_girl.2bpp"
LanceSprite::            INCBIN "gfx/sprites/lance.2bpp"
MomSprite::              INCBIN "gfx/sprites/mom.2bpp"
BaldingGuySprite::       INCBIN "gfx/sprites/balding_guy.2bpp"
LittleBoySprite::        INCBIN "gfx/sprites/little_boy.2bpp"
GameboyKidSprite::       INCBIN "gfx/sprites/gameboy_kid.2bpp"
FairySprite::            INCBIN "gfx/sprites/fairy.2bpp"
; Relocated to "NPC Sprites 3"
;AgathaSprite::           INCBIN "gfx/sprites/agatha.2bpp"
;BrunoSprite::            INCBIN "gfx/sprites/bruno.2bpp"
;LoreleiSprite::          INCBIN "gfx/sprites/lorelei.2bpp"
;SeelSprite::             INCBIN "gfx/sprites/seel.2bpp"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Surfing Sprite
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IF DEF(_RED)
;SurfingSprite::          INCBIN "gfx/sprites/red_surf.2bpp"
SurfingMSprite::          INCBIN "gfx/sprites/red_swim.2bpp"
ELSE
;SurfingSprite::          INCBIN "gfx/sprites/blue_surf.2bpp"
SurfingMSprite::          INCBIN "gfx/sprites/blue_swim.2bpp"
ENDC
IF DEF(_RED)
SurfingFSprite::          INCBIN "gfx/sprites/green_swim.2bpp"
ELSE
SurfingFSprite::          INCBIN "gfx/sprites/yellow_swim.2bpp"
ENDC


SECTION "NPC Sprites 3", ROMX
AgathaSprite::           INCBIN "gfx/sprites/agatha.2bpp"
BrunoSprite::            INCBIN "gfx/sprites/bruno.2bpp"
LoreleiSprite::          INCBIN "gfx/sprites/lorelei.2bpp"
SeelSprite::             INCBIN "gfx/sprites/seel.2bpp"

; NEW! animated sprites added here

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Swimmer ♀ Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
SwimmerFSprite::         INCBIN "gfx/sprites/swimmer_f.2bpp"
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Rocket ♀ Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
RocketFSprite::          INCBIN "gfx/sprites/rocket_f.2bpp"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Fushsia City Lapras
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LaprasSprite::           INCBIN "gfx/sprites/lapras_surf.2bpp"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Officer Jenny Gift - Yellow
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Officer_JennySprite::    INCBIN "gfx/sprites/officer_jenny.2bpp"

; NEW! still sprites added here

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Daycare Ditto
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DittoSprite::            INCBIN "gfx/pokemon/icons/ditto.2bpp"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Bulbasaur Gift - Yellow
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
BulbasaurSprite::        INCBIN "gfx/pokemon/icons/bulbasaur.2bpp"
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Chansey - Yellow
;;;;;;;;;;;;;;;;;;;;;;;;;;;
ChanseySprite::          INCBIN "gfx/pokemon/icons/chansey.2bpp"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Missing Gym Leaders
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
BrockSprite::    		 INCBIN "gfx/sprites/brock.2bpp"
MistySprite::    		 INCBIN "gfx/sprites/misty.2bpp"
SabrinaSprite::    		 INCBIN "gfx/sprites/misty.2bpp"

; Unused

;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Soldier Trainer
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SoldierSprite::         INCBIN "gfx/sprites/soldier.2bpp"


IF GEN_2_GRAPHICS

; Adding Alternative Versions
IF DEF(_RED)
RedPicFront:: INCBIN "gfx/trainers/gstrainers/red.pic"
ELSE
RedPicFront:: INCBIN "gfx/trainers/gstrainers/blue.pic"
ENDC

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Female Player - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IF DEF(_RED)
GreenPicFront:: INCBIN "gfx/trainers/gstrainers/green.pic"
ELSE
GreenPicFront:: INCBIN "gfx/trainers/gstrainers/yellow.pic"
ENDC

rept 11 ; Padding
	db 0
endr
ELSE

; Moved to trainers folder
RedPicFront:: INCBIN "gfx/trainers/trainers/red.pic"
ENDC

ShrinkPic1::  INCBIN "gfx/player/shrink1.pic"
ShrinkPic2::  INCBIN "gfx/player/shrink2.pic"

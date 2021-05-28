IF GEN_2_GRAPHICS

; Adding Alternative Versions
IF DEF(_RED)
RedPicFront:: INCBIN "gfx/gstrainers/red.pic"
ELSE
RedPicFront:: INCBIN "gfx/gstrainers/blue.pic"
ENDC
rept 11 ; Padding
	db 0
endr
ELSE
RedPicFront:: INCBIN "gfx/player/red.pic"
ENDC

ShrinkPic1::  INCBIN "gfx/player/shrink1.pic"
ShrinkPic2::  INCBIN "gfx/player/shrink2.pic"

; Adding Version Alternatives
IF DEF(_RED)
RedFishingTilesFront:   INCBIN "gfx/overworld/red_fish_front.2bpp"
RedFishingTilesBack:    INCBIN "gfx/overworld/red_fish_back.2bpp"
RedFishingTilesSide:    INCBIN "gfx/overworld/red_fish_side.2bpp"
ELSE
RedFishingTilesFront:   INCBIN "gfx/overworld/blue_fish_front.2bpp"
RedFishingTilesBack:    INCBIN "gfx/overworld/blue_fish_back.2bpp"
RedFishingTilesSide:    INCBIN "gfx/overworld/blue_fish_side.2bpp"
ENDC
RedFishingRodTiles:     INCBIN "gfx/overworld/fishing_rod.2bpp"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Female Player - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IF DEF(_RED)
GreenFishingTilesFront: INCBIN "gfx/overworld/green_fish_front.2bpp"
GreenFishingTilesBack:  INCBIN "gfx/overworld/green_fish_back.2bpp"
GreenFishingTilesSide:  INCBIN "gfx/overworld/green_fish_side.2bpp"
ELSE
GreenFishingTilesFront: INCBIN "gfx/overworld/yellow_fish_front.2bpp"
GreenFishingTilesBack:  INCBIN "gfx/overworld/yellow_fish_back.2bpp"
GreenFishingTilesSide:  INCBIN "gfx/overworld/yellow_fish_side.2bpp"
ENDC

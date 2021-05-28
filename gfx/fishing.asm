; Adding Version Alternatives
IF DEF(_RED)
RedFishingTilesFront: INCBIN "gfx/overworld/red_fish_front.2bpp"
RedFishingTilesBack:  INCBIN "gfx/overworld/red_fish_back.2bpp"
RedFishingTilesSide:  INCBIN "gfx/overworld/red_fish_side.2bpp"
ELSE
RedFishingTilesFront: INCBIN "gfx/overworld/blue_fish_front.2bpp"
RedFishingTilesBack:  INCBIN "gfx/overworld/blue_fish_back.2bpp"
RedFishingTilesSide:  INCBIN "gfx/overworld/blue_fish_side.2bpp"
ENDC
RedFishingRodTiles:   INCBIN "gfx/overworld/fishing_rod.2bpp"

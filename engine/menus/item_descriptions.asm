;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Item Descriptions (Info) - Mateo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DisplayItemDescription:
	ld a, [wcf91]
	dec a
	cp a, HM01 - 1
	jr c, .ready
	sub ((HM01 - FLOOR_B4F) - 1) ; TM and HM ids are now adjusted to be after the rest of the normal items
.ready
	ld hl,ItemDescriptionPointers
	ld bc, 5
.add
	and a
	jr z, .doneAdding
	dec a
	add hl, bc
	jr .add
.doneAdding
	call PrintText
	ret

ItemDescriptionPointers:
	text_far _MasterBallDescription
	text_end
	text_far _UltraBallDescription
	text_end
	text_far _GreatBallDescription
	text_end
	text_far _PokeBallDescription
	text_end
	text_far _TownMapDescription
	text_end
	text_far _BicycleDescription
	text_end
	text_far _SurfboardDescription
	text_end
	text_far _SafariBallDescription
	text_end
	text_far _PokedexDescription
	text_end
	text_far _MoonStoneDescription
	text_end
	text_far _AntidoteDescription
	text_end
	text_far _BurnHealDescription
	text_end
	text_far _IceHealDescription
	text_end
	text_far _AwakeningDescription
	text_end
	text_far _ParalyzeHealDescription
	text_end
	text_far _FullRestoreDescription
	text_end
	text_far _MaxPotionDescription
	text_end
	text_far _HyperPotionDescription
	text_end
	text_far _SuperPotionDescription
	text_end
	text_far _PotionDescription
	text_end
	text_far _SafariBaitDescription
	text_end
	text_far _SafariRockDescription
	text_end
	text_far _OldSeaMapDescription
	text_end
	text_far _MysticTicketDescription
	text_end
	text_far _EonTicketDescription
	text_end
	text_far _TeruSama1ADescription
	text_end
	text_far _TeruSama1BDescription
	text_end
	text_far _TeruSama1CDescription
	text_end
	text_far _EscapeRopeDescription
	text_end
	text_far _RepelDescription
	text_end
	text_far _OldAmberDescription
	text_end
	text_far _FireStoneDescription
	text_end
	text_far _ThunderStoneDescription
	text_end
	text_far _WaterStoneDescription
	text_end
	text_far _HPUpDescription
	text_end
	text_far _ProteinDescription
	text_end
	text_far _IronDescription
	text_end
	text_far _CarbosDescription
	text_end
	text_far _CalciumDescription
	text_end
	text_far _RareCandyDescription
	text_end
	text_far _DomeFossilDescription
	text_end
	text_far _HelixFossilDescription
	text_end
	text_far _SecretKeyDescription
	text_end
	text_far _SunStoneDescription
	text_end
	text_far _BikeVoucherDescription
	text_end
	text_far _XAccuracyDescription
	text_end
	text_far _LeafStoneDescription
	text_end
	text_far _CardKeyDescription
	text_end
	text_far _NuggetDescription
	text_end
	text_far _ThiefBallDescription
	text_end
	text_far _PokeDollDescription
	text_end
	text_far _FullHealDescription
	text_end
	text_far _ReviveDescription
	text_end
	text_far _MaxReviveDescription
	text_end
	text_far _GuardSpecDescription
	text_end
	text_far _SuperRepelDescription
	text_end
	text_far _MaxRepelDescription
	text_end
	text_far _DireHitDescription
	text_end
	text_far _CoinDescription
	text_end
	text_far _FreshWaterDescription
	text_end
	text_far _SodaPopDescription
	text_end
	text_far _LemonadeDescription
	text_end
	text_far _SSTicketDescription
	text_end
	text_far _GoldTeethDescription
	text_end
	text_far _XAttackDescription
	text_end
	text_far _XDefendDescription
	text_end
	text_far _XSpeedDescription
	text_end
	text_far _XSpecialDescription
	text_end
	text_far _CoinCaseDescription
	text_end
	text_far _OaksParcelDescription
	text_end
	text_far _ItemFinderDescription
	text_end
	text_far _SilphScopeDescription
	text_end
	text_far _PokeFluteDescription
	text_end
	text_far _LiftKeyDescription
	text_end
	text_far _EXPShareDescription
	text_end
	text_far _OldRodDescription
	text_end
	text_far _GoodRodDescription
	text_end
	text_far _SuperRodDescription
	text_end
	text_far _PPUpDescription
	text_end
	text_far _EtherDescription
	text_end
	text_far _MaxEtherDescription
	text_end
	text_far _ElixerDescription
	text_end
	text_far _MaxElixerDescription
	text_end
	text_far _FloorB2FDescription
	text_end
	text_far _FloorB1FDescription
	text_end
	text_far _Floor1FDescription
	text_end
	text_far _Floor2FDescription
	text_end
	text_far _Floor3FDescription
	text_end
	text_far _Floor4FDescription
	text_end
	text_far _Floor5FDescription
	text_end
	text_far _Floor6FDescription
	text_end
	text_far _Floor7FDescription
	text_end
	text_far _Floor8FDescription
	text_end
	text_far _Floor9FDescription
	text_end
	text_far _Floor10FDescription
	text_end
	text_far _Floor11FDescription
	text_end
	text_far _FloorB4FDescription
	text_end

;;;;;;;;;;;;;;;;;;;;;;;;
; HM Descriptions
;;;;;;;;;;;;;;;;;;;;;;;;
	text_far _HM01Description
	text_end
	text_far _HM02Description
	text_end
	text_far _HM03Description
	text_end
	text_far _HM04Description
	text_end
	text_far _HM05Description
	text_end
	
;;;;;;;;;;;;;;;;;;;;;;;;
; TM Descriptions
;;;;;;;;;;;;;;;;;;;;;;;;
	text_far _TM01Description
	text_end
	text_far _TM02Description
	text_end
	text_far _TM03Description
	text_end
	text_far _TM04Description
	text_end
	text_far _TM05Description
	text_end
	text_far _TM06Description
	text_end
	text_far _TM07Description
	text_end
	text_far _TM08Description
	text_end
	text_far _TM09Description
	text_end
	text_far _TM10Description
	text_end
	text_far _TM11Description
	text_end
	text_far _TM12Description
	text_end
	text_far _TM13Description
	text_end
	text_far _TM14Description
	text_end
	text_far _TM15Description
	text_end
	text_far _TM16Description
	text_end
	text_far _TM17Description
	text_end
	text_far _TM18Description
	text_end
	text_far _TM19Description
	text_end
	text_far _TM20Description
	text_end
	text_far _TM21Description
	text_end
	text_far _TM22Description
	text_end
	text_far _TM23Description
	text_end
	text_far _TM24Description
	text_end
	text_far _TM25Description
	text_end
	text_far _TM26Description
	text_end
	text_far _TM27Description
	text_end
	text_far _TM28Description
	text_end
	text_far _TM29Description
	text_end
	text_far _TM30Description
	text_end
	text_far _TM31Description
	text_end
	text_far _TM32Description
	text_end
	text_far _TM33Description
	text_end
	text_far _TM34Description
	text_end
	text_far _TM35Description
	text_end
	text_far _TM36Description
	text_end
	text_far _TM37Description
	text_end
	text_far _TM38Description
	text_end
	text_far _TM39Description
	text_end
	text_far _TM40Description
	text_end
	text_far _TM41Description
	text_end
	text_far _TM42Description
	text_end
	text_far _TM43Description
	text_end
	text_far _TM44Description
	text_end
	text_far _TM45Description
	text_end
	text_far _TM46Description
	text_end
	text_far _TM47Description
	text_end
	text_far _TM48Description
	text_end
	text_far _TM49Description
	text_end
	text_far _TM50Description
	text_end

EmptyDescription:
	text_far _EmptyDescription
	text_end

FlashItemDescription_Mart:
	; d = item id
	ld a, d
	cp $ff
	ld hl, EmptyDescription
	jr z, .doneAdding
	dec a
	cp a, HM01 - 1
	jr c, .ready
	sub ((HM01 - FLOOR_B4F) - 1) ; TM and HM ids are now adjusted to be after the rest of the normal items
.ready
	ld hl,ItemDescriptionPointers_Mart
	ld bc, 5
.add
	and a
	jr z, .doneAdding
	dec a
	add hl, bc
	jr .add
.doneAdding
	push hl
	ld hl, wd730
	set 6, [hl]
	pop hl
	call PrintText
	ld hl, wd730
	res 6, [hl]
	ret

ItemDescriptionPointers_Mart:
	text_far _MasterBallDescription_Mart
	text_end
	text_far _UltraBallDescription_Mart
	text_end
	text_far _GreatBallDescription_Mart
	text_end
	text_far _PokeBallDescription_Mart
	text_end
	text_far _TownMapDescription_Mart
	text_end
	text_far _BicycleDescription_Mart
	text_end
	text_far _SurfboardDescription_Mart
	text_end
	text_far _SafariBallDescription_Mart
	text_end
	text_far _PokedexDescription_Mart
	text_end
	text_far _MoonStoneDescription_Mart
	text_end
	text_far _AntidoteDescription_Mart
	text_end
	text_far _BurnHealDescription_Mart
	text_end
	text_far _IceHealDescription_Mart
	text_end
	text_far _AwakeningDescription_Mart
	text_end
	text_far _ParalyzeHealDescription_Mart
	text_end
	text_far _FullRestoreDescription_Mart
	text_end
	text_far _MaxPotionDescription_Mart
	text_end
	text_far _HyperPotionDescription_Mart
	text_end
	text_far _SuperPotionDescription_Mart
	text_end
	text_far _PotionDescription_Mart
	text_end
	text_far _SafariBaitDescription_Mart
	text_end
	text_far _SafariRockDescription_Mart
	text_end
	text_far _OldSeaMapDescription_Mart
	text_end
	text_far _MysticTicketDescription_Mart
	text_end
	text_far _EonTicketDescription_Mart
	text_end
	text_far _TeruSama1ADescription_Mart
	text_end
	text_far _TeruSama1BDescription_Mart
	text_end
	text_far _TeruSama1CDescription_Mart
	text_end
	text_far _EscapeRopeDescription_Mart
	text_end
	text_far _RepelDescription_Mart
	text_end
	text_far _OldAmberDescription_Mart
	text_end
	text_far _FireStoneDescription_Mart
	text_end
	text_far _ThunderStoneDescription_Mart
	text_end
	text_far _WaterStoneDescription_Mart
	text_end
	text_far _HPUpDescription_Mart
	text_end
	text_far _ProteinDescription_Mart
	text_end
	text_far _IronDescription_Mart
	text_end
	text_far _CarbosDescription_Mart
	text_end
	text_far _CalciumDescription_Mart
	text_end
	text_far _RareCandyDescription_Mart
	text_end
	text_far _DomeFossilDescription_Mart
	text_end
	text_far _HelixFossilDescription_Mart
	text_end
	text_far _SecretKeyDescription_Mart
	text_end
	text_far _SunStoneDescription_Mart
	text_end
	text_far _BikeVoucherDescription_Mart
	text_end
	text_far _XAccuracyDescription_Mart
	text_end
	text_far _LeafStoneDescription_Mart
	text_end
	text_far _CardKeyDescription_Mart
	text_end
	text_far _NuggetDescription_Mart
	text_end
	text_far _ThiefBallDescription_Mart
	text_end
	text_far _PokeDollDescription_Mart
	text_end
	text_far _FullHealDescription_Mart
	text_end
	text_far _ReviveDescription_Mart
	text_end
	text_far _MaxReviveDescription_Mart
	text_end
	text_far _GuardSpecDescription_Mart
	text_end
	text_far _SuperRepelDescription_Mart
	text_end
	text_far _MaxRepelDescription_Mart
	text_end
	text_far _DireHitDescription_Mart
	text_end
	text_far _CoinDescription_Mart
	text_end
	text_far _FreshWaterDescription_Mart
	text_end
	text_far _SodaPopDescription_Mart
	text_end
	text_far _LemonadeDescription_Mart
	text_end
	text_far _SSTicketDescription_Mart
	text_end
	text_far _GoldTeethDescription_Mart
	text_end
	text_far _XAttackDescription_Mart
	text_end
	text_far _XDefendDescription_Mart
	text_end
	text_far _XSpeedDescription_Mart
	text_end
	text_far _XSpecialDescription_Mart
	text_end
	text_far _CoinCaseDescription_Mart
	text_end
	text_far _OaksParcelDescription_Mart
	text_end
	text_far _ItemFinderDescription_Mart
	text_end
	text_far _SilphScopeDescription_Mart
	text_end
	text_far _PokeFluteDescription_Mart
	text_end
	text_far _LiftKeyDescription_Mart
	text_end
	text_far _EXPShareDescription_Mart
	text_end
	text_far _OldRodDescription_Mart
	text_end
	text_far _GoodRodDescription_Mart
	text_end
	text_far _SuperRodDescription_Mart
	text_end
	text_far _PPUpDescription_Mart
	text_end
	text_far _EtherDescription_Mart
	text_end
	text_far _MaxEtherDescription_Mart
	text_end
	text_far _ElixerDescription_Mart
	text_end
	text_far _MaxElixerDescription_Mart
	text_end
	text_far _FloorB2FDescription_Mart
	text_end
	text_far _FloorB1FDescription_Mart
	text_end
	text_far _Floor1FDescription_Mart
	text_end
	text_far _Floor2FDescription_Mart
	text_end
	text_far _Floor3FDescription_Mart
	text_end
	text_far _Floor4FDescription_Mart
	text_end
	text_far _Floor5FDescription_Mart
	text_end
	text_far _Floor6FDescription_Mart
	text_end
	text_far _Floor7FDescription_Mart
	text_end
	text_far _Floor8FDescription_Mart
	text_end
	text_far _Floor9FDescription_Mart
	text_end
	text_far _Floor10FDescription_Mart
	text_end
	text_far _Floor11FDescription_Mart
	text_end
	text_far _FloorB4FDescription_Mart
	text_end
	
;;;;;;;;;;;;;;;;;;;;;;;;
; HM Descriptions
;;;;;;;;;;;;;;;;;;;;;;;;
	text_far _HM01Description_Mart
	text_end
	text_far _HM02Description_Mart
	text_end
	text_far _HM03Description_Mart
	text_end
	text_far _HM04Description_Mart
	text_end
	text_far _HM05Description_Mart
	text_end
	
;;;;;;;;;;;;;;;;;;;;;;;;
; TM Descriptions
;;;;;;;;;;;;;;;;;;;;;;;;
	text_far _TM01Description_Mart
	text_end
	text_far _TM02Description_Mart
	text_end
	text_far _TM03Description_Mart
	text_end
	text_far _TM04Description_Mart
	text_end
	text_far _TM05Description_Mart
	text_end
	text_far _TM06Description_Mart
	text_end
	text_far _TM07Description_Mart
	text_end
	text_far _TM08Description_Mart
	text_end
	text_far _TM09Description_Mart
	text_end
	text_far _TM10Description_Mart
	text_end
	text_far _TM11Description_Mart
	text_end
	text_far _TM12Description_Mart
	text_end
	text_far _TM13Description_Mart
	text_end
	text_far _TM14Description_Mart
	text_end
	text_far _TM15Description_Mart
	text_end
	text_far _TM16Description_Mart
	text_end
	text_far _TM17Description_Mart
	text_end
	text_far _TM18Description_Mart
	text_end
	text_far _TM19Description_Mart
	text_end
	text_far _TM20Description_Mart
	text_end
	text_far _TM21Description_Mart
	text_end
	text_far _TM22Description_Mart
	text_end
	text_far _TM23Description_Mart
	text_end
	text_far _TM24Description_Mart
	text_end
	text_far _TM25Description_Mart
	text_end
	text_far _TM26Description_Mart
	text_end
	text_far _TM27Description_Mart
	text_end
	text_far _TM28Description_Mart
	text_end
	text_far _TM29Description_Mart
	text_end
	text_far _TM30Description_Mart
	text_end
	text_far _TM31Description_Mart
	text_end
	text_far _TM32Description_Mart
	text_end
	text_far _TM33Description_Mart
	text_end
	text_far _TM34Description_Mart
	text_end
	text_far _TM35Description_Mart
	text_end
	text_far _TM36Description_Mart
	text_end
	text_far _TM37Description_Mart
	text_end
	text_far _TM38Description_Mart
	text_end
	text_far _TM39Description_Mart
	text_end
	text_far _TM40Description_Mart
	text_end
	text_far _TM41Description_Mart
	text_end
	text_far _TM42Description_Mart
	text_end
	text_far _TM43Description_Mart
	text_end
	text_far _TM44Description_Mart
	text_end
	text_far _TM45Description_Mart
	text_end
	text_far _TM46Description_Mart
	text_end
	text_far _TM47Description_Mart
	text_end
	text_far _TM48Description_Mart
	text_end
	text_far _TM49Description_Mart
	text_end
	text_far _TM50Description_Mart
	text_end

CeruleanPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

CeruleanPokecenter_TextPointers:
	dw CeruleanHealNurseText
	dw CeruleanPokecenterText2
	dw CeruleanPokecenterText3
	dw CeruleanTradeNurseText
	dw CeruleanPokecenterText5 ; Adding Chansey - Yellow

CeruleanTradeNurseText:
	script_cable_club_receptionist

CeruleanHealNurseText:
	script_pokecenter_nurse

CeruleanPokecenterText2:
	text_far _CeruleanPokecenterText2
	text_end

CeruleanPokecenterText3:
	text_far _CeruleanPokecenterText3
	text_end
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Adding Chansey - Yellow
;;;;;;;;;;;;;;;;;;;;;;;;;;;
CeruleanPokecenterText5:
	text_asm
	callfar PokecenterChanseyText
	jp TextScriptEnd

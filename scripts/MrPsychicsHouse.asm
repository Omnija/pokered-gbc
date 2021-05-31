MrPsychicsHouse_Script:
	jp EnableAutoTextBoxDrawing

MrPsychicsHouse_TextPointers:
	dw SaffronHouse2Text1
	dw SaffronHouse2Text2
	dw SaffronHouse2Text3
	dw SaffronHouse2Text4

SaffronHouse2Text1:
	text_asm
	CheckEvent EVENT_GOT_TM29
	jr nz, .got_item
	ld hl, TM29PreReceiveText
	call PrintText
	lb bc, TM_PSYCHIC_M, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, ReceivedTM29Text
	call PrintText
	SetEvent EVENT_GOT_TM29
	jr .done
.bag_full
	ld hl, TM29NoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, TM29ExplanationText
	call PrintText
.done
	jp TextScriptEnd

TM29PreReceiveText:
	text_far _TM29PreReceiveText
	text_end

ReceivedTM29Text:
	text_far _ReceivedTM29Text
	sound_get_item_1
	text_end

TM29ExplanationText:
	text_far _TM29ExplanationText
	text_end

TM29NoRoomText:
	text_far _TM29NoRoomText
	text_end
	
SaffronHouse2Text2:
	text_far MoveDeleterText1
	text_end

SaffronHouse2Text3:
	text_far MoveRelearnerText1
	text_end 
	
SaffronHouse2Text4:
	text_asm
	callfar MoveTutorScriptSpecial
	jp TextScriptEnd


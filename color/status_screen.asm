; Hooks for drawing exp bars in status_screen.asm

StatusScreenHook:
	; b = SET_PAL_STATUS_SCREEN
	call RunPaletteCommand
IF GEN_2_GRAPHICS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Changing Status Screen Design
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	decoord 8, 17 ; 18, 5
	ld a, [wBattleMonLevel]
	push af
	ld a, [wLoadedMonLevel]
	ld [wBattleMonLevel], a
	farcall PrintEXPBar
	pop af
	ld [wBattleMonLevel], a
ENDC
	ret

; Only called when GEN_2_GRAPHICS is set
StatusScreen2Hook:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Changing Status Screen Design - [Removed]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	hlcoord 9, 11 ; 19, 1
	lb bc, 6, 8 ; 6, 10
	jp DrawLineBox ; Draws the box around name, HP and status

FindItemInBallScript::
	callasm .TryReceiveItem
	iffalse .no_room
	disappear LAST_TALKED
	opentext
	writetext FoundItemText
	specialsound
	itemnotify
	closetext
	end

.no_room
	opentext
	writetext FoundItemText
	waitbutton
	pocketisfull
	closetext
	end

.TryReceiveItem:
	xor a
	ldh [hScriptVar], a
	ld a, [wCurItemBallContents]
	ld [wNamedObjectIndexBuffer], a
	call GetItemName
	ld hl, wStringBuffer3
	call CopyName2
	ld a, [wCurItemBallContents]
	ld [wCurItem], a
	ld a, [wCurItemBallQuantity]
	ld [wItemQuantityChangeBuffer], a
	ld hl, wNumItems
	call ReceiveItem
	ret nc
	ld a, $1
	ldh [hScriptVar], a
	ret

FindKeyItemInBallScript::
	callasm .ReceiveKeyItem
	disappear LAST_TALKED
	opentext
	writetext FoundItemText
	specialsound
	keyitemnotify
	closetext
	end

.ReceiveKeyItem:
	xor a
	ldh [hScriptVar], a
	ld a, [wCurItemBallContents]
	inc a
	ld [wNamedObjectIndexBuffer], a
	call GetKeyItemName
	ld hl, wStringBuffer3
	call CopyName2
	ld a, [wCurItemBallContents]
	ld [wCurKeyItem], a
	call ReceiveKeyItem
	ld a, $1
	ldh [hScriptVar], a
	ret

FindTMHMInBallScript::
	callasm .ReceiveTMHM
	disappear LAST_TALKED
	opentext
	writetext FoundItemText
	playsound SFX_GET_TM
	waitsfx
	tmhmnotify
	closetext
	end

.ReceiveTMHM:
	xor a
	ldh [hScriptVar], a
	ld a, [wCurItemBallContents]
	ld [wNamedObjectIndexBuffer], a
	call GetTMHMName
	ld hl, wStringBuffer3
	call CopyName2

	; off by one error?
	ld a, [wd265]
	inc a
	ld [wd265], a

	predef GetTMHMMove
	ld a, [wd265]
	ld [wPutativeTMHMMove], a
	call GetMoveName

	ld hl, wStringBuffer3 + 4 ; assume all TM names are 4 characters, "TM##"
	ld a, " "
	ld [hli], a
	call CopyName2

	ld a, [wCurItemBallContents]
	ld [wCurTMHM], a
	call ReceiveTMHM
	ld a, $1
	ldh [hScriptVar], a
	ret

FoundItemText:
	; found @ !
	text_jump UnknownText_0x1c0a1c
	text_end

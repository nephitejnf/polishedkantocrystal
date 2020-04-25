GoldenrodPokecomCenter1F_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, JudgeMachineScreenCallback

	db 4 ; warp events
	warp_event  6, 15, GOLDENROD_CITY, 15
	warp_event  7, 15, GOLDENROD_CITY, 15
	warp_event  1,  6, GOLDENROD_POKECOM_CENTER_OFFICE, 2
	warp_event  0, 15, POKECENTER_2F, 1

	db 0 ; coord events

	db 18 ; bg events
	bg_event 11,  7, SIGNPOST_READ, PokemonJournalWhitneyScript
	bg_event 24,  5, SIGNPOST_RIGHT, JudgeMachineScript
	bg_event 24,  6, SIGNPOST_RIGHT, JudgeMachineScript
	bg_event 24,  7, SIGNPOST_RIGHT, JudgeMachineScript
	bg_event 24,  8, SIGNPOST_RIGHT, JudgeMachineScript
	bg_event 24,  9, SIGNPOST_RIGHT, JudgeMachineScript
	bg_event 24, 10, SIGNPOST_RIGHT, JudgeMachineScript
	bg_event 25, 11, SIGNPOST_UP, JudgeMachineScript
	bg_event 26, 11, SIGNPOST_UP, JudgeMachineScript
	bg_event 27, 11, SIGNPOST_UP, JudgeMachineScript
	bg_event 28, 11, SIGNPOST_UP, JudgeMachineScript
	bg_event 29,  5, SIGNPOST_LEFT, JudgeMachineScript
	bg_event 29,  6, SIGNPOST_LEFT, JudgeMachineScript
	bg_event 29,  7, SIGNPOST_LEFT, JudgeMachineScript
	bg_event 29,  8, SIGNPOST_LEFT, JudgeMachineScript
	bg_event 29,  9, SIGNPOST_LEFT, JudgeMachineScript
	bg_event 29, 10, SIGNPOST_LEFT, JudgeMachineScript
	bg_event 24,  3, SIGNPOST_ITEM + RARE_CANDY, EVENT_GOLDENROD_POKECOM_CENTER_1F_HIDDEN_RARE_CANDY

	db 13 ; object events
	object_event 23, 10, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, JudgeMachineEngineerScript, EVENT_JUDGE_MACHINE_ENGINEER
	object_event  7,  7, SPRITE_BOWING_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, NurseScript_0x60f91, -1
	object_event  0, 12, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x62105, -1
	object_event  3, 11, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x62260, -1
	object_event 12, 14, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, PokefanFScript_0x61024, -1
	object_event 16,  8, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, WonderTradeReceptionistScript, -1
	object_event  8, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x61c89, -1
	object_event 27, 13, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x61e5c, -1
	object_event 21,  6, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x61fc9, -1
	object_event 18, 13, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x62222, -1
	object_event 18,  9, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x61cef, -1
	object_event  3,  9, SPRITE_MISC_OVERHEAD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, InfoSignScript, -1
	object_event 23,  3, SPRITE_MISC_OVERHEAD, SPRITEMOVEDATA_POKECOM_NEWS, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, end, NULL, -1

	const_def 1 ; object constants
	const GOLDENRODPOKECOMCENTER1F_ENGINEER

JudgeMachineScreenCallback:
	checkflag ENGINE_JUDGE_MACHINE
	iffalse .Done
	changeblock 24, 0, $49
	changeblock 26, 0, $4a
	changeblock 28, 0, $4b
	changeblock 24, 2, $4c
	changeblock 26, 2, $4d
	changeblock 28, 2, $4e
.Done
	return

NurseScript_0x60f91:
	setevent EVENT_WELCOMING_TO_POKECOM_CENTER
	jumpstd pokecenternurse

UnknownText_0x62105:
	text "The Colosseum"
	line "upstairs is for"
	cont "link battles."

	para "Battle records are"
	line "posted on the"

	para "wall, so I can't"
	line "afford to lose."
	done

UnknownText_0x62260:
	text "A higher level"
	line "#mon doesn't"
	cont "always win."

	para "After all, it may"
	line "have a type dis-"
	cont "advantage."

	para "I don't think"
	line "there is a single"

	para "#mon that is"
	line "the toughest."
	done

PokefanFScript_0x61024:
	checkevent EVENT_GOT_EVIOLITE_IN_GOLDENROD
	iftrue_jumptextfaceplayer GoldenrodPokeComCenter1FPokefanFGotEvioliteText
	faceplayer
	opentext
	writetext UnknownText_0x623fb
	waitbutton
	checkitem EON_MAIL
	iffalse_jumpopenedtext UnknownText_0x62509
	writetext UnknownText_0x6248c
	yesorno
	iffalse_jumpopenedtext UnknownText_0x62509
	takeitem EON_MAIL
	writetext UnknownText_0x62549
	waitbutton
	writetext UnknownText_0x624a4
	waitbutton
	verbosegiveitem EVIOLITE
	iffalse .NoRoomForEviolite
	setevent EVENT_GOT_EVIOLITE_IN_GOLDENROD
	thisopenedtext

	text "My daughter will"
	line "be delighted!"
	done

.NoRoomForEviolite:
	giveitem EON_MAIL
	thisopenedtext

	text "Oh… Well, another"
	line "time, then."
	done

UnknownText_0x623fb:
	text "Oh my, your bag"
	line "looks so heavy!"

	para "Oh! Do you happen"
	line "to have something"
	cont "named Eon Mail?"

	para "My daughter is"
	line "after one."

	para "You can part with"
	line "one, can't you?"
	done

UnknownText_0x6248c:
	text "Give away an Eon"
	line "Mail?"
	done

UnknownText_0x624a4:
	text "Oh, that's great!"
	line "Thank you, honey!"

	para "Here, this is for"
	line "you in return!"
	done

UnknownText_0x62509:
	text "Oh? You don't have"
	line "one? Too bad."
	done

UnknownText_0x62549:
	text "<PLAYER> gave away"
	line "the Eon Mail."
	done

GoldenrodPokeComCenter1FPokefanFGotEvioliteText:
	text "Thank you for"
	line "the Eon Mail!"

	para "My daughter will"
	line "be delighted!"
	done

WonderTradeReceptionistScript:
	opentext
	writetext WonderTradeIntroText
	waitbutton
	checkevent EVENT_INTRODUCED_TEALA
	iftrue .introduced
	writetext IntroduceTealaText
	waitbutton
	setevent EVENT_INTRODUCED_TEALA
.introduced
	writetext WonderTradeExplanationText
	buttonsound
	special WonderTrade
	iffalse .done
	playmusic MUSIC_POKECOM_CENTER
	writetext WonderTradeCompleteText
	playsound SFX_DEX_FANFARE_80_109
	waitsfx
	ifnotequal 2, .done
	setevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	playmusic MUSIC_SPIKY_EARED_PICHU_HGSS
	writetext WonderTradeForGSBallPichuText
	buttonsound
	verbosegivekeyitem GS_BALL
	writetext WonderTradeForGSBallPichuText2
	waitbutton
.done
	jumpopenedtext WonderTradeGoodbyeText

WonderTradeIntroText:
	text "Hello! Welcome to"
	line "#Com Center"
	cont "Wonder Trade Hub."
	done

IntroduceTealaText:
	text "I'm Teala, your"
	line "trade attendant."
	done

WonderTradeExplanationText:
	text "You can trade"
	line "#mon with other"
	cont "people far away."
	done

WonderTradeCompleteText:
	text "It's your new"
	line "partner."

	para "Please take care"
	line "of it with love."
	done

WonderTradeGoodbyeText:
	text "We hope to see you"
	line "again."
	done

WonderTradeForGSBallPichuText:
	text "…But what's this?"
	line "Is something wrong"

	para "with the Wonder"
	line "Trade machine?"

	para "It seems like you"
	line "just traded a"

	para "#mon with"
	line "yourself."

	para "But that can't be"
	line "right… You can't"

	para "be in two places"
	line "at once."

	para "Besides, the ma-"
	line "chine communicates"

	para "through space,"
	line "not time…"

	para "And what is that"
	line "strange Ball it's"

	para "holding? Is it an"
	line "Apricorn Ball?"

	para "Here, take a look…"
	done

WonderTradeForGSBallPichuText2:
	text "It may be unusual,"
	line "but a #mon"
	cont "is a #mon."

	para "Please look after"
	line "it carefully."
	done

InfoSignScript:
	thistext

	text "#Com Center"
	line "1F Information"

	para "Left:"
	line "Administration"

	para "Center:"
	line "Wonder Trade Hub"

	para "Right:"
	line "<PK><MN> Judge Machine"
	done

PokemonJournalWhitneyScript:
	setflag ENGINE_READ_WHITNEY_JOURNAL
	thistext

	text "#mon Journal"

	para "Special Feature:"
	line "Leader Whitney!"

	para "Whitney is said to"
	line "admire Bruno of"
	cont "the Elite Four."
	done

JudgeMachineScript:
	opentext
	special JudgeMachine
	waitendtext

UnknownText_0x61c89:
	text "Whoa, this #mon"
	line "Center is huge."

	para "They just built"
	line "this place. They"

	para "installed lots of"
	line "new machines too."
	done

UnknownText_0x61cef:
	text "I thought up a fun"
	line "new thing for the"
	cont "Wonder Trade Hub!"

	para "I make a Pidgey"
	line "hold Mail, then"

	para "put it up for"
	line "trade for another"
	cont "one!"

	para "If everyone did"
	line "that, Mail could"

	para "be traded with all"
	line "sorts of people!"

	para "I call it Pidgey"
	line "Mail!"

	para "If it becomes"
	line "popular, I might"

	para "make lots of new"
	line "friends!"
	done

JudgeMachineEngineerScript:
	checkevent EVENT_BRED_AN_EGG
	iffalse .NotBredYet
	showtextfaceplayer JudgeMachineEngineerFinishedText
	checkcode VAR_FACING
	ifnotequal RIGHT, .GoLeft
	applyonemovement GOLDENRODPOKECOMCENTER1F_ENGINEER, step_down
	applyonemovement GOLDENRODPOKECOMCENTER1F_ENGINEER, step_left
.GoLeft
	applymovement GOLDENRODPOKECOMCENTER1F_ENGINEER, JudgeMachineEngineerLeavesMovement
	disappear GOLDENRODPOKECOMCENTER1F_ENGINEER
	setflag ENGINE_JUDGE_MACHINE
	changeblock 24, 0, $49
	changeblock 26, 0, $4a
	changeblock 28, 0, $4b
	changeblock 24, 2, $4c
	changeblock 26, 2, $4d
	changeblock 28, 2, $4e
	end

.NotBredYet:
	showtextfaceplayer JudgeMachineEngineerWorkingText
	turnobject LAST_TALKED, RIGHT
	end

JudgeMachineEngineerWorkingText:
	text "The #mon"
	line "Judge Machine…"

	para "It's been my dream"
	line "for a long time."

	para "And with the #-"
	line "Com Center funding"
	cont "my work, it can"
	cont "become a reality,"

	para "even if it takes"
	line "a computer the"
	cont "size of a room!"

	para "Think of how use-"
	line "ful it will be"
	cont "for Breeders who"
	cont "hatch many Eggs!"

	para "I'm almost done…"
	done

JudgeMachineEngineerFinishedText:
	text "The #mon"
	line "Judge Machine…"

	para "It's finally done!"
	line "My dream has be-"
	cont "come reality!"

	para "What is it?"
	line "It's a machine for"

	para "judging the stats"
	line "of any #mon!"

	para "It uses the latest"
	line "AI technology to"

	para "evaluate a #-"
	line "mon's inherent"
	cont "potential, as well"

	para "as the effort it's"
	line "put into becoming"
	cont "stronger."

	para "It's the perfect"
	line "way to measure a"
	cont "#mon's power!"

	para "Go ahead and try"
	line "using it. It's"
	cont "perfectly safe."

	para "As for me, I'm ta-"
	line "king a vacation!"
	done

JudgeMachineEngineerLeavesMovement:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

UnknownText_0x61e5c:
	text "Some girl I don't"
	line "know sent me her"
	cont "Sunflora."

	para "You should trade"
	line "for a #mon that"
	cont "you want."
	done

UnknownText_0x61fc9:
	text "The machines here"
	line "can't all be used"
	cont "yet."

	para "Still, it's nice"
	line "coming to a trendy"

	para "place before other"
	line "people."
	done

UnknownText_0x62222:
	text "Just seeing all"
	line "these new things"

	para "here makes me feel"
	line "younger!"
	done

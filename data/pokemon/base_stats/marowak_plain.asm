if DEF(FAITHFUL)
	db  60,  80, 110,  45,  50,  80
	;   hp  atk  def  spd  sat  sdf
else
	db  60,  80, 110,  70,  50,  80
	;   hp  atk  def  spd  sat  sdf
endc

	db GROUND, GROUND
	db 75 ; catch rate
if DEF(FAITHFUL)
	db 124 ; base exp
else
	db 140 ; base exp
endc
	db NO_ITEM ; item 1
	db THICK_CLUB ; item 2
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	dn 6, 6 ; frontpic dimensions
	db ROCK_HEAD ; ability 1
	db LIGHTNING_ROD ; ability 2
	db BATTLE_ARMOR ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn MONSTER, MONSTER ; egg groups

	; ev_yield
	ev_yield   0,   0,   2,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, BULLDOZE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, ROCK_SMASH, FOCUS_BLAST, FALSE_SWIPE, ENDURE, GIGA_IMPACT, STONE_EDGE, SWORDS_DANCE, STRENGTH, BODY_SLAM, COUNTER, DOUBLE_EDGE, EARTH_POWER, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, ICY_WIND, IRON_HEAD, KNOCK_OFF, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH
	; end

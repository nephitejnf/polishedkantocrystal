	db  50,  75,  90,  40,  10,  35
	;   hp  atk  def  spd  sat  sdf

	db ICE, STEEL
	db 255 ; catch rate
	db 93 ; base exp
	db NO_ITEM ; item 1
	db GRIP_CLAW ; item 2
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	dn 5, 5 ; frontpic dimensions
	db SNOW_CLOAK ; ability 1
	db SNOW_CLOAK ; ability 2
	db SLUSH_RUSH ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn FIELD, FIELD ; egg groups

	; ev_yield
	ev_yield   0,   0,   1,   0,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HAIL, BULK_UP, HIDDEN_POWER, SUNNY_DAY, HONE_CLAWS, ICE_BEAM, BLIZZARD, PROTECT, SAFEGUARD, BULLDOZE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, ROCK_SMASH, LEECH_LIFE, X_SCISSOR, ENDURE, SHADOW_CLAW, POISON_JAB, GYRO_BALL, SWORDS_DANCE, CUT, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, EARTH_POWER, HEADBUTT, ICE_PUNCH, IRON_HEAD, KNOCK_OFF, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER
	; end

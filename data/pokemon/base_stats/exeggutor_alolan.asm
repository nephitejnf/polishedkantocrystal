	db  95, 105,  85,  45, 125,  75
	;   hp  atk  def  spd  sat  sdf

	db GRASS, DRAGON
	db 45 ; catch rate
	db 212 ; base exp
	db NO_ITEM ; item 1
	db SITRUS_BERRY ; item 2
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	dn 7, 7 ; frontpic dimensions
	db FRISK ; ability 1
	db FRISK ; ability 2
	db HARVEST ; hidden ability
	db SLOW ; growth rate
	dn PLANT, PLANT ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   0,   2,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, BULLDOZE, SOLAR_BEAM, EARTHQUAKE, RETURN, PSYCHIC, DOUBLE_TEAM, REFLECT, FLAMETHROWER, SLUDGE_BOMB, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SMASH, ENERGY_BALL, ENDURE, DRAGON_PULSE, EXPLOSION, GIGA_IMPACT, FLASH, SWORDS_DANCE, STRENGTH, DOUBLE_EDGE, DREAM_EATER, EARTH_POWER, HEADBUTT, ROLLOUT, SEED_BOMB, SKILL_SWAP, SLEEP_TALK, SWAGGER, TRICK_ROOM, ZEN_HEADBUTT
	; end

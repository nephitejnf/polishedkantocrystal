	db  73,  67,  75, 109,  81, 100
	;   hp  atk  def  spd  sat  sdf

	db ICE, FAIRY
	db 75 ; catch rate
	db 178 ; base exp
	db ALWAYS_ITEM_2 ; item 1
	db ASPEAR_BERRY ; item 2
	dn FEMALE_75, 3 ; gender, step cycles to hatch
	dn 7, 7 ; frontpic dimensions
	db SNOW_CLOAK ; ability 1
	db SNOW_CLOAK ; ability 2
	db SNOW_WARNING ; hidden ability
	db MEDIUM_FAST ; growth rate
	dn FIELD, FIELD ; egg groups

	; ev_yield
	ev_yield   0,   0,   0,   1,   0,   1
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm CURSE, CALM_MIND, ROAR, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SAFEGUARD, SOLAR_BEAM, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, DAZZLINGLEAM, DARK_PULSE, ENDURE, AVALANCHE, GIGA_IMPACT, AGILITY, BODY_SLAM, CHARM, DOUBLE_EDGE, DREAM_EATER, HEADBUTT, ICY_WIND, SLEEP_TALK, SWAGGER, ZEN_HEADBUTT
	; end


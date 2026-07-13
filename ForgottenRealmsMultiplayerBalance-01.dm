#modname "Forgotten Realms Multiplayer Balance 0.1"
#icon "FRlogo.tga"
#version 0.1
#domversion 6.00

#description "The Forgotten Realms Multiplayer Balance Patch

This is an unofficial balance patch for the Forgotten Realms mod.
It is not intended to achieve true balance - or anywhere near - just tone down anything that is outright ridiculous."

#selectmonster 5030 - Tymora "Lady Luck"
#sailing 6 6 -- boat should be large enough to carry herself
#end

#selectmonster 6688 -- Murabir General
-- Judging by the sprite, not intended to be naked and unarmed
#weapon 4 -- lance
#weapon 746 -- scimitar
#armor 9 -- plate cuirass
#armor 118 -- half helm
#armor 2 -- shield
#end

-- BLOOD NERFS

#selectspell  "Summon an Erinye Seductress"
#fatiguecost 2800
#end

#selectmonster 7109 -- Erinye
#douse -1
#end

#selectspell "Bind Kyton"
#fatiguecost 2000
#end

#selectmonster 7107 -- Kyton
#douse -1
#end

#selectspell "Summon a Contract Devil"
#fatiguecost 3000
#end

#selectspell "Summon Infernal Barghest"
#fatiguecost 3500
#end

#selectitem 393 -- Sanguine Dowsing Rod
#nodemon
#end

#selectitem 1000
#copyitem 430 -- The Flying Ship
#copyspr 430
#constlevel 11
#name "Halruaan Flight Mechanism"
#descr "This item allows the Halruaan Skyship to carry troops through the air."
#cursed
#nofind
#end

#selectmonster 8032 -- Halruaan Skyship
#clearspec
#clearweapons
#cleararmor
#descr "Halruaan Skyships were sailing vessels that flew through the air. They were the most famous wonder to come from the land of Halruaa. While they were capable of transporting goods and individuals, they were quite slow depending on the winds aloft, and lost bouyancy the higher in altitude they levitated. Halruaan Skyships could only carry 10-15 tons at 100' (30 meters) of altitude, far less than seacraft. At 3600 feet (1 km), they could barely suspend their own weight plus that of the crew. They were thus unable to traverse high mountains and had to navigate the same passes used by ground tranportation.  

The original creation of Skyships dated back to Netheril and were a carefully guarded secret of Halruaa for centuries. Levitated by a series of magical plates operated via control rod, the ships were otherwise powered by sails like a seagoing vessel and required masts, rigging, and substantial crews to operate. Most were luxury mercantile or research vessels, but Halruaa did utilize these ships for war on occassion. Most carried a ballista or two for self-defense and no crew operated without spellcasters aboard.

- There is no perfect way to model units that float above melee. While airshield has been added to represent the difficulty of firing arrows to skyship altitudes, you'll still need to support your skyships with sufficient ground forces."
#drawsize -15
#name "Halruaan Skyship"
#nametype 277 -- Skyships
#miscshape
#itemslots 1835008 -- 3 misc
#gcost 10030
#rcost 20
#slowrec
#hp 80
#size 8
#prot 15
#mr 15
#mor 20
#str 25
#att 10
#def 15
#prec 15
#mapmove 20
#ap 10
#startage 1
#maxage 600
#float
#okleader
#siegebonus 100
#bonusspells 1
#inanimate
#magicpower 1
#castledef 100
#magicskill 0 2
#magicskill 1 3
#magicskill 4 3
#researchbonus 5
#patrolbonus 20
#woundfend 100
#diseaseres 100
#unsurr 10
#bluntres
#pierceres
#armor 434 -- Skyship Hull
#weapon 206 -- Ballista
#weapon 206 -- Ballista
#airshield 80
#wastesurvival
#forestsurvival
-- CHANGES
#rpcost 4
#startitem 1000
#end

-- Fix elementals

#newweapon 2000
#name "Stone Fist"
#copyweapon 562 -- Stone Fist
#bonus
#end

#newweapon 2001
#name "Flaming Fist"
#copyweapon 320
#bonus
#end

#newweapon 2002
#name "Thunder Fist"
#copyweapon 231
#bonus
#end

#selectmonster 7027 --Large Air elemental
#clearweapons
#weapon 185 -- Lightning Swarm
#weapon 2002 -- Thunder Fist
#end

#selectmonster 7028 --Large Air elemental
#clearweapons
#weapon 185 -- Lightning Swarm
#weapon 185 -- Lightning Swarm
#weapon 2002 -- Thunder Fist
#end

#selectmonster 7020 -- Small Earth Elemental
#clearweapons
#weapon 2000 -- Stone Fist
#end

#selectmonster 7021 -- Medium Earth Elemental
#clearweapons
#weapon 2000 -- Stone Fist
#end

#selectmonster 7022 -- Large Earth Elemental
#clearweapons
#weapon 2000 -- Stone Fist
#weapon 2000 -- Stone Fist
#end

#selectmonster 7023 -- Huge Earth Elemental
#clearweapons
#weapon 2000 -- Stone Fist
#weapon 2000 -- Stone Fist
#end

#selectmonster 7054 -- Small Fire Elemental
#clearweapons
#weapon 2001 - Flaming Fist
#end

#selectmonster 7055 -- Medium Fire Elemental
#clearweapons
#weapon 2001 - Flaming Fist
#end

#selectmonster 7056 -- Large Fire Elemental
#clearweapons
#weapon 2001 - Flaming Fist
#weapon 2001 - Flaming Fist
#end

#selectmonster 7057 -- Huge Fire Elemental
#clearweapons
#weapon 2001 - Flaming Fist
#weapon 2001 - Flaming Fist
#end

-- Mounted units fix

#selectmonster 6885 -- Paladin of the God-King
#mountmnr 3583 -- holy Destrier
#cleararmor
#clearweapons
#weapon 4 -- Lance
#weapon 12 -- Mace
#armor 18 -- Full chain mail
#armor 21 -- Full helmet
#armor 3 -- Kite shield
#end

#selectmonster 7107 -- Death Knight of the Eternal Dragon
#size 5
#end

-- MISSING MOUNTS

#selectmonster 137 -- Nar Horseman
#mountmnr 3574 --Armored Steppe Horse
#end

#selectmonster 6862 --Tharcion
#mountmnr 3531 --Cataphracted Mouflon
#end

-- Impiltur Holy Knight should probably be a troop, not a commander
#selectsite 1658
#clear
#name "Temple of the Triad"
#level 0
#rarity 5
#path 9
#gems 4 1
#com 440 -- Paladin
#mon 2359 -- Holy Knight
#end

-- Event fix

-- Quote mark typo broke the original event code
#selectevent 3406 -- The Darkstalker Wars Conclude
#clear
#rarity 5 -- always, but...
#req_rare 100
#req_fornation 203 -- Calimshan
#req_code -2520
#req_site 1
#header 2
#req_turn 13
#req_maxturn 13
#msg "- The Darkstalker Wars Conclude - "
#removesite 2995
#decscale1 0 -- decreases turmoil by 1 step
#gold 125
Myrkul and Bane betrayed their brother, Bhaal, but in many lands, the Shadow Thieves clung on, weakened but alive. Such was not the case in Calimshan, where the Rundeen Slavers Guild, the Dusk Daggers, and the Syl-Pasha all worked to permanently remove the agents and influence of the Lord of Murders. 

The vaults of the Thieves Guild have been looted in ##landname##, and their shrines to Bhaal destroyed. [Shadow Thieves Guild]"
#end

-- Impiltur buffs

#newmonster 6000
#copystats 2899 --Kernou Cavalry
#spr1 "FRMultiplayer/warsword_1.png"
#spr2 "FRMultiplayer/warsword_2.png"
#unmountedspr1 "FRMultiplayer/warsword_unmounted_1.png"
#unmountedspr2 "FRMultiplayer/warsword_unmounted_2.png"
#name "Warsword"
#descr "The Warswords were the regular militia of Impiltur. Typically organised in patrols of twenty or more, they kept the peace on the roads and in settlements. The lords of the realm could also mobilise larger forces to scour major threats from orc to demon.

Impiltur is a martial society and at any time the Warswords are continually deployed in patrols, training exercises or major expeditions. Accordingly the Warswords are composed of highly skilled veterans."  
#basecost 10010
#hp 10
#att 12
#def 12
#mor 12
#skilledrider 2
#clearweapons
#weapon 8 -- Broad Sword
#weapon 4 -- Lance
#patrolbonus 2
#end

#selectnation 215 -- Impiltur
#clearrec

#addrecunit 285		-- Spearman
#addrecunit 286		-- Maceman
#addrecunit 287		-- Swordsman
#addrecunit 289 	-- Pikeneer
#addrecunit 290		-- Crossbowmen
#addrecunit 6000 	-- Warsword

#addreccom 431	 	-- Scout
#addreccom 291		-- Captain
#addreccom 23		-- Knight Commander
#addreccom 6754 	-- Field Wizard
#addreccom 7007		-- Cleric of Helm
#addreccom 6623		-- Cleric of Tyr
#addreccom 6705 	-- Cleric of Ilmater 
#end
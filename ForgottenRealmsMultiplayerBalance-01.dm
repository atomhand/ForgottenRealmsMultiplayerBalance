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

#selectspell 1504 -- Summon an Erinye Seductress
#fatiguecost 2800
#end

#selectmonster 7109 -- Erinye
#douse -1
#end

#selectspell 1406 -- Bind Kyton
#fatiguecost 2000
#end

#selectmonster 7107 -- Kyton
#douse -1
#end

#selectspell 1505 -- Summon a Contract Devil
#fatiguecost 3000
#end

#selectspell 1478 -- Summon an Infernal Barghest
#fatiguecost 3500
#end

#selectitem 393 -- Sanguine Dowsing Rod
#constlevel 11 -- Blood deserves just a tiny hit
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
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

#selectmonster 8032 -- Halruaan Skyship
#rpcost 4
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
This is an unofficial "balance" patch for the Forgotten Realms mod for Dominion 6.
The goal is just to fix anything that is outright broken, not actually bring about parity between factions.

Balance Changes
 * Nerf excessively cheap Blood summoned demon mages. Reason: Blood hunt -> summon more blood hunters engine scales way too fast.
   * Increase price for Bind Kyton (10->20), Summon an Erinye Seductress (14->28), Summon Infernal Barghest (25->40), Call a Madcap (12->36)
   * Disable Summon a Contract Devil (blood slave "maintenance" mechanic doesn't work + cheap hunter + strategic teleport + corruptor = POSSIBLY A LITTLE MUCH)
   * Douse -1 to Kyton and Erinye Seductress
   * Madcap and Infernal Barghest generate 3 unrest
   * Sanguine Dowsing Rod cannot be used by demons
 * National roster tweaks and balance
   * Halruaa*
     * Give the Halruaan Skyship real airborne transporation (untransferrable duplicate of The Flying Ship)
   * Impiltur*
     * new unit: Warsword, a good quality medium cavalry unit (replaces generic Light/Heavy Cavalry recruits)
   * Corwell
     * Sister of Synnoria weapons changed to Enchanted Sword, buckler, Silver Lance, Enchanted Bow (Forgotten Realms Moonshae p. 56)
     * Captain of Synnoria gets above changes and slightly better stats than the regular Sisters
   * Waterdeep
     * Buff stats on Griffon Riders and Knights of the Lords Alliance
     * Swap Griffon Rider lance out for Lance of Burning Blackfire (City of Spendors: Waterdeep p. 33, 148)
     * Give Griffon mounts some light armour (also affects Peacehammer site recruit)
   * Aglarond
     * Swap indie-tier longbowman for LA Man's slightly better one
     * Forester is a bit cheaper and has more elite stats ("The elite corps of foresters" Spellbound p. 52)
     * Add a reclimited "Griffon Ranger" unit ("A unit of griffon riders is staioned at Glarondar, but these are few in number and are used primarily for scouting and as dispatch riders."  Spellbound p. 52)
     * Replace light cavalry with a custom medium cavalry ("These troops are the front line of Aglarondan defense, and are well trained and equipped."  Spellbound p. 52)
   * Auramycos*
     * Circle leaders have 50 leadership
   * Dwarves of the Rift/Deep Shanatar*
     * Reduce Dwarf Battlerager def and increase morale ("almost suicidal), add ability to berserk while mounted    
     * Barronar Valkyrie formation fighter increased to 2 (from 1)
   * The Dalelands
     * Lancer att increased to 11 (from 10)
   * Cairnheim
     * Dodforerir immortality reform time set to 5 months regardless of origin
       * This is a buff to twiceborn Dodforerir (former 11 months) and a nerf to recruitable Dodforerir (former 1 month)
     * Twiceborn Dodforerir get the same skeleton summon ability as recruitable Dodforerir
   * Cult of the Dragon
     * Events impose 150 starting unrest in Westgate and Sembia and a site which add 30 unrest and turmoil scales each turn (25% chance to disappear from turn 10 onwards)
     * Silver Raven Mercenaries have a reduced patrol bonus
     * Dragonkin Savage - increase gold cost (40->50) and rpcost (29->49)
     * Dragonkin Captain - reduced leadership (100->50)
   * Misc
     * Owlbear MR increased to 9
     * Owlbear Wildshape MR increased to 15 (to match the original wildshape druid)
     * Krenshar mr increased to 8
     * Goblin Dogslicer base att and def set to 10 (buff)
     * Goblin Dead-eye base att and def set to 9 (nerf)

    *also affected by consequential bugfixes

Fixes
 * "The darkstalker wars conclude" event (Calimshan) was broken due to a missing quote mark
 * Auramycos PD & fort defenders was useless placeholder units (meant to firstshape to a montag, but this doesn't work for PD)
   * Myconid poptype PD is also affected
 * Auramycos could not build forts (resolved by switching fort type Bramble Fort -> Wooden Fort)
 * "Things of the Deep" poptype (191) had ID error getting Aboleth Sovereign/Demon Ray Zealot recruit instead of Juvenile/Ancient Kraken
 * Spells
   * Spark was broken due to missing quote mark in the #descr
   * Magic Missile only affected demons and undead
   * Cure Light Wounds had morale negates property
   * Chum the Water (+minor and major versions) used a template monster with a #firstshape command, which doesn't work for combat summons. Fixed by using the desired montag directly.
   * Disabled Feast of Sekolah (tried to change the creature type of Howl, but Howl is hardcoded)
 * Recruitment anomalies
   * Missing rpcost for Halruaan Skyship, Proudspear, Wemic Huntress, Wemic Warrior, Wemic Firemane, Wemic Shaman, Tomb Tapper
   * Impiltur cap site: Holy Knights should be recruitable as troops, not commanders
 * Equipment & mount anomalies
   * Earth, Air and Fire elementals could not use their fists due to not being humanoid
   * Murabir General should not be naked and unarmed 
   * Death Knight of the Eternal Dragon should be size 5
   * Fix missing/broken mounts for Nar Horseman, Tharcion, Paladin of the God-King
   * Paladin of the God-King missing equipment
   * Amnian Heavy Cavalry missing lance
   * Calishite Rider should have a reusable lance, not lance+spear
   * Halfling Outrider's lance should be single-use
   * Purple Dragon Knight should use one-handed flail instead of two-handed (is mounted, has shield)
   * Dwarven Battlerager should use a one-handed axe instead of two-handed (is mounted, has shield)
   * Cleric of Isis has a builtin #weapon Main Gauche of parrying instead of a tradeable #startitem
   * Ardragon should have a mount with a winged saddle, as per the description 
   * Recruitable giant spider missing bite attack
   * Missing equipment and attacks for Black Blood Skinshifter (both forms), Malarite Skinshifter (beast form)
   * Owlbear and Owlbear Wildshape missing claw attacks
   * Tethyrian Druid Wildshape (Gryphon) missing attacks
 * Other stats anomalies
   * Huge elementals & The Walking Statue should not have Immobile tag (prevents movement in combat) - #mapmove 0 is sufficient to prevent strategic movement
   * Standardise dwarves and duergar at Size 3, and fix a few size 2 elves and humans
     * Duerger Mindmaster and Blackguard sailing capacity adapted to fit their new size
   * Sailing for Lady Luck (needs to fit in her own boat)
   * Missing Calishite nametype for Maribir General and Calishite Cavalry Commander
   * Remove Xpshape for Dwarven Battlesmith (it targeted an empty montag, insufficient context to fix properly)
   * Mariliths are female
   * Wild Elf Druid (6943, shambling mound type) clashed monster id with another unit, and had a typo in #shapechange command
   * Essyllissian Dervish should be the same size as other lizardfolk (4->3)
   * Sekolahn Dreadknights shark retinue uses the montag directly instead of the #firstshape template shark wihch doesn't work
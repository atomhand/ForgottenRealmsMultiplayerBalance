This is an unofficial "balance" patch for the Forgotten Realms mod for Dominion 6.
The goal is just to fix anything that is outright broken, not actually bring about parity between factions.

Balance Changes
 * Nerf excessively cheap Blood summoned demon mages. Reason: Blood hunt -> summon more blood hunters engine scales way too fast.
   * Increase price for Bind Kyton, Summon an Erinye Seductress, Summon a Contract Devil, Summon Infernal Barghest
   * Douse -1 to Kyton and Erinye Seductress
   * Sanguine Dowsing Rod cannot be used by demons
 * Give the Halruaan Skyship real airborne transporation (untransferrable duplicate of The Flying Ship)
 * Improve some weaker troop rosters
   * Impiltur
     * new unit: Warsword, a good quality medium cavalry unit (replaces generic Light/Heavy Cavalry recruits)
   * Corwell
     * Sister of Synnoria weapons changed to Enchanted Sword, Silver Lance, Enchanted Bow (Forgotten Realms Moonshae p. 56)
     * Captain of Synnoria gets above changes and slightly better stats than the regular Sisters#
   * Waterdeep
     * Buff stats on Griffon Riders and Knights of the Lords Alliance
     * Swap Griffon Rider lance out for Lance of Burning Blackfire (City of Spendors: Waterdeep p. 33, 148)
     * Give Griffon mounts some light armour (also affects Peacehammer site recruit)
  * Aglarond
     * Swap indie-tier longbowman for LA Man's slightly better one
     * Forester is a bit cheaper and has more elite stats ("The elite corps of foresters" Spellbound p. 52)
     * Add a reclimited "Griffon Ranger" unit ("A unit of griffon riders is staioned at Glarondar, but these are few in number and are used primarily for scouting and as dispatch riders."  Spellbound p. 52)
     * Replace light cavalry with a custom medium cavalry ("These troops are the front line of Aglarondan defense, and are well trained and equipped."  Spellbound p. 52)

Fixes
 * Standardise dwarves and duergar at Size 3, and fix a few size 2 elves and humans
 * Sailing for Lady Luck (needs to fit in her own boat) 
 * Earth, Air and Fire elementals could not use their fists due to not being humanoid
 * "The darkstalker wars conclude" event was broken due to a missing quote mark
 * Huge elementals should not have Immobile tag (prevents movement in combat) - #mapmove 0 is sufficient to prevent strategic movement
 * Recruitment anomalies
   * Missing rpcost for Halruaan Skyship, Proudspear, Wemic Huntress, Wemic Warrior, Wemic Firemane, Wemic Shaman
   * Impiltur cap site: Holy Knights should be recruitable as troops, not commanders
 * Equipment & mount anomalies
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
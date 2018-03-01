------------------
-- AbilityTables namespace
local A = {}

-- ---------------------------------------------------
-- MAJOR/MINOR DEBUFFS & DEBUFFS ---------------------
-- ---------------------------------------------------

A.Skill_Minor_Maim                  = 61856
A.Skill_Major_Maim                  = 92041
A.Skill_Major_Evasion               = 90620
A.Skill_Minor_Defile                = 61726
A.Skill_Major_Defile                = 38686
A.Skill_Major_Expedition            = 61840
A.Skill_Major_Vitality              = 61275
A.Skill_Minor_Magickasteal          = 40114
A.Skill_Minor_Sorcery               = 62799
A.Skill_Minor_Brutality             = 61798

A.Skill_Off_Balance                 = 2727
A.Skill_Off_Balace_Immunity         = 102771

-- ---------------------------------------------------
-- INNATE ABILITIES ----------------------------------
-- ---------------------------------------------------

-- Simulated Auras
A.Innate_Recall_Penalty             = GetString(SI_LUIE_SKILL_RECALL_PENALTY) -- Recall Penalty
A.Innate_Vanity_Pet                 = GetString(SI_LUIE_SKILL_VANITY_PET) -- Vanity Pet
A.Innate_Mounted                    = GetString(SI_LUIE_SKILL_MOUNTED) -- Mounted
A.Innate_Resurrection_Immunity      = GetString(SI_LUIE_SKILL_RESURRECTION_IMMUNITY) -- Resurrection Immunity

-- Player Basic
A.Innate_Crouch                     = 20306 -- Crouch
A.Innate_Crouch_Stun                = GetString(SI_LUIE_SKILL_CROUCH_STUN) -- Crouch Stun
A.Innate_Disguised                  = 23553 -- Disguised
A.Innate_Hidden                     = 20309 -- Hidden
A.Innate_Sprint                     = 973   -- Sprint
A.Innate_Block                      = 14890 -- Block
A.Innate_Block_Stun                 = GetString(SI_LUIE_SKILL_BLOCK_STUN) -- Block Stun
A.Innate_Bash                       = 21970 -- Bash
A.Innate_Gallop                     = GetString(SI_LUIE_SKILL_MOUNT_SPRINT) -- Gallop
A.Innate_Hard_Dismount              = 42514
A.Innate_Fall_Damage                = GetString(SI_LUIE_SKILL_FALL_DAMAGE) -- Fall Damage
A.Innate_Absorbing_Skyshard         = GetString(SI_LUIE_SKILL_ABSORBING_SKYSHARD) -- Absorbing Skyshard
A.Innate_Receiving_Boon             = GetString(SI_LUIE_SKILL_RECEIVING_BOON) -- Receiving Boon
A.Innate_Ayleid_Well                = GetString(SI_LUIE_SKILL_AYLEID_WELL) -- Ayleid Well
A.Innate_CC_Immunity                = 38117 -- CC Immunity
A.Innate_Stagger                    = 1834 -- Stagger

-- World
A.Innate_Drop_Anchor                = 86717 -- Drop Anchor
A.Innate_Anchor_Drop                = GetString(SI_LUIE_SKILL_ANCHOR_DROP) -- Anchor Drop
A.Innate_Power_of_the_Daedra        = 46690 -- Power of the Daedra

-- Weapon Attacks
A.Skill_Light_Attack                = 23604 -- Light Attack
A.Skill_Medium_Attack               = 39097 -- Medium Attack
A.Skill_Heavy_Attack                = 18431 -- Heavy Attack
A.Skill_Heavy_Attack_Dual_Wield     = 16420 -- Heavy Attack (Dual Wield)
A.Skill_Heavy_Attack_Werewolf       = 32480 -- Heavy Attack Werewolf
A.Skill_Heavy_Attack_Shock          = 18396 -- Heavy Attack (Shock)
A.Skill_Heavy_Attack_Main_Hand      = GetString(SI_LUIE_SKILL_PASSIVE_HEAVY_MAIN_HAND)
A.Skill_Heavy_Attack_Off_Hand       = GetString(SI_LUIE_SKILL_PASSIVE_HEAVY_OFF_HAND)
A.SKill_Heavy_Attack_Shock_Pulse    = GetString(SI_LUIE_SKILL_PASSIVE_HEAVY_SHOCK_PULSE)

-- ---------------------------------------------------
-- COMSUMABLES & ITEMS -------------------------------
-- ---------------------------------------------------

-- Glyphs
A.Item_Glyph_of_Absorb_Health       = 28919
A.Item_Glyph_of_Absorb_Magicka      = 46743
A.Item_Glyph_of_Absorb_Stamina      = 46746
A.Item_Glyph_of_Crushing            = GetString(SI_LUIE_SKILL_GLYPH_CRUSHING)
A.Item_Glyph_of_Damage_Health       = 46749
A.Item_Glyph_of_Decrease_Health     = GetString(SI_LUIE_SKILL_GLYPH_DECREASE_HEALTH)
A.Item_Glyph_of_Flame               = 17895
A.Item_Glyph_of_Foulness            = 17904
A.Item_Glyph_of_Frost               = 17897
A.Item_Glyph_of_Hardening           = GetString(SI_LUIE_SKILL_GLYPH_HARDENING)
A.Item_Glyph_of_Poison              = 17902
A.Item_Glyph_of_Prismatic_Onslaught = 40337
A.Item_Glyph_of_Shock               = 17899
A.Item_Glyph_of_Weakening           = GetString(SI_LUIE_SKILL_GLYPH_WEAKENING)
A.Item_Glyph_of_Weapon_Damage       = GetString(SI_LUIE_SKILL_GLYPH_WEAPON_DAMAGE)

-- Elemental Status Effects & Procs
A.Proc_Burning                      = 18084
A.Proc_Diseased                     = 21925
A.Proc_Chill                        = 21481
A.Proc_Chilled                      = 7145
A.Proc_Poisoned                     = 21929
A.Proc_Concussion                   = 21487

A.Proc_Explosion                    = 21128
A.Proc_Venom                        = 21930
A.Proc_Pestilence                   = 21928
A.Proc_Disintegration               = 21493
A.Proc_Deep_Freeze                  = 21483

-- POTIONS
A.Potion_Invisiblity                = 3668
A.Potion_Ravage_Health              = 46111
A.Potion_Restore_Health             = 45221
A.Potion_Restore_Magicka            = 45223
A.Potion_Restore_Stamina            = 45225

A.Poison_Creeping_Drain_Health      = 79701
A.Poison_Lingering_Restore_Health   = 79702
A.Poison_Stealth_Draining_Poison    = GetString(SI_LUIE_SKILL_POISON_STEALTH_DRAIN)
A.Poison_Conspicuous_Poison         = GetString(SI_LUIE_SKILL_POISON_CONSPICUOUS)

A.Food_Magicka_Stamina_Increase     = 61294
A.Food_Health_Stamina_Increase      = 61255
A.Food_Health_Magicka_Increase      = 61257
A.Food_Orzorgas_Tripe_Trifle_Pocket = GetString(SI_LUIE_SKILL_FOOD_ORZORGA_POCKET)
A.Food_Orzorgas_Blood_Price_Pie     = GetString(SI_LUIE_SKILL_FOOD_ORZORGA_PIE)
A.Food_Orzorgas_Smoked_Bear_Haunch  = GetString(SI_LUIE_SKILL_FOOD_ORZORGA_HAUNCH)
A.Food_Pumpkin_Snack_Skewer         = GetString(SI_LUIE_SKILL_FOOD_SNACK_SKEWER)
A.Food_Frosted_Brains               = GetString(SI_LUIE_SKILL_FOOD_FROSTED_BRAINS) 
A.Food_Jagga_Drenched_Mud_Ball      = GetString(SI_LUIE_SKILL_FOOD_MUD_BALL)
A.Food_Lava_Foot_Soup               = GetString(SI_LUIE_SKILL_FOOD_LAVA_FOOT)
A.Food_Crown_Crate_Meal             = GetString(SI_LUIE_SKILL_FOOD_CROWN_CRATE_FOOD)
A.Food_Crown_Meal                   = GetString(SI_LUIE_SKILL_FOOD_CROWN_FOOD)
A.Food_Crown_Combat_Mystics_Stew    = GetString(SI_LUIE_SKILL_FOOD_CROWN_STEW)
A.Food_Crown_Vigorous_Ragout        = GetString(SI_LUIE_SKILL_FOOD_CROWN_RAGOUT)
A.Drink_Health_Recovery             = 61322
A.Drink_Magicka_Recovery            = 61325
A.Drink_Stamina_Recovery            = 61328
A.Drink_Magicka_Stamina_Recovery    = 61345
A.Drink_Health_Stamina_Recovery     = 61340
A.Drink_Health_Magicka_Recovery     = 61335
A.Drink_Primary_Stat_Recovery       = 61350
A.Drink_Increase                    = GetString(SI_LUIE_SKILL_DRINK_INCREASE)
A.Drink_Orzorgas_Red_Frothgar       = GetString(SI_LUIE_SKILL_DRINK_ORZORGA_FROTHGAR)
A.Drink_Bowl_of_Peeled_Eyeballs     = GetString(SI_LUIE_SKILL_DRINK_PEELED_EYEBALLS)
A.Drink_Ghastly_Eye_Bowl            = GetString(SI_LUIE_SKILL_DRINK_GHASTLY_EYE_BOWL)
A.Drink_Bergama_Warning_Fire        = GetString(SI_LUIE_SKILL_DRINK_WARNING_FIRE)
A.Drink_Betnikh_Twice_Spiked_Ale    = GetString(SI_LUIE_SKILL_DRINK_BETNIKH_ALE)
A.Drink_Hissmir_Fish_Eye_Rye        = GetString(SI_LUIE_SKILL_DRINK_FISH_EYE)
A.Drink_Snow_Bear_Glow_Wine         = GetString(SI_LUIE_SKILL_DRINK_GLOW_WINE)
A.Drink_Crown_Crate_Drink           = GetString(SI_LUIE_SKILL_DRINK_CROWN_CRATE_DRINK)
A.Drink_Crown_Drink                 = GetString(SI_LUIE_SKILL_DRINK_CROWN_DRINK)
A.Drink_Crown_Stout_Magic_Liqueur   = GetString(SI_LUIE_SKILL_DRINK_CROWN_LIQUEUR)
A.Drink_Crown_Vigorous_Tincture     = GetString(SI_LUIE_SKILL_DRINK_CROWN_TINCTURE)

A.Experience_Psijic_Ambrosia        = GetString(SI_LUIE_SKILL_EXPERIENCE_PSIJIC_AMBROSIA) -- Psijic Ambrosia
A.Experience_Aetherial_Ambrosia     = GetString(SI_LUIE_SKILL_EXPERIENCE_AETHERIAL_AMBROSIA) -- Aetherial Ambrosia
A.Experience_Mythic_Ambrosia        = GetString(SI_LUIE_SKILL_EXPERIENCE_MYTHIC_AMBROSIA) -- Mythic Aetherial Ambrosia
A.Experience_Crown_Scroll           = GetString(SI_LUIE_SKILL_EXPERIENCE_CROWN_SCROLL) -- Crown Experience Scroll
A.Experience_Crown_Crate_Scroll_1   = GetString(SI_LUIE_SKILL_EXPERIENCE_CROWN_CRATE_SCROLL_1) -- Crown Crate Experience Scroll
A.Experience_Crown_Crate_Scroll_2   = GetString(SI_LUIE_SKILL_EXPERIENCE_CROWN_CRATE_SCROLL_2) -- Major Crown Crate Experience Scroll
A.Experience_Crown_Crate_Scroll_3   = GetString(SI_LUIE_SKILL_EXPERIENCE_CROWN_CRATE_SCROLL_3) -- Grand Crown Crate Experience Scroll

A.Consumable_Festival_Mints         = GetString(SI_LUIE_SKILL_CONSUMABLE_FESTIVAL_MINTS) -- High Hrothgar Festival Mints
A.Consumable_Sailors_Grog           = GetString(SI_LUIE_SKILL_CONSUMABLE_SAILORS_GROG) -- Sailor's Warning Festival Grog

A.Memento_Almalexias_Lantern        = GetCollectibleName(341)
A.Memento_Bonesnap_Binding_Stone    = GetCollectibleName(348)
A.Memento_Nirnroot_Wine             = GetCollectibleName(344)
A.Memento_Mystery_Meat              = GetString(SI_LUIE_SKILL_COLLECTIBLE_MYSTERY_MEAT)
A.Memento_Sanguines_Goblet          = GetCollectibleName(338)
A.Memento_Token_of_Root_Sunder      = GetCollectibleName(349)
A.Memento_Storm_Atronach_Transform  = GetCollectibleName(596)
A.Memento_Wild_Hunt_Transform       = GetCollectibleName(759)
A.Memento_Dwemervamidium_Mirage     = GetCollectibleName(1183)
A.Memento_Swarm_of_Crows            = GetCollectibleName(1384)
A.Memento_Fire_Breathers_Torches    = GetCollectibleName(600)
A.Memento_Jugglers_Knives           = GetCollectibleName(598)
A.Memento_Sword_Swallowers_Blade    = GetCollectibleName(597)
A.Memento_Discourse_Amaranthine     = GetCollectibleName(345)
A.Memento_Sealing_Amulet            = GetCollectibleName(351)
A.Memento_Twilight_Shard            = GetCollectibleName(1158)
A.Memento_Yokudan_Totem             = GetCollectibleName(350)
A.Memento_Blade_of_the_Blood_Oath   = GetCollectibleName(390)
A.Memento_Dreamers_Chime            = GetCollectibleName(1229)
A.Memento_Hidden_Pressure_Vent      = GetCollectibleName(354)
A.Memento_Coin_of_Illusory_Riches   = GetCollectibleName(361)
A.Memento_Malacaths_Wrathful_Flame  = GetCollectibleName(353)
A.Memento_Jubliee_Cake              = GetCollectibleName(1109)
A.Memento_Mud_Ball                  = 86749
A.Memento_Storm_Atronach_Aura       = GetCollectibleName(594)
A.Memento_Storm_Orb_Juggle          = GetCollectibleName(595)
A.Memento_Wild_Hunt_Aura            = GetCollectibleName(760)
A.Memento_Floral_Swirl_Aura         = GetCollectibleName(758)
A.Memento_Dwarven_Puzzle_Orb        = GetCollectibleName(1181)
A.Memento_Dwarven_Tonal_Forks       = GetCollectibleName(1182)
A.Memento_Crows_Calling             = GetCollectibleName(1383)
A.Memento_Fiery_Orb                 = GetCollectibleName(1481)
A.Memento_Flame_Pixie               = GetCollectibleName(1482)
A.Memento_Flame_Eruption            = GetCollectibleName(1483)

-- ---------------------------------------------------
-- ITEM SETS -----------------------------------------
-- ---------------------------------------------------

A.Set_Asylum_Destruction_Staff      = 99596 -- Concentrated Force (Perfected)
A.Set_Bogdan_the_Nightflame         = GetString(SI_LUIE_SKILL_SET_BOGDAN_THE_NIGHTFLAME)
A.Set_Lord_Warden_Dusk              = GetString(SI_LUIE_SKILL_SET_LORD_WARDEN_DUSK)
A.Set_Malubeth_the_Scourger         = GetString(SI_LUIE_SKILL_SET_MALUBETH_THE_SCOURGER)
A.Set_Maw_of_the_Infernal           = 59507
A.Set_Nerieneth                     = 59592
A.Set_Shadowrend                    = 80989
A.Set_Spawn_of_Mephala              = 59497
A.Set_Swarm_Mother                  = 80592
A.Set_Engine_Guardian               = 59521
A.Set_The_Troll_King                = GetString(SI_LUIE_SKILL_SET_TROLL_KING)
A.Set_Redistribution                = GetString(SI_LUIE_SKILL_SET_REDISTRIBUTION)
A.Set_Varens_Legacy                 = 79029
A.Set_Syvarras_Scales               = 75717
A.Set_Twin_Sisters                  = 32828
A.Set_Way_of_Fire                   = 52710
A.Set_Plague_Slinger                = 102113
A.Set_Ice_Furnace                   = GetString(SI_LUIE_SKILL_SET_ICE_FURNACE)
A.Set_Jolting_Arms                  = 67077
A.Set_Hand_of_Mephala               = 84355
A.Set_Tormentor                     = 67282
A.Set_Immortal_Warrior              = 90938
A.Set_Eternal_Warrior               = 90939
A.Set_Destructive_Mage              = 51315
A.Set_Healing_Mage                  = 51442
A.Set_Vicious_Serpent               = 61440
A.Set_Roar_of_Alkosh                = 75752
A.Set_Phoenix                       = 90935
A.Set_Vicecannon_of_Venom           = 79464
A.Set_Bahrahas_Curse                = 75673
A.Set_Pirate_Skeleton               = 98421
A.Set_Briarheart                    = 71102
A.Set_Ironblood                     = 97626
A.Set_Cooldown                      = GetString(SI_LUIE_SKILL_SET_COOLDOWN)
A.Set_Eternal_Hunt                  = 75927

A.Disguise_Monks_Disguise           = GetString(SI_LUIE_SKILL_DISGUISE_MONKS_DISGUISE)

-- ---------------------------------------------------
-- CHAMPION ABILITIES --------------------------------
-- ---------------------------------------------------

A.Champion_Vengeance_Charge         = GetString(SI_LUIE_SKILL_VENGEANCE_CHARGE) -- Vengeance Counter
A.Champion_Riposte                  = 60230

-- ---------------------------------------------------
-- SKILL LINE PASSIVES -------------------------------
-- ---------------------------------------------------

-- Sorcerer
A.Passive_Rebate                    = 31398

-- Nightblade
A.Passive_Nightblade                = 36560

-- Templar
A.Passive_Light_Weaver              = 31760

-- Warden
A.Passive_Bond_with_Nature          = GetString(SI_LUIE_SKILL_BOND_WITH_NATURE)
A.Passive_Savage_Beast              = 86062
A.Passive_Natures_Gift              = 93054

-- Weapon
A.Passive_Heavy_Weapons             = 29375
A.Passive_Follow_Up                 = 29389
A.Passive_Twin_Blade_and_Blunt      = 30893
A.Passive_Tri_Focus_Shock           = GetString(SI_LUIE_SKILL_PASSIVE_TRI_FOCUS_SHOCK)
A.Passive_Destruction_Expert        = 30965
A.Passive_Soul_Summons              = 39269

A.Passive_Savage_Feeding            = 42054
A.Passive_Blood_Ritual              = 33091
A.Passive_Noxiphilic_Sanguivoria    = GetString(SI_LUIE_SKILL_PASSIVE_NOXIPHILIC_SANGUIVORIA)
A.Passive_Bloodmoon                 = 32639
A.Passive_Undaunted_Command         = 55584
A.Passive_Red_Diamond               = 36155

-- ---------------------------------------------------
-- CLASS SKILLS --------------------------------------
-- ---------------------------------------------------

-- Dragonknight

A.Skill_Power_Lash                  = 20824

A.Skill_Shackle                     = 32905
A.Skill_Standard_of_Might           = 32947


A.Skill_Spiked_Armor                = 20319
A.Skill_Hardened_Armor              = 20328
A.Skill_Volatile_Armor              = 20323


A.Skill_Dragon_Blood                = 29004 -- TODO: Move + check if best ID to use later
A.Skill_Fiery_Grip                  = 20492 -- TODO: Move + check if best ID to use later
A.Skill_Stonefist                   = 29032 -- TODO: Move + check if best ID to use later
A.Skill_Fiery_Breath                = 20917 -- TODO: Move + check if best ID to use later

-- Nightblade
A.Skill_Siphoning_Strikes           = 33319 -- TODO: Check if this is the best ID to use later

-- Sorcerer
A.Skill_Crystal_Shard               = 43714 -- TODO: Check if this is the best ID to use later
A.Skill_Crystal_Blast               = 46331 -- TODO: Check if this is the best ID to use later

-- Templar
A.Skill_Puncturing_Sweep            = 26797
A.Skill_Aurora_Javelin              = 26800
A.Skill_Empowering_Sweep            = 22144
A.Skill_Crescent_Sweep              = 22139

A.Skill_Purifying_Light             = 21765
A.Skill_Unstable_Core               = 22004
A.Skill_Radiant_Glory               = 63044
A.Skill_Radiant_Oppression          = 63046
A.Skill_Solar_Disturbance           = 21758

A.Skill_Restoring_Aura              = 26209
A.Skill_Repentance                  = 26821
A.Skill_Cleansing_Ritual            = 22265
A.Skill_Rune_Focus                  = 22234
A.Skill_Channeled_Focus             = 22240
A.Skill_Restoring_Focus             = 22237

A.Skill_Rite_Of_Passage             = 22223
A.Skill_Remembrance                 = 22229
A.Skill_Practiced_Incantation       = 22226

-- Warden
A.Skill_Feral_Guardian              = 85982 -- TODO: Check if this is the best ID to use later

-- ---------------------------------------------------
-- WEAPON SKILLS -------------------------------------
-- ---------------------------------------------------

-- Restoration Staff
A.Skill_Blessing_of_Protection      = 37243
A.Skill_Blessing_of_Restoration     = GetString(SI_LUIE_SKILL_BLESSING_OF_RESTORATION)
A.Skill_Combat_Prayer               = 40094
A.Skill_Healing_Ward                = 40126
A.Skill_Force_Siphon                = 31531
A.Skill_Siphon_Spirit               = 40109
A.Skill_Quick_Siphon                = 40116

-- Destruction Staff
A.Skill_Crushing_Shock              = 46348
--A.Skill_Wall_of_Frost             = 28849
--A.Skill_Unstable_Wall_of_Frost    = 39067
--A.Skill_Blockade_of_Frost         = 39028
A.Skill_Flame_Touch                 = 29073
A.Skill_Frost_Touch                 = 29078
A.Skill_Frozen                      = 68719
A.Skill_Flame_Clench                = 38985
A.Skill_Shock_Clench                = 38993
A.Skill_Frost_Clench                = 38989
A.Skill_Flame_Reach                 = 38944
A.Skill_Frost_Reach                 = 38970
A.Skill_Shock_Reach                 = 38978
A.Skill_Weakness_to_Elements        = 29173
A.Skill_Elemental_Susceptibility    = 39089
A.Skill_Elemental_Drain             = 39095
A.Skill_Shock_Pulsar                = 89844

-- One Hand & Shield
A.Skill_Shield_Charge               = 28719 -- TODO: Check is best ID to use
A.Skill_Power_Bash                  = 28365 -- TODO: Check is best ID to use

-- Two-Handed
A.Skill_Uppercut                    = 28279 -- TODO: Check is best ID to use
A.Skill_Dizzying_Swing              = 38814 -- TODO: Check is best ID to use
A.Skill_Stampede                    = 21055 -- TODO: Check is best ID to use

-- Dual Wield
A.Skill_Twin_Slashes                = 28379 -- TODO: Check is best ID to use

-- ---------------------------------------------------
-- GUILD SKILLS --------------------------------------
-- ---------------------------------------------------

-- Fighters Guild
A.Skill_Silver_Leash                = 40336
A.Skill_Tighten                     = 40342
A.Skill_Circle_of_Protection        = 35737
A.Skill_Turn_Undead                 = 40181
A.Skill_Ring_of_Preservation        = 40169
A.Skill_Trap_Beast                  = 35750
A.Skill_Rearming_Trap               = 40382
A.Skill_Lightweight_Beast_Trap      = 40372

-- Mages Guild
A.Skill_Magelight                   = 30920 -- TODO: Check is best ID to use

-- ---------------------------------------------------
-- ALLIANCE WAR --------------------------------------
-- ---------------------------------------------------

A.Skill_Caltrops                    = 33376 -- TODO: Check is best ID to use

-- ---------------------------------------------------
-- NPC BASIC -----------------------------------------
-- ---------------------------------------------------

A.Skill_Hamstring                   = 70068 -- Hamstring

-- ---------------------------------------------------
-- NPC ABILITIES -------------------------------------
-- ---------------------------------------------------

-- Human
A.Skill_Oil_Drenched                = 10650
A.Skill_Shield_Rush                 = GetString(SI_LUIE_SKILL_SHIELD_RUSH)
A.Skill_Knockback                   = 77905
A.Skill_Weakness                    = 8705
A.Skill_Ice_Barrier_Chill           = GetString(SI_LUIE_SKILL_ICE_BARRIER_CHILL)
A.Skill_Vanish                      = 24687
A.Skill_Bone_Cage                   = 35387
A.Skill_Defensive_Ward              = GetString(SI_LUIE_SKILL_DEFENSIVE_WARD)
A.Skill_Great_Cleave                = GetString(SI_LUIE_SKILL_GREAT_CLEAVE)
A.Skill_Retaliation                 = 65033
A.Skill_Divine_Leap                 = 54027
A.Skill_Inspire                     = GetString(SI_LUIE_SKILL_INSPIRE)
A.Skill_Hide_in_Shadows             = GetString(SI_LUIE_SKILL_HIDE_IN_SHADOWS)
A.Skill_Recovering                  = 4197
A.Skill_Lunge                       = 78664
A.Skill_Clobber                     = 24671
A.Skill_Shadowy_Barrier             = GetString(SI_LUIE_SKILL_SHADOWY_BARRIER)

-- Justice
A.Skill_Cage_Talons                 = 63168
A.Skill_Heavy_Blow                  = 63157
A.Skill_Mighty_Charge               = GetString(SI_LUIE_SKILL_MIGHTY_CHARGE)
A.Skill_Throw_Dagger                = 28499
A.Skill_Detection                   = GetString(SI_LUIE_SKILL_DETECTION)

-- Cyrodiil
A.Skill_Shock_Torrent               = 46726
A.Skill_Improved_Shock_Torrent      = GetString(SI_LUIE_SKILL_IMPROVED_SHOCK_TORRENT)
A.Skill_Steal_Essence               = 2786
A.Skill_Lasting_Storm               = 46818
A.Skill_Bleeding_Strike             = 46830
A.Skill_Telekinetic_Prison          = 21636
A.Skill_Shattering_Prison           = 46905
A.Skill_Siege_Barrier               = GetString(SI_LUIE_SKILL_SIEGE_BARRIER)
A.Skill_Fire_Torrent                = GetString(SI_LUIE_SKILL_FIRE_TORRENT)
A.Skill_Improved_Fire_Torrent       = 46990
A.Skill_Extended_Chains             = 35113
A.Skill_Puncturing_Chains           = GetString(SI_LUIE_SKILL_PUNCTURING_CHAINS)
A.Skill_Improved_Volley             = GetString(SI_LUIE_SKILL_IMPROVED_VOLLEY)

-- Animals
A.Skill_Lacerate                    = 5452
A.Skill_Bite                        = 17957
A.Skill_Savage_Blows                = 4416
A.Skill_Slam                        = 70366
A.Skill_Rip_and_Tear                = GetString(SI_LUIE_SKILL_RIP_AND_TEAR)

A.Skill_Paralyze                    = 6756 -- Giant Scorpion

A.Skill_Swipe                       = 2850 -- Welwa

A.Skill_Rush                        = 14380 -- Kagouti

A.Skill_Vigorus_Swipes              = 75634 -- Mammoth

A.Skill_Barreling_Charge            = GetString(SI_LUIE_SKILL_BARRELING_CHARGE) -- Wamasu

A.Skill_Blitz                       = GetString(SI_LUIE_SKILL_BLITZ) -- Welwa

A.Skill_Poisonous_Burst             = 5790
A.Skill_Web                         = 58521 -- Giant Spider

A.Skill_Inject_Larva                = 9229 -- Giant Wasp
A.Skill_Zoom                        = GetString(SI_LUIE_SKILL_ZOOM) -- Giant Wasp
A.Skill_Plow                        = GetString(SI_LUIE_SKILL_PLOW) -- Kwama Worker

A.Skill_Contagion                   = 47838 -- Kwama Scrib

A.Skill_Assault                     = 4304

-- Flesh Colossus
A.Skill_Tremor                      = 67123
A.Skill_Pin                         = 65709
A.Skill_Sweep                       = 67872
A.Skill_Enrage                      = 71696

A.Skill_Headbutt                    = 54380
A.Skill_Tail_Spike                  = 4799

A.Skill_Body_Slam                   = 24689


-- ---------------------------------------------------
-- WEAPONS -------------------------------------------
-- ---------------------------------------------------

-- TWO HANDED ---------------
A.Skill_Cleave                   = 20919
A.Skill_Brawler                  = 38754
A.Skill_Carve                    = 38745
A.Skill_Wrecking_Blow            = 38807
A.Skill_Momentum                 = 28297
A.Skill_Forward_Momentum         = 38794
A.Skill_Rally                    = 38802

-- ONE HANDED AND SHIELD ----
A.Skill_Puncture                 = 28306
A.Skill_Pierce_Armor             = 38250
A.Skill_Ransack                  = 38256
A.Skill_Low_Slash                = 28304
A.Skill_Crippling_Slash          = 38264
A.Skill_Deep_Slash               = 38268
A.Skill_Absorb_Magic             = 41380
A.Skill_Defensive_Stance         = 38312
A.Skill_Defensive_Posture        = 41351
A.Skill_Invasion                 = 38405
A.Skill_Shielded_Assault         = 38401
A.Skill_Power_Slam               = 38452
A.Skill_Reverberating_Bash       = 38455

-- DUAL WEILD ---------------
A.Effect_Twin_Slashes_Bleed      = 29293
A.Skill_Blood_Craze              = 38845
A.Effect_Blood_Craze_Bleed       = 38848
A.Skill_Rending_Slashes          = 38839
A.Effect_Rending_Slashes_Bleed   = 38841
A.Skill_Rapid_Strikes            = 38857
A.Skill_Whirling_Blades          = 38891
A.Skill_Blade_Cloak              = 28613
A.Skill_Quick_Cloak              = 38901
A.Skill_Deadly_Cloak             = 38906
A.Skill_Hidden_Blade             = 21157
A.Skill_Flying_Blade             = 38910
A.Skill_Shrouded_Daggers         = 38914

-- BOW ----------------------
A.Skill_Poison_Arrow             = 28869
A.Skill_Poison_Injection         = 38660
A.Skill_Venom_Arrow              = 38645
A.Skill_Volley                   = 28876
A.Skill_Scorched_Earth           = 38689
A.Skill_Arrow_Barrage            = 38695
A.Skill_Scatter_Shot             = 28879
A.Skill_Draining_Shot            = 38669
A.Skill_Magnum_Shot              = 38672
A.Skill_Arrow_Spray              = 31271
A.Skill_Acid_Spray               = 38701
A.Skill_Bombard                  = 38705
A.Skill_Snipe                    = 28882
A.Skill_Focused_Aim              = 38687
A.Skill_Lethal_Arrow             = 38685

-- DESTRUCTION STAFF --------
A.Skill_Destructive_Touch        = 29091
A.Skill_Shock_Touch              = 40970
A.Skill_Flame_Touch              = 40965
A.Skill_Destructive_Clench       = 38984
A.Skill_Shock_Clench             = 41016
A.Skill_Flame_Clench             = 38985
A.Skill_Destructive_Reach        = 38937
A.Skill_Shock_Reach              = 38978

A.Skill_Flame_Reach              = 38944
A.Skill_Wall_of_Elements         = 28858
A.Skill_Wall_of_Fire             = 28807
A.Skill_Wall_of_Storms           = 28854
A.Skill_Wall_of_Cinders          = 50228
A.Skill_Unstable_Wall_of_Elements = 39052
A.Skill_Unstable_Wall_of_Fire    = 39053
A.Skill_Unstable_Wall_of_Storms  = 39073
A.Skill_Unstable_Wall_of_Cinders = 50240
A.Skill_Elemental_Blockade       = 39011
A.Skill_Blockade_of_Fire         = 39012
A.Skill_Blockade_of_Storms       = 39018
A.Skill_Blockade_of_Cinders      = 50236
A.Skill_Elemental_Ring           = 39143
A.Skill_Fire_Ring                = 39145
A.Skill_Frost_Ring               = 39146
A.Skill_Shock_Ring               = 39147
A.Skill_Pulsar                   = 39161
A.Skill_Fiery_Pulsar             = 39162
A.Skill_Icy_Pulsar               = 39163
A.Skill_Electric_Pulsar          = 39167
A.Skill_Wall_of_Fire             = 41659 -- Unmorphed Wall of Element Variations
A.Skill_Wall_Of_Storms           = 41668 -- Unmorphed Wall of Element Variations
A.Skill_Wall_of_Frost            = 41663 -- Unmorphed Wall of Element Variations

-- RESTORATION STAFF --------
A.Skill_Grand_Healing            = 28385
A.Skill_Healing_Springs          = 40060
A.Skill_Illustrious_Healing      = 40058
A.Skill_Regeneration             = 28536
A.Skill_Mutagen                  = 40079
A.Skill_Rapid_Regeneration       = 40076
A.Skill_Steadfast_Ward           = 31639
A.Skill_Ward_Ally                = 40130

-- ---------------------------------------------------
-- ARMOUR --------------------------------------------
-- ---------------------------------------------------

-- LIGHT ARMOUR -------------
A.Skill_Annulment                = 29338
A.Skill_Dampen_Magic             = 39186
A.Skill_Harness_Magicka          = 39182

-- MEDIUM ARMOUR ------------
A.Skill_Evasion                  = 29556
A.Skill_Elude                    = 39192
A.Skill_Shuffle                  = 39195

-- HEAVY ARMOUR -------------
A.Skill_Immovable                = 29552
A.Skill_Immovable_Brute          = 39205
A.Skill_Unstoppable              = 39197

-- ---------------------------------------------------
-- GUILDS --------------------------------------------
-- ---------------------------------------------------

-- FIGHTERS GUILD -----------
A.Skill_Dawnbreaker              = 35713
A.Skill_Dawnbreaker_of_Smiting   = 40158
A.Skill_Flawless_Dawnbreaker     = 40161
A.Skill_Silver_Bolts             = 35721
A.Skill_Silver_Shards            = 40300
A.Skill_Expert_Hunter            = 35762
A.Skill_Evil_Hunter              = 40194
A.Skill_Camouflaged_Hunter       = 40195

-- MAGES GUILD --------------
A.Skill_Meteor                   = 16536
A.Skill_Ice_Comet                = 40489
A.Skill_Shooting_Star            = 40493
A.Skill_Inner_Light              = 40478
A.Skill_Radiant_Magelight        = 40483
A.Skill_Entropy                  = 28567
A.Skill_Degeneration             = 40457
A.Skill_Structured_Entropy       = 40452
A.Skill_Fire_Rune                = 31632
A.Skill_Scalding_Rune            = 40465
A.Skill_Volcanic_Rune            = 40470
A.Skill_Equilibrium              = 48135
A.Skill_Spell_Symmetry           = 40445
A.Skill_Balance                  = 48144

-- UNDAUNTED ----------------
A.Skill_Trapping_Webs            = 39425
A.Skill_Shadow_Silk              = 41990
A.Skill_Tangling_Webs            = 42012
A.Skill_Inner_Fire               = 39475
A.Skill_Inner_Rage               = 42056
A.Skill_Inner_Beast              = 42060
A.Skill_Bone_Shield              = 39369
A.Skill_Bone_Surge               = 42176
A.Skill_Spiked_Bone_Shield       = 42138

-- ---------------------------------------------------
-- WORLD ---------------------------------------------
-- ---------------------------------------------------

-- SOUL MAGIC ---------------
A.Skill_Soul_Strike              = 39270
A.Skill_Shatter_Soul             = 40414
A.Skill_Soul_Assault             = 40420
A.Skill_Soul_Trap                = 26768
A.Skill_Consuming_Trap           = 40317
A.Skill_Soul_Splitting_Trap      = 40328

-- WEREWOLF -----------------
A.Skill_Hircines_Rage            = 58317
A.Skill_Hircines_Fortitude       = 58325
A.Skill_Roar                     = 32633
A.Skill_Ferocious_Roar           = 39113
A.Skill_Rousing_Roar             = 39114
A.Skill_Piercing_Howl            = 58405
A.Skill_Howl_of_Despair          = 58742
A.Skill_Howl_of_Agony            = 58798
A.Skill_Infectious_Claws         = 58855
A.Skill_Claws_of_Anguish         = 58864
A.Skill_Claws_of_Life            = 58879

-- VAMPIRE ------------------
A.Skill_Bat_Swarm                = 32624
A.Skill_Clouding_Swarm           = 38932
A.Skill_Devouring_Swarm          = 38931
A.Skill_Drain_Essence            = 32893
A.Skill_Invigorating_Drain       = 38949
A.Skill_Midnight_Drain           = 38956
A.Skill_Mist_Form                = 32986
A.Skill_Elusive_Mist             = 38963
A.Skill_Poison_Mist              = 38965

-- ---------------------------------------------------
-- ALLIANCE WAR --------------------------------------
-- ---------------------------------------------------

-- ASSAULT ------------------
A.Skill_War_Horn                 = 38563
A.Skill_Aggressive_Horn          = 40223
A.Skill_Sturdy_Horn              = 40220
A.Skill_Rapid_Maneuver           = 38566
A.Skill_Charging_Maneuver        = 40215
A.Skill_Retreating_Maneuver      = 40211
A.Skill_Vigor                    = 61503
A.Skill_Echoing_Vigor            = 61505
A.Skill_Resolving_Vigor          = 61507
A.Skill_Anti_Cavalry_Caltrops    = 40255
A.Skill_Razor_Caltrops           = 40242
A.Skill_Magicka_Detonation       = 61487
A.Skill_Inevitable_Detonation    = 61491
A.Skill_Proximity_Detonation     = 61500

-- SUPPORT ------------------
A.Skill_Barrier                  = 38573
A.Skill_Replenishing_Barrier     = 40239
A.Skill_Reviving_Barrier         = 40237
A.Skill_Siege_Shield             = 38570
A.Skill_Propelling_Shield        = 40226
A.Skill_Siege_Weapon_Shield      = 40229
A.Skill_Purge                    = 38571
A.Skill_Cleanse                  = 40234
A.Skill_Efficient_Purge          = 40232
-- ADD GUARD
-- ADD FLARE

-- ---------------------------------------------------
-- CLASS: DRAGONKNIGHT -------------------------------
-- ---------------------------------------------------

-- ARDENT FLAME -------------
A.Skill_Dragonknight_Standard    = 28988
A.Skill_Shifting_Standard        = 32958
A.Skill_Shift_Standard           = 32963
A.Skill_Unrelenting_Chains       = 20499
A.Skill_Searing_Strike           = 20657
A.Skill_Venmous_Claw             = 20668
A.Skill_Burning_Embers           = 20660
A.Skill_Noxious_Breath           = 20944
A.Skill_Engulfing_Flames         = 20930
A.Skill_Inferno                  = 25954
A.Skill_Flames_Of_Oblivion       = 32853
A.Skill_Cauterize                = 32881

-- DRACONIC POWER -----------
A.Skill_Ferocious_Leap           = 32715
A.Skill_Dark_Talons              = 20245
A.Skill_Burning_Talons           = 20252
A.Skill_Choking_Talons           = 20251
A.Skill_Green_Dragon_Blood       = 32744
A.Skill_Coagulating_Blood        = 32722
A.Skill_Reflective_Scale         = 21007
A.Skill_Reflective_Plate         = 21014
A.Skill_Dragon_Fire_Scale        = 21017
A.Skill_Inhale                   = 31837
A.Skill_Deep_Breath              = 18021
A.Skill_Draw_Essence             = 32785

-- EARTHEN HEART ------------
A.Skill_Magma_Armor              = 15957
A.Skill_Magma_Shell              = 17874
A.Skill_Corrosive_Armor          = 17878
A.Skill_Obsidian_Shard           = 31820
A.Skill_Stone_Giant              = 31816
A.Skill_Obsidian_Shield          = 29071
A.Skill_Fragmented_Shield        = 32673
A.Skill_Igneous_Shield           = 29224
A.Skill_Petrify                  = 29037
A.Skill_Fossilize                = 32685
A.Skill_Shattering_Rocks         = 32678
A.Skill_Ash_Cloud                = 29059
A.Skill_Cinder_Storm             = 20779
A.Skill_Eruption                 = 32710

-- ---------------------------------------------------
-- CLASS: SORCERER -----------------------------------
-- ---------------------------------------------------

-- DAEDRIC SUMMONING --------
A.Skill_Summon_Storm_Atronach    = 23634
A.Skill_Greater_Storm_Atronach   = 23492
A.Skill_Summon_Charged_Atronach  = 23495
A.Effect_Atronach                = 23659
A.Effect_Atronach_Zap            = 23428
A.Skill_Daedric_Curse            = 24326
A.Skill_Daedric_Prey             = 63210 -- 24328
A.Skill_Velocious_Curse          = 24330
A.Skill_Conjured_Ward            = 28418
A.Skill_Empowered_Ward           = 29482
A.Skill_Hardened_Ward            = 29489

-- DARK MAGIC ---------------
A.Skill_Negate_Magic             = 27706
A.Skill_Absorption_Field         = 28348
A.Skill_Suppression_Field        = 28341
A.Skill_Crystal_Fragments        = 46324
A.Skill_Encase                   = 28025
A.Skill_Restraining_Prison       = 28311
A.Skill_Shattering_Prison        = 28308
A.Skill_Rune_Prison              = 24371
A.Skill_Rune_Cage                = 24578
A.Skill_Defensive_Rune           = 24574
A.Skill_Dark_Exchange            = 24584
A.Effect_Dark_Exchange_Heal      = 24587
A.Skill_Dark_Conversion          = 24589
A.Skill_Dark_Deal                = 24595
A.Skill_Daedric_Mines            = 24828
A.Skill_Daedric_Minefield        = 24834
A.Skill_Daedric_Tomb             = 24842

-- STORM CALLING ------------
A.Skill_Mages_Fury               = 18718
A.Skill_Endless_Fury             = 19109
A.Skill_Mages_Wrath              = 19123
A.Skill_Lightning_Form           = 23210
A.Skill_Boundless_Storm          = 23213
A.Skill_Thundering_Presence      = 23231
A.Skill_Lightning_Splash         = 23182
A.Skill_Liquid_Lightning         = 23200
A.Skill_Lightning_Flood          = 23205
A.Skill_Surge                    = 23670
A.Effect_Surge_Heal              = 23682
A.Skill_Critical_Surge           = 23678
A.Skill_Power_Surge              = 23674
A.Skill_Bolt_Escape              = 23234
A.Skill_Ball_of_Lightning        = 23277
A.Skill_Streak                   = 23236
A.Skill_Yesss                    = 30432
A.Skill_Bound_Armor              = 30445

-- ---------------------------------------------------
-- CLASS: NIGHTBLADE ---------------------------------
-- ---------------------------------------------------

-- ASSASSINATION ------------
A.Skill_Teleport_Strike          = 18342
A.Skill_Ambush                   = 25484
A.Skill_Lotus_Fan                = 25493
A.Skill_Blur                     = 33375
A.Skill_Double_Take              = 35419
A.Skill_Mirage                   = 35414
A.Skill_Mark_Target              = 33357
A.Skill_Piercing_Mark            = 36968
A.Skill_Reapers_Mark             = 36967
A.Skill_Grim_Focus               = 61902
A.Skill_Relentless_Focus         = 61927
A.Skill_Merciless_Resolve        = 61919
A.Skill_Death_Stroke             = 33398
A.Skill_Incapacitating_Strike    = 36508
A.Skill_Soul_Harvest             = 36514

-- SHADOW -------------------
A.Skill_Consuming_Darkness       = 25411
A.Skill_Bolstering_Darkness      = 36493
A.Skill_Veil_of_Blades           = 36485
A.Skill_Shadow_Cloak             = 25375
A.Skill_Shadowy_Disguise         = 25380
A.Skill_Dark_Cloak               = 25377
A.Skill_Veiled_Strike            = 25255
A.Skill_Concealed_Weapon         = 25267
A.Skill_Surprise_Attack          = 25260
A.Skill_Path_of_Darkness         = 33195
A.Skill_Refreshing_Path          = 36028
A.Skill_Twisting_Path            = 36049
A.Skill_Aspect_of_Terror         = 25352
A.Skill_Mass_Hysteria            = 37470
A.Skill_Manifestation_of_Terror  = 37475
A.Skill_Summon_Shade             = 33211
A.Skill_Dark_Shades              = 35434
A.Skill_Shadow_Image             = 35441

-- SIPHONING ----------------
A.Skill_Soul_Shred               = 25091
A.Skill_Soul_Siphon              = 35508
A.Skill_Soul_Tether              = 35460
A.Skill_Strife                   = 33291
A.Skill_Funnel_Health            = 34838
A.Skill_Swallow_Soul             = 34835
A.Skill_Agony                    = 33308
A.Skill_Malefic_Wreath           = 34727
A.Skill_Prolonged_Suffering      = 34721
A.Skill_Cripple                  = 33326
A.Skill_Crippling_Grasp          = 36957
A.Skill_Debilitate               = 36943
A.Skill_Siphoning_Strikes        = 37977
A.Skill_Siphoning_Attacks        = 38050
A.Skill_Drain_Power              = 33316
A.Skill_Power_Extraction         = 36901
A.Skill_Sap_Essence              = 36891

-- ---------------------------------------------------
-- CLASS: TEMPLAR ------------------------------------
-- ---------------------------------------------------

-- AEDRIC SPEAR -------------
A.Skill_Radial_Sweep             = 22138
A.Skill_Biting_Jabs              = 26792
A.Skill_Binding_Javelin          = 26804
A.Skill_Focused_Charge           = 22149
A.Skill_Explosive_Charge         = 22161
A.Skill_Toppling_Charge          = 15540
A.Skill_Spear_Shards             = 26188
A.Skill_Luminous_Shards          = 26858
A.Skill_Blazing_Spear            = 26869
A.Skill_Sun_Shield               = 22178
A.Skill_Radiant_Ward             = 22182
A.Skill_Blazing_Shield           = 22180

-- DAWNS WRATH --------------
A.Skill_Nova                     = 21976
A.Skill_Solar_Prison             = 21755
A.Skill_Sun_Fire                 = 21726
A.Skill_Vampires_Bane            = 21729
A.Skill_Reflective_Light         = 21732
A.Skill_Solar_Flare              = 22057
A.Skill_Dark_Flare               = 22110
A.Skill_Solar_Barrage            = 22095
A.Skill_Backlash                 = 21761
A.Skill_Power_of_the_Light       = 21763
A.Skill_Eclipse                  = 21776
A.Skill_Total_Dark               = 22006
A.Skill_Radiant_Destruction      = 63029

-- RESTORING LIGHT ----------
A.Skill_Honor_The_Dead           = 22253
A.Skill_Lingering_Ritual         = 22314
A.Skill_Extended_Ritual          = 22262
A.Skill_Purifying_Ritual         = 22259

-- ---------------------------------------------------
-- TOGGLED EFFECTS -----------------------------------
-- ---------------------------------------------------

A.Toggled_Unstable_Familiar         = 23304 -- Summon Unstable Familiar (Sorcerer)
A.Toggled_Unstable_Clannfear        = 23319 -- Summon Unstable Clannfear (Sorcerer)
A.Toggled_Volatile_Familiar         = 23316 -- Summon Volatile Familiar (Sorcerer)
A.Toggled_Summon_Winged_Twilight    = 24613 -- Summon Winged Twilight (Sorcerer)
A.Toggled_Summon_Twilight_Tormentor = 24636 -- Summon Twilight Tormentor (Sorcerer)
A.Toggled_Summon_Twilight_Matriarch = 24639 -- Summon Twilight Matriarch (Sorcerer)
A.Toggled_Bound_Armor               = 24158 -- Bound Armor (Sorcerer)
A.Toggled_Bound_Armaments           = 24165 -- Bound Armaments (Sorcerer)
A.Toggled_Bound_Aegis               = 24163 -- Bound Aegis (Sorcerer)
A.Toggled_Overload                  = 24785 -- Overload (Sorcerer)
A.Toggled_Energy_Overload           = 24804 -- Energy Overload (Sorcerer)
A.Toggled_Power_Overload            = 24806 -- Power Overload (Sorcerer)
A.Toggled_Guard                     = 63318 -- Guard (Support)
A.Toggled_Mystic_Guard              = 63335 -- Mystic Guard (Support)
A.Toggled_Stalwart_Guard            = 63351 -- Stalwart Guard (Support)

-- ---------------------------------------------------
-- DAMAGE SHIELDS ------------------------------------
-- ---------------------------------------------------

A.DamageShield_Shielded_Assault     = 38401
A.DamageShield_Brawler              = 38754
A.DamageShield_Steadfast_Ward       = 41310
A.DamageShield_Ward_Ally            = 40130
A.DamageShield_Healing_Ward         = 40126
A.DamageShield_Annulment            = 29338
A.DamageShield_Dampen_Magic         = 39186
A.DamageShield_Harness_Magicka      = 39182
A.DamageShield_Bone_Shield          = 39369
A.DamageShield_Bone_Surge           = 42176
A.DamageShield_Spiked_Bone_Shield   = 42138
A.DamageShield_Barrier              = 38573
A.DamageShield_Replenishing_Barrier = 40239
A.DamageShield_Reviving_Barrier     = 40237
A.DamageShield_Siege_Shield         = 38570
A.DamageShield_Propelling_Shield    = 40226
A.DamageShield_Siege_Weapon_Shield  = 40229
A.DamageShield_Hardened_Armor       = 20328
A.DamageShield_Obsidian_Shield      = 29071
A.DamageShield_Fragmented_Shield    = 32673
A.DamageShield_Igneous_Shield       = 29224
A.DamageShield_Conjured_Ward        = 28418
A.DamageShield_Empowered_Ward       = 29482
A.DamageShield_Hardened_Ward        = 29489
A.DamageShield_Sun_Shield           = 22178
A.DamageShield_Radiant_Ward         = 22182
A.DamageShield_Blazing_Shield       = 22180

-- ---------------------------------------------------
-- VAMP & LYCAN EFFECTS ------------------------------
-- ---------------------------------------------------

A.VampLycan_Feed                    = 33152
A.VampLycan_Fed_on_ally             = 40359
A.VampLycan_Bit_an_ally             = 40525
A.VampLycan_Dark_Stalker            = 33090
A.VampLycan_Supernatural_Recovery   = 33095
A.VampLycan_Stage_1_Vampirism       = 35771
A.VampLycan_Stage_2_Vampirism       = 35776
A.VampLycan_Stage_3_Vampirism       = 35783
A.VampLycan_Stage_4_Vampirism       = 35792
A.VampLycan_Vampirism               = 40360
A.VampLycan_Lycanthropy             = 35658
A.VampLycan_Call_of_the_Pack        = 14271
A.VampLycan_Sanies_Lupinus          = 31068

-- ---------------------------------------------------
-- TRIGGERED EFFECTS ---------------------------------
-- ---------------------------------------------------

A.Trigger_Might_of_the_Guild        = 43561
A.Trigger_Crystal_Fragments_Proc    = 46327 --64159
A.Trigger_Assassins_Will            = 61907
A.Trigger_Assassins_Scourge         = 61932

-- ---------------------------------------------------
-- MUNDUS STONES -------------------------------------
-- ---------------------------------------------------

A.Boon_Warrior                      = 13940
A.Boon_Mage                         = 13943
A.Boon_Serpent                      = 13974
A.Boon_Thief                        = 13975
A.Boon_Lady                         = 13976
A.Boon_Steed                        = 13977
A.Boon_Lord                         = 13978
A.Boon_Apprentice                   = 13979
A.Boon_Ritual                       = 13980
A.Boon_Lover                        = 13981
A.Boon_Atronach                     = 13982
A.Boon_Shadow                       = 13984
A.Boon_Tower                        = 13985

-- ---------------------------------------------------
-- PASSIVE COMPARE -----------------------------------
-- ---------------------------------------------------

A.Passive_SoulSummons               = 39269
--A.Passive_Intercept               = 23284
A.Passive_SoulSiphoner              = 36603


-- ---------------------------------------------------
-- EQUIPMENT SETS EFFECTS ----------------------------
-- ---------------------------------------------------

--A.Equip_Torugs_Pact                 = 32759
--A.Equip_Hist_Bark                   = 32781
--A.Equip_Master                      = 61851
--A.Equip_Phoenix                     = 68933
--A.Equip_Para_Bellum                 = 71193

-- ---------------------------------------------------
-- OTHER EFFECTS -------------------------------------
-- ---------------------------------------------------

A.Skill_Overload_Light_Attack       = 24792
A.Skill_Overload_Heavy_Attack       = 24794
A.Skill_Familiar_Melee              = 27850
A.Skill_Zap                         = 8429
A.Skill_Kick                        = 4125
A.Effect_Burning                    = 1339
A.Effect_Explosion                  = 8041
A.Effect_Poisoned                   = 776
A.Effect_Diseased                   = 21925
A.Effect_Bleeding                   = 8398
A.Effect_Armor_Shatter              = 75071

-- Sanctum Ophidia
A.Effect_Magicka_Bomb               = 59036

-- vMOL Debuffs
A.Effect_Colossal_Mark              = 75672
A.Effect_Shattered                  = 75071
A.Effect_Shattered2                 = 73250
A.Effect_Grip_of_Lorkaj             = 57517
A.Effect_Unstable_Void              = 74488
A.Effect_Curse_Duration             = 25000


-- Replace ability IDs with names
for k, v in pairs(A) do
    if type(v) == "number" then
        A[k] = GetAbilityName(v)
    end
end

-- Export string data to global namespace
LUIE.GetAbility = function() return A end

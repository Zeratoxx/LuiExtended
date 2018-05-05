-- List of all abilityId's that have been processed so far
-- These id's don't show up on the debug event for EVENT_COMBAT_EVENT or EVENT_EFFECT_CHANGED
debugAuras = {

-------------------------------------

            -- Temporary (for debugging NPC abilities)

            [46519] = true, -- Charging Manuever
            [101181] = true, -- Charging Manuever
            [57484] = true, -- Maor Gallop
            [46522] = true, -- Charging Manuever
            [46630] = true, -- Purge
            [46631] = true, -- Purge
            [41347] = true, -- Defensive Posture
            [41351] = true, -- Defensive Posture
            [63257] = true, -- Resolving Vigor
            [63255] = true, -- Resolving Vigor
            [63256] = true, -- Resolving Vigor
            [30043] = true, -- Dark Deal
            [30045] = true, -- Dark Exchange
            [30046] = true, -- Dark Exchange Heal
            [30406] = true, -- Critical Surge
            [62156] = true, -- Major Brutality
            [96474] = true, -- Surge Heal
            [39769] = true, -- Brawler
            [39771] = true, -- Brawler
            [39774] = true, -- Brawler
            [39772] = true, -- Brawler
            [39770] = true, -- Brawler Bleed
            [39892] = true, -- Forward Momentum
            [62398] = true, -- Forward Momentum
            [62397] = true, -- Momentum
            [62400] = true, -- Major Brutality
            [39984] = true, -- Dizzying Swing
            [39986] = true, -- Dizzying Swing
            [39987] = true, -- Dizzying Swing
            [39942] = true, -- Reverse Slice
            [39946] = true, -- Reverse Slice
            [39945] = true, -- Reverse Slice
            [80412] = true, -- Absorption Field
            [29881] = true, -- Absorption Field
            [62269] = true, -- Absorption Field
            [62267] = true, -- Absorption Field

            [81908] = true, -- Some Craglorn stuff
            [81904] = true, -- Some Craglorn stuff
            [81900] = true, -- Some Craglorn stuff
            [81914] = true, -- Some Craglorn stuff
            [81939] = true, -- Some Craglorn stuff
            [81898] = true, -- Some Craglorn stuff

            [33743] = true, -- Reflective Scale
            [23856] = true, -- Hardened Armor
            [31827] = true, -- Hardened Armor
            [23857] = true, -- Hardened Armor Damage Return
            [61834] = true, -- Major Ward
            [61835] = true, -- Major Resolve

            [73872] = true, -- Catapult (Orsinium)

            [36337] = true, -- Shadow Cloak
            [36340] = true, -- Shadow Cloak
            [77753] = true, -- Clairvoyance Fx

            [33670] = true, -- Take Flight
            [33669] = true, -- Take Flight
            [33668] = true, -- Take Flight
            [48758] = true, -- CC Immunity

            -- Sorc stuff --

            [62174] = true,
            [82801] = true,
            [30244] = true,
            [80497] = true,
            [80496] = true,
            [62173] = true,
            [81393] = true,
            [81391] = true,
            [40689] = true,
            [40599] = true,
            [40690] = true,
            [30245] = true,
            [40945] = true,
            [44552] = true,
            [40842] = true,
            [40944] = true,
            [81392] = true,
            [40600] = true,
            [81394] = true,
            [40687] = true,
            [40688] = true,
            [40744] = true,
            [40746] = true,
            [57480] = true,
            [101177] = true,
            [40946] = true,
            [00000] = true,

            -- POTIONS --
            -------------------------------------

            -- Crafted Potions (2 Traits)
            [64564] = true, -- Major Resolve (... of Armor)
            [79709] = true, -- Creeping Ravage Health (... of Creeping Ravage Health)
            [79857] = true, -- Minor Defile (... of Defile)
            [45236] = true, -- Increase Detection (... of Detection)
            [45222] = true, -- Major Fortitude (... of Health)
            [45239] = true, -- Unstoppable (... or Immovability)
            [45237] = true, -- Vanish (... of Invisiblity)
            [77767] = true, -- Clairvoyance Fx (... of Invisibility)
            [79705] = true, -- Lingering Restore Health (... of Lingering Health)
            [45224] = true, -- Major Intellect (... of Magicka)
            [79712] = true, -- of Protection (... of Protection)
            [46208] = true, -- Minor Fracture (... of Ravage Armor)
            [46113] = true, -- Health Potion Poison (... of Ravage Health)
            [46193] = true, -- Ravage Magicka (... of Ravage Magicka)
            [47204] = true, -- Minor Uncertainty (... of Ravage Spell Critical)
            [46202] = true, -- Minor Cowardice (... of Ravage Spell Power)
            [46206] = true, -- Minor Breach (... of Ravage Spell Protection)
            [46199] = true, -- Ravage Stamina (... of Ravage Stamina)
            [47203] = true, -- Minor Enervation (... of Ravage Weapon Critical)
            [46204] = true, -- Minor Maim (... of Ravage Weapon Power)
            [46210] = true, -- Hindrance (... of Slow)
            [64566] = true, -- Major Expedtion (... of Speed)
            [64570] = true, -- Major Prophecy (... of Spell Critical)
            [64558] = true, -- Major Sorcery (... of Spell Power)
            [64562] = true, -- Major Ward (... of Spell Protection)
            [45226] = true, -- Major Endurance (... of Stamina)
            [68565] = true, -- Stun (... of Stun)
            [79848] = true, -- Major Vitality (... of Major Vitality)
            [79844] = true, -- Minor Vulnerability (... of Minor Vulnerability)
            [64568] = true, -- Major Savagery (... of Weapon Critical)
            [64555] = true, -- Major Brutality (... of Weapon Power)

            -- Crafted Potions (3 Traits)
            [64565] = true, -- Major Resolve (... of Armor)
            -- (no ... of Creeping Ravage Health)
            [79860] = true, -- Minor Defile (... of Defile)
            [45458] = true, -- Increase Detection (... of Detection)
            [63670] = true, -- Major Fortitude (... of Health)
            [45463] = true, -- Unstoppable (... of Immovability)
            [45460] = true, -- Vanish (... of Invisibility)
            [77766] = true, -- Clairvoyance Fx (... of Invisibility)
            [79706] = true, -- Lingering Restore Health (... of Linger Health)
            [63676] = true, -- Major Intellect (... of Magicka)
            [79714] = true, -- Minor Protection (... of Protection)
            [46250] = true, -- Minor Fracture (... of Ravage Armor)
            [46217] = true, -- Health Potion Lingering Effect (... of Ravage Health)
            [46237] = true, -- Ravage Magicka (... of Ravage Magicka)
            -- (no ... of Ravage Spell Critical)
            [46244] = true, -- Minor Cowardice (... of Ravage Spell Power)
            [46248] = true, -- Reduce Spell Resistance (... of Ravage Spell Protection)
            [46240] = true, -- Ravage Stamina (... of Ravage Stamina)
            [47202] = true, -- Reduce Weapon Critical (... of Ravage Weapon Critical)
            [46246] = true, -- Minor Maim (... of Ravage Weapon Power)
            [46252] = true, -- Hindrance (... of Slow)
            [64567] = true, -- Major Expedition (... of Speed)
            [64572] = true, -- Major Prophecy (... of Spell Critical)
            [64561] = true, -- Major Sorcery (... of Spell Power)
            [64563] = true, -- Major Ward (... of Spell Protection)
            [63681] = true, -- Major Endurance (... of Stamina)
            -- (no... of Stun)
            [79850] = true, -- Major Vitality (... of Vitality)
            -- (no... of Vulnerability)
            [64569] = true, -- Major Savagery (... of Weapon Critical)
            [64554] = true, -- Major Brutality (... of Weapon Power)

            -- Vendor Potions + AVA Potions + Roguish Draughts
            [63672] = true, -- Major Fortitude (... of Health)
            [63678] = true, -- Major Intellect (... of Magicka)
            [63683] = true, -- Major Endurance (... of Stamina)
            [72935] = true, -- Major Endurance (Alliance Battle Draught)
            [72936] = true, -- Major Brutality (Alliance Battle Draught)
            [72928] = true, -- Major Fortitude (Alliance Health Draught)
            [72930] = true, -- Unstoppable (Alliance Health Draught)
            [72932] = true, -- Major Intellect (Alliance Spell Draught)
            [72933] = true, -- Major Sorcery (Alliance Spell Draught)
            [78054] = true, -- Major Endurance (Roguish Stealth Draught)
            [78058] = true, -- Vanish (Roguish Stealth Draught)
            [78057] = true, -- Clairvoyance Fx (Roguish Escape Draught)
            [78080] = true, -- Major Endurance (Roguish Escape Draught)
            [78081] = true, -- Major Expedition (Roguish Escape Draught)

            -- Crown Store Potions
            [68405] = true, -- Major Fortitude (Crown Tri-Restoration Potion)
            [68406] = true, -- Major Intellect (Crown Tri-Restoration Potion)
            [68408] = true, -- Major Endurance (Crown Tri-Restoration Potion)
            [86780] = true, -- Invisibility (Crown Invisibility Potion)
            [86782] = true, -- Clairvoyance Fx (Crown Invisibility Potion)
            [86683] = true, -- Major Intellect (Crown Spellcaster's Elixir)
            [86684] = true, -- Major Prophecy (Crown Spellcaster's Elixir)
            [86685] = true, -- Major Sorcery (Crown Spellcaster's Elixir)
            [86697] = true, -- Major Fortitude (Crown Survivor's Elixir)
            [86698] = true, -- Unstoppable (Crown Survivor's Elixir)
            [86699] = true, -- Invisiblity (Crown Survivor's Elixir)
            [86702] = true, -- Clairvoyance Fx (Crown Survivor's Elixir)
            [86693] = true, -- Major Endurance (Crown Warrior's Elixir)
            [86694] = true, -- Major Savagery (Crown Warrior's Elixir)
            [86695] = true, -- Major Brutality (Crown Warrior's Elixir)
            [92415] = true, -- Major Fortitude (Gold Coast Swift Survivor Elixir)
            [92418] = true, -- Major Expedition (Gold Coast Swift Survivor Elixir)
            [92416] = true, -- Unstoppable (Gold Coast Swift Survivor Elixir)

            -------------------------------------
            -- POTION UP FRONT EFFECTS
            -------------------------------------

            -- Crafted Potions (2 Traits)
            [45221] = true, -- Restore Health
            [45223] = true, -- Restore Magicka
            [46111] = true, -- Ravage Health
            [45225] = true, -- Restore Stamina

            -- Crafted Potions (3 Traits)
            [45382] = true, -- Restore Health
            [45385] = true, -- Restore Magicka
            [46215] = true, -- Damage Health
            [45388] = true, -- Restore Stamina

            -- Vendor Potions + AVA Potions + Roguish Draughts
            [17302] = true, -- Restore Health (Vendor)
            [17323] = true, -- Restore Magicka (Vendor)
            [17382] = true, -- Restore Stamina (Vendor)
            [72934] = true, -- Restore Stamina (Alliance Battle Draught)
            [72927] = true, -- Restore Health (Alliance Health Draught)
            [72931] = true, -- Restore Magicka (Alliance Spell Draught)
            [78053] = true, -- Restore Stamina (Roguish Stealth Draught)
            [78079] = true, -- Restore Stamina (Roguish Escape Draught)
            [68401] = true, -- Restore All Resources (Crown Tri-Restoration Potion)
            [68407] = true, -- Restore Magicka (Crown Tri-Restoration Potion)
            [68409] = true, -- Restore Stamina (Crown Tri-Restoration Potion)
            [86682] = true, -- Crown Spellcaster's Elixir (Crown Spellcaster's Elixir)
            [86696] = true, -- Crown Survivor's Elixir (Crown Survivor's Elixir)
            [86692] = true, -- Crown Warrior's Elixir (Crown Warrior's Elixir)
            [92414] = true, -- Crown Survivor's Elixir (Gold Coast Swift Survivor Elixir)

            -------------------------------------
            -- POISONS --
            -------------------------------------

            -- Crafted Poisons (2 Traits)
            [79133] = true, -- Drain Health (Drain Health Poison)
            [79134] = true, -- Restore Health (Drain Health Poison)
            [79025] = true, -- Ravage Health (Damage Health Poison)
            [82667] = true, -- Ravage Health (Damage Health Poison)
            [79137] = true, -- Drain Magicka (Drain Magicka Poison)
            [79138] = true, -- Restore Magicka (Drain Magicka Poison)
            [79037] = true, -- Ravage Magicka (Damage Magicka Poison)
            [79141] = true, -- Drain Stamina (Drain Stamina Poison)
            [79142] = true, -- Restore Stamina (Drain Stamina Poison)
            [79045] = true, -- Ravage Stamina (Damage Stamina Poison)
            [79284] = true, -- Drain Spell Resist (Ward-Draining Poison)
            [79285] = true, -- Minor Ward (Ward-Draining Poison)
            [79087] = true, -- Minor Breach (Breaching Poison)
            [79309] = true, -- Drain Physical Resist (Resolve-Draining Poison)
            [79310] = true, -- Minor Resolve (Resolve-Draining Poison)
            [79090] = true, -- Minor Fracture (Fracturing Poison)
            [79193] = true, -- Minor Cowardice (Sorcery-Draining Poison)
            [79221] = true, -- Minor Sorcery (Sorcery-Draining Poison)
            [79069] = true, -- Minor Cowardice (Cowardice Poison)
            [79280] = true, -- Drain Weapon Power (Brutality-Draining Poison)
            [79281] = true, -- Minor Brutality (Brutality-Draining Poison)
            [79083] = true, -- Minor Maim (Maiming Poison)
            [79446] = true, -- Minor Uncertainty (Prophecy-Draining Poison)
            [79447] = true, -- Minor Prophecy (Prophecy-Draining Poison)
            [79117] = true, -- Minor Uncertainty (Uncertainty Poison)
            [79450] = true, -- Minor Enervation (Savagery-Draining Poison)
            [79453] = true, -- Minor Savagery (Savagery-Draining Poison)
            [79113] = true, -- Minor Enervation (Enervating Poison)
            [79457] = true, -- Immobilize (Escapist's Poison)
            [79458] = true, -- Unstoppable (Escapist's Poison)
            [79122] = true, -- Immobilize (Entrapping Poison)
            [79996] = true, -- Revealing Poison (Stealth-Draining Poison)
            [80003] = true, -- Marking Poison (Conspicuous Poison)
            [79367] = true, -- Hindrance (Speed-Draining Poison)
            [79368] = true, -- Major Expedition (Speed-Draining Poison)
            [79094] = true, -- Hindrance (Hindering Poison)
            [79699] = true, -- Drain Health (Gradual Health Drain Poison)
            [81351] = true, -- Drain Health (Gradual Health Drain Poison)
            [79700] = true, -- Restore Health (Gradual Health Drain Poison)
            [79707] = true, -- Creeping Ravage Health (Gradual Ravage Health Poison)
            [79723] = true, -- Minor Vulnerability (Protection-Reversing Poison)
            [79725] = true, -- Minor Protection (Protection-Reversing Poison)
            [79715] = true, -- Minor Vulnerability (Vulnerability Poison)
            [79851] = true, -- Minor Defile (Vitality-Draining Poison)
            [79852] = true, -- Minor Vitality (Vitality-Draining Poison)
            [79861] = true, -- Minor Defile (Defiling Poison)

            -- Crafted Poisons (3 Traits)
            [79135] = true, -- Drain Health (Drain Health Poison)
            [79136] = true, -- Restore Health (Drain Health Poison)
            [78922] = true, -- Ravage Health (Damage Health Poison)
            [82668] = true, -- Ravage Health (Damage Health Poison)
            [79139] = true, -- Drain Magicka (Drain Magicka Poison)
            [79140] = true, -- Restore Magicka (Drain Magicka Poison)
            [79044] = true, -- Ravage Magicka (Damage Magicka Poison)
            [79143] = true, -- Drain Stamina (Drain Stamina Poison)
            [79144] = true, -- Restore Stamina (Drain Stamina Poison)
            [79046] = true, -- Ravage Stamina (Damage Stamina Poison)
            [79306] = true, -- Drain Spell Resist (Ward-Draining Poison)
            [79307] = true, -- Minor Ward (Ward-Draining Poison)
            [79086] = true, -- Minor Breach (Breaching Poison)
            [79311] = true, -- Drain Physical Resist (Resolve-Draining Poison)
            [79312] = true, -- Minor Resolve (Resolve-Draining Poison)
            [79091] = true, -- Minor Fracture (Fracturing Poison)
            [79278] = true, -- Drain Spell Power (Sorcery-Draining Poison)
            [79279] = true, -- Minor Sorcery (Sorcery-Draining Poison)
            [79082] = true, -- Minor Cowardice (Cowardice Poison)
            [79282] = true, -- Minor Maim (Brutality-Draining Poison)
            [79283] = true, -- Minor Brutality (Brutality-Draining Poison)
            [79085] = true, -- Minor Maim (Maiming Poison)
            [79448] = true, -- Drain Spell Crit (Prophecy-Draining Poison)
            [79449] = true, -- Minor Prophecy (Prophecy-Draining Poison)
            -- (no Uncertainty Poison)
            [79454] = true, -- Minor Enervation (Savagery-Draining Poison)
            [79455] = true, -- Minor Savagery (Savagery-Draining Poison)
            [79116] = true, -- Minor Enervation (Enervating Poison)
            [79459] = true, -- Immobilize (Escapist's Poison)
            [79460] = true, -- Unstoppable (Escapist's Poison)
            -- (no Entrapping Poison)
            [80002] = true, -- Revealing Poison (Stealth-Draining Poison)
            [80004] = true, -- Marking Poison (Conspicuous Poison)
            [79369] = true, -- Hindrance (Speed-Draining Poison)
            [79370] = true, -- Major Expedition (Speed-Draining Poison)
            [79102] = true, -- Hindrance (Hindering Poison)
            [79701] = true, --  Creeping Drain Health (Gradual Health Drain Poison)
            [81348] = true, -- Creeping Drain Helath (Gradual Health Drain Poison)
            [79702] = true, -- Lingering Restore Health (Gradual Health Drain Poison)
            -- (no Gradual Ravage Health Poison)
            -- (no Gradual Ravage Health Poison)
            [79726] = true, -- Minor Vulnerability (Protection-Reversing Poison)
            [79727] = true, -- Minor Protection (Protection-Reversing Poison)
            -- (no Vulnerability Poison)
            [79854] = true, -- Minor Defile (Vitality-Draining Poison)
            [79855] = true, -- Minor Vitality (Vitality-Draining Poison)
            [79862] = true, -- Minor Defile (Defiling Poison)

            -- Vendor Poisons
            [81553] = true, -- Ravage Health (Cloudy Damage Health Poison)
            [81551] = true, -- Creeping Ravage Health (Cloudy Gradual Ravage Health Poison)
            [81552] = true, -- Creeping Ravage Health (Cloudy Gradual Ravage Health Poison)
            [81554] = true, -- Hindrance (Cloudy Hindering Poison)

            -- Crown Poisons
            [88476] = true, -- Creeping Ravage Health (Crown Debilitating Poison)
            [88477] = true, -- Hindrance (Crown Debilitating Poison)
            [88471] = true, -- Drain Magicka (Crown Draining Poison)
            [88475] = true, -- Drain Stamina (Crown Draining Poison)
            [88473] = true, -- Restore Magicka (Crown Draining Poison)
            [88474] = true, -- Restore Stamina (Crown Draining Poison)
            [88469] = true, -- Minor Maim (Crown Enfeebling Poison)
            [88470] = true, -- Minor Defile (Crown Enfeebling Poison)
            [81274] = true, -- Ravage Health (Crown Lethal Poison)
            [81275] = true, -- Creeping Ravage Health (Crown Lethal Poison)
            [88462] = true, -- Immobilize (Crown Trapping Poison)
            [88463] = true, -- Hindrance (Crown Trapping Poison)

            -------------------------------------
            -- FOOD & DRINK --
            -------------------------------------

            -- General Events
            [47983] = true, -- Drink Bonus Duration
            [47984] = true, -- Food Bonus Duration
            [60315] = true, -- Eating Meal

            -- Crafted Food
            [61259] = true, -- Health Food (Green)
            [61260] = true, -- Magicka Food (Green)
            [61261] = true, -- Stamina Food (Green)
            [61294] = true, -- Magicka + Stamina Food (Blue)
            [61295] = true, -- Magicka Consumable
            [61255] = true, -- Health + Stamina Food (Blue)
            [61256] = true, -- Magicka Consumable
            [61257] = true, -- Health + Magicka Food (Blue)
            [61258] = true, -- Magicka Consumable
            [61218] = true, -- Triple Food (Purple)
            [61219] = true, -- Magicka Consumable
            [61220] = true, -- Magicka Consumable
            [72819] = true, -- Orzorga's Tripe Trifle Pocket (Blue)
            [72820] = true, -- Magicka Consumable
            [72822] = true, -- Orzorga's Blood Price Pie (Blue)
            [72823] = true, -- Magicka Consumable
            [72824] = true, -- Orzorga's Smoked Bear Haunch (Gold)
            [72825] = true, -- Magicka Consumable
            [72826] = true, -- Magicka Consumable
            [72827] = true, -- Magicka Consumable
            [100502] = true, -- Deregulated Mushroom Stew
            [100503] = true, -- Magicka Consumable
            [100498] = true, -- Clockwork Citrus Filet
            [100499] = true, -- Magicka Consumable
            [100500] = true, -- Magicka Consumable
            [100501] = true, -- Magicka Consumable

            -- Crafted Drink
            [61322] = true, -- Health Drink (Green)
            [61323] = true, -- Well Fed
            [61325] = true, -- Magicka Drink (Green)
            [61326] = true, -- Well Fed
            [61328] = true, -- Stamina Drink (Green)
            [61329] = true, -- Well Fed
            [61345] = true, -- Magicka + Stamina Drink (Blue)
            [61346] = true, -- Well Fed
            [61348] = true, -- Well Fed
            [61340] = true, -- Health + Stamina Drink (Blue)
            [61341] = true, -- Well Fed
            [61344] = true, -- Well Fed
            [61335] = true, -- Health + Magicka Drink (Blue)
            [61336] = true, -- Well Fed
            [61339] = true, -- Well Fed
            [61350] = true, -- Triple Drink (Purple)
            [61351] = true, -- Well Fed: Health Regen
            [61354] = true, -- Well Fed: Magicka Regen
            [61355] = true, -- Well Fed: Stamina Regen
            [72816] = true, -- Orzorga's Red Frothgar (Blue)
            [72817] = true, -- Magicka Consumable
            [100488] = true, -- Spring-Loaded Infusion
            [100490] = true, -- Magicka Consumable

            -- Crafted Seasonal Food
            [84681] = true, -- Crisp and Crunchy Pumpkin Skewer (Blue)
            [84682] = true, -- Increase Stamina
            [84683] = true, -- Witchfest Food: M, S, Meal
            [84709] = true, -- Crunchy Spider Skewer (Blue)
            [84710] = true, -- Increase Stamina Regen
            [84711] = true, -- Witchfest Food: Max M, Reg S,
            [84725] = true, -- Frosted Brains (Blue)
            [84728] = true, -- Increase Health Regen
            [84729] = true, -- Witchfest Food: M, H Reg Meal
            [84678] = true, -- Sweet Sanguine Apples (Green)
            [86789] = true, -- Alcaire Festival Sword-Pie (Green)
            [86749] = true, -- Jagga-Drenched "Mud Ball" (Blue)
            [86750] = true, -- Increase Stamina
            [86748] = true, -- New Life Food: Max M, S
            [86673] = true, -- Lava Foot Soup-and-Saltrice (Blue)
            [86674] = true, -- Increase Stamina Recovery
            [86669] = true, -- Newlife Food: Reg S, Max S, So
            [86560] = true, -- Old Aldmeri Orphan Gruel (Green)
            [86787] = true, -- Rajhin's Sugar Claws (Green)
            [89955] = true, -- Candied Jester's Coins (Blue)
            [89954] = true, -- Jesters Food: Max S, Reg M
            [89956] = true, -- Increase Max Magicka
            [89971] = true, -- Jewels of Misrule (Purple)
            [89953] = true, -- Jesters Food: Max H, Reg MS
            [89972] = true, -- Increase Magicka Recovery
            [88973] = true, -- Increase Health
            [89956] = true, -- Princess' Delight (Green)
            [89921] = true, -- Jesters Food: Butterflies
            [89919] = true, -- Jesters Food: Max M

            -- Crafted Seasonal Drink
            [84700] = true, -- Bowl of "Peeled Eyeballs" (Blue)
            [84701] = true, -- Increase Health Regen
            [84702] = true, -- Witchfest Drink: M, H, Flagon
            [84735] = true, -- Double Bloody Mara (Gold)
            [84736] = true, -- Increase Health
            [84737] = true, -- Witchfest Drink: Max MH, Flago
            [84720] = true, -- Ghastly Eye Bowl (Blue)
            [84722] = true, -- Increase Magicka Regen
            [84723] = true, -- Witchfest Food: Max M, Reg M,
            [84704] = true, -- Witchmother's Party Punch (Purple)
            [84705] = true, -- Increase Health Regen
            [84706] = true, -- Increase Health Regen
            [84731] = true, -- Witchmother's Potent Brew (Purple)
            [84734] = true, -- Witchfest Food: Max HM, Reg M,
            [84732] = true, -- Increase Health Regen
            [84733] = true, -- Increase Health Regen
            [86677] = true, -- Bergama Warning Fire (Blue)
            [86676] = true, -- Newlife Drink: Reg H, Max S, F
            [86678] = true, -- Increase Health Recovery
            [86746] = true, -- Betnikh Twice-Spiked Ale (Blue)
            [86745] = true, -- Newlife Drink: Reg H, M, Belch
            [86747] = true, -- Increase Health Recovery
            [86559] = true, -- Hissmir Fish-Eye Rye (Gold)
            [86558] = true, -- Newlife Drink: Reg MS, Flagon
            [86560] = true, -- Increase Stamina Recovery
            [86791] = true, -- Snow Bear Glow-Wine (Green)
            [89957] = true, -- Dubious Camoran Throne (Purple)
            [89939] = true, -- Jesters Food: Max HS, Reg S
            [89958] = true, -- Increase Stamina
            [89959] = true, -- Increase Health

            -- Vendor Food & Drink
            [66551] = true, -- Vendor Health Food (White)
            [66568] = true, -- Vendor Magicka Food (White)
            [66576] = true, -- Vendor Stamina Food (White)
            [66586] = true, -- Vendor Health Drink (White)
            [66588] = true, -- Well Fed
            [66590] = true, -- Vendor Magicka Drink (White)
            [66592] = true, -- Well Fed
            [66594] = true, -- Vendor Stamina Drink (White)
            [66596] = true, -- Well Fed

            -- AVA Food & Drink
            [72961] = true, -- Cyrodilic Field Bar (White)
            [72962] = true, -- Increase Max Health
            [72956] = true, -- Cyrodilic Field Tack (White)
            [72957] = true, -- Increase Max Health
            [72959] = true, -- Cyrodilic Field Treat (White)
            [72960] = true, -- Increase Max Health
            [72971] = true, -- Cyrodilic Field Tonic (White)
            [72972] = true, -- Well Fed
            [72973] = true, -- Well Fed
            [72965] = true, -- Cyrodilic Field Brew (White)
            [72966] = true, -- Well Fed
            [72967] = true, -- Well Fed
            [72968] = true, -- Cyrodilic Field Tea (White)
            [72969] = true, -- Well Fed
            [72970] = true, -- Well Fed

            -- Crown Food & Drink
            [85484] = true, -- Crown Crate Fortifying Meal
            [85485] = true, -- Increase Max Stamina
            [85486] = true, -- Increase Max Magicka
            [68411] = true, -- Crown Fortifying Meal
            [68412] = true, -- Increase Max Stamina
            [68413] = true, -- Increase Max Magicka
            [85497] = true, -- Crown Crate Refreshing Drink
            [85498] = true, -- Well Fed
            [85499] = true, -- Well Fed
            [85500] = true, -- Well Fed
            [68416] = true, -- Crown Refreshing Drink
            [68418] = true, -- Well Fed
            [68420] = true, -- Well Fed
            [68422] = true, -- Well Fed
            [92435] = true, -- Crown Combat Mystic's Stew
            [92434] = true, -- Increase Maximum Health and Ma
            [92437] = true, -- Increase Health
            [92474] = true, -- Crown Vigorous Ragout
            [92473] = true, -- Increase Maximum Health and St
            [92477] = true, -- Increase Health
            [92433] = true, -- Crown Stout Magic Liqueur
            [92432] = true, -- Crown Drink: M, H, Flagon
            [92436] = true, -- Increase Health Regen
            [92476] = true, -- Crown Vigorous Tincture
            [92475] = true, -- Crown Drink: M, H, Flagon
            [92478] = true, -- Increase Health Regen

            -------------------------------------
            -- MISC CONSUMABLES --
            -------------------------------------

            -- Experience Bonuses
            [64210] = true, -- Increased Experience (Psijic Ambrosia)
            [89683] = true, -- Increased Experience (Aetherial Ambrosia)
            [88445] = true, -- Increasde Experience (Mythic Aetherial Ambrosia)
            [66776] = true, -- Increased Experience (Crown Experience Scroll)
            [85501] = true, -- Increased Experience (Crown Crate Experience Scroll)
            [85502] = true, -- Increased Experience (Major Crown Crate Experience Scroll)
            [85503] = true, -- Increased Experience (Grand Crown Crate Experience Scroll)

            -- Other
            [68259] = true, -- 68235 Stun (Psijic Ambrosia Recipe, Fragment I-VII)
            [70582] = true, -- Roll 1d1000 (Merethic Resorative Resin)
            [70584] = true, -- 68235 Stun (Merethic Restorative Resin)
            [63427] = true, -- Clean Fish (Any Fish)
            [78052] = true, -- Minor Pardon (Counterfeit Pardon Edict)
            [76350] = true, -- Moderate Pardon (Leniency Edict)
            [76349] = true, -- Full Pardon (Grand Amnesty Edict)
            [68203] = true, -- Riding Lesson: Carry Capacity (Crown Lesson: Riding Capacity)
            [68356] = true, -- Riding Carry Track (Crown Lesson: Riding Capacity)
            [68533] = true, -- Carry Capacity Announcement Tr (Crown Lesson: Riding Capacity)
            [68201] = true, -- Riding Lesson: Speed (Crown Lesson: Riding Speed)
            [68472] = true, -- Riding Speed Tracking (Crown Lesson: Riding Speed)
            [68485] = true, -- Speed Announcement Tracker (Crown Lesson: Riding Speed)
            [68202] = true, -- Riding Lesson: Stamina(Crown Lesson: Riding Stamina)
            [68321] = true, -- Riding Stamina Tracking(Crown Lesson: Riding Stamina)
            [68528] = true, -- Stamina Announcement Tracker (Crown Lesson: Riding Stamina)
            [69293] = true, -- Sigil of Imperial Retreat (Sigil of Imperial Retreat)

            -- Seasonal
            [86792] = true, -- Eating (High Hrothgar Festival Mints)
            [86794] = true, -- Very Cold (High Hrothgar Festival Mints)
            [86739] = true, -- Drinking (Sailor's Warning Festival Grog)
            [86740] = true, -- Very Drunk (Sailor's Warning Festival Grog)
            [85353] = true, -- Sword Swallowing (Disposable Swallower's Sword)
            [85354] = true, -- Dagger Juggling (Disposable Juggling Knives)
            [85355] = true, -- Flame Juggling (Fire-Breather's Oil Bun)
            [87964] = true, -- Jester's Festival Illusion Daz (Sparkwreath Dazzler)
            [87965] = true, -- Jester's Festival Illusion Daz (Plume Dazzler)
            [87966] = true, -- Jester's Festival Illusion Daz (Spiral Dazzler)
            [88374] = true, -- Jester's Festival Illusion Daz (Sparkly Hat Dazzler)

            -------------------------------------
            -- MEMENTOS --
            -------------------------------------

            [26829] = true, -- Light of the Tribunal (Almalexia's Enchanted Lantern)
            [26736] = true, -- Bear Trap (Battered Bear Trap)
            [51555] = true, -- Bear Trap (Battered Bear Trap)
            [16846] = true, -- Blackfeather Court Whistle (Blackfeather Court Whistle)
            [41988] = true, -- Bonesnap Binding Stone (Bonesnap Binding Stone)
            [39245] = true, -- Glimpse of the Forbidden (Discourse Amaranthine)
            [41950] = true, -- Fetish of Anger (Fetish of Anger)
            [21226] = true, -- Finvir's Trinket (Finvir's Trinket)
            [41948] = true, -- Glanir's Smoke Bomb (Glanir's Smoke Bomb)
            [25696] = true, -- Falcon Takeoff (Justal's Falcon)
            [25699] = true, -- Falcon Timer (Justal's Falcon)
            [25703] = true, -- Justal's Falcon (Justal's Falcon)
            [25701] = true, -- Q4333 Falcon land now (Justal's Falcon)
            [43700] = true, -- Wand of Finding (Lena's Wand of Finding)
            [43702] = true, -- Invis Chicken Delay (Lena's Wand of Finding)
            [43703] = true, -- Extracting... (Lena's Wand of Finding)
            [43704] = true, -- Extracting... (Lena's Wand of Finding)
            [43701] = true, -- Extracting... (Lena's Wand of Finding)
            --[6351] = true, -- CON_GhostlyFlash (Lodorr's Crown)
            [42076] = true, -- Tear (Mezha-dro's Sealing Amulet)
            [42080] = true, -- Tear (Mezha-dro's Sealing Amulet)
            [42105] = true, -- Nanwen's Sword (Nanwen's Sword)
            [34578] = true, -- Nirnroot Wine (Nirnroot Wine)
            --[8825] = true, -- Generic Crouch Fiddle Animatio (Questionable Meat Sack)
            [26339] = true, -- Eating (Questionable Meat Sack)
            [25369] = true, -- Sanguine's Goblet (Sanguine's Goblet)
            [42008] = true, -- Blessing of Root Sunder (Token of Root Sunder)
            [89550] = true, -- TROPHY Azura's Light (Twilight Shard)
            [42053] = true, -- Yokudan Salute (Yokudan Totem)
            --[12478] = true, -- CON_Ground Rise on (Yokudan Totem)
            [42067] = true, -- Explosion (Yokudan Totem)

            [79510] = true, -- TROPHY Blood Oath (Blade of the Blood Oath)
            [92862] = true, -- Ringing Bell (Dreamer's Chime)
            [92863] = true, -- Stun (Dreamer's Chime)
            --[00000] = true, -- BOX OF FORBIDDEN RELICS SAVED SPACE
            --[77785] = true, -- Rain of Coins (Coin of Illusory Riches)
            --[77786] = true, -- Stun (Coin of Illusory Riches)
            [73685] = true, -- Rkindaleft Trophy (Hidden Pressure Vent)
            [74151] = true, -- Stun (Hidden Pressure Vent)
            [73686] = true, -- Old Orsinium Trophy (Malacath's Wrathful Flame)
            [74232] = true, -- Stun (Malacath's Wrathful Flame)
            [77027] = true, -- Anniversary Cake - Forreals (Jubilee Cake)
            [87998] = true, -- Anniversary Cake (2nd Annual Jubilee Cake)
            [102009] = true, -- Anniversary Cake (3rd Annual Jubilee Cake)
            [77123] = true, -- Anniversary EXP Buff (Any Jubilee Cake)
            [81575] = true, -- Event - WitchFest Cauldron (Witchmother's Whistle)
            [84361] = true, -- Witchmother's Brew (Witchmother's Whistle)
            [84369] = true, -- Witchmother's Brew (Witchmother's Whistle)
            [86774] = true, -- Mudball (Mud Ball)
            [86777] = true, -- Mudball (Mud Ball)
            [86775] = true, -- Covered in Mud (Mud Ball)
            [86779] = true, -- Covered in Mud (Mud Ball)
            [87963] = true, -- Bestowed Cherry Blossoms (Cherry Blossom Branch)
            [91368] = true, -- Jester's Experience Boost Pie (The Pie of Misrule)
            [91369] = true, -- Jester's Experience Boost Pie (The Pie of Misrule)
            [91446] = true, -- Jester's Experience Boost Pie -- Breda's Bottomless Mead Mug
            [91450] = true, -- Breda's Magnificent Mead -- Breda's Bottomless Mead Mug
            [91451] = true, -- Breda's Magnificent Mead -- Breda's Bottomless Mead Mug
            [91452] = true, -- Breda's Magnificent Mead -- Breda's Bottomless Mead Mug
            [91453] = true, -- Breda's Magnificent Mead -- Breda's Bottomless Mead Mug
            [91449] = true, -- Breda's Magnificent Mead -- Breda's Bottomless Mead Mug

            [85344] = true, -- Atronach Aura (Storm Atronach Aura)
            [85349] = true, -- Atronach Transformation (Storm Atronach Transform)
            [85347] = true, -- Atronach Juggling (Storm Orb Juggle)
            [86976] = true, -- Spriggan Aura (Wild Hunt Leaf-Dance Aura)
            [86977] = true, -- Spriggan Transformation (Wild Hunt Transform)
            [86978] = true, -- Grand Spriggan Aura (Floral Swirl Aura)
            [92866] = true, -- Dwarven Globe (Dwarven Puzzle Orb)
            [92867] = true, -- Dwarven Tuning Forks (Dwaven Tonal Forks)
            [92868] = true, -- Dwarven Transformation (Dwemervamidium Mirage)

            [97273] = true, -- TROPHY Death Crate Mem 1 (Crow's Calling)
            [97275] = true, -- TROPHY Death Crate Mem 3 (Murderous Strike)
            [98378] = true, -- Murderous Strike (Murderous Strike)
            [97274] = true, -- Swarm of Crows (Swarm of Crows)

            [99318] = true, -- TROPHY Flame Crate Mem 1 (Fiery Orb)
            [99319] = true, -- Flame Crate Memento 2 (Flame Pixie)
            [99320] = true, -- TROPHY Flame Crate Mem 3 (Flame Eruption)

            [101874] = true, -- _CRWN Dragon Priest Mem2 Ice T (Scalecaller Frost Shard)
            [101877] = true, -- _CRWN Dragon Priest Mem1 Fl/St (Scalecaller Rune of Levitation)
            [101872] = true, -- _CRWN Dragon Priest Memento 3 (Bone Dragon Summons Focus)

            -------------------------------------
            -- PETS --
            -------------------------------------

            --[76364] = true, -- _CRWN_5s
            --[76365] = true, -- _CRWN_Echalette_Buck
            --[76367] = true, -- _CRWN_ResetPosture
            --[76368] = true, -- _CRWN_1s
            --[78642] = true, -- _CRWN_Jackal_Mouse
            --[78463] = true, -- _CRWN_Jackal_Digging
            --[81301] = true, -- _CRWN_Badger_EatCritter

            -------------------------------------
            -- OTHER COLLECTIBLES --
            -------------------------------------

            [77645] = true, -- Stealth (Pirharri the Smuggler)
            [77629] = true, -- Stun For Costumes, 3s (Various Polymorphs)
            [77630] = true, -- Stun For Costumes, 4s (Various Polymorphs)

            -------------------------------------
            -- ENCHANTS --
            -------------------------------------

            -- Jewelry Enchants
            [46751] = true, -- Increase Bash Damage (Glyph of Bashing)
            [46741] = true, -- Increase Potion Effect (Glyph of Potion Boost)
            [46742] = true, -- Reduce Potion Cooldown (Glyph of Potion Speed)
            [46733] = true, -- Reduce Stamina Cost (Glyph of Reduce Feat Cost)
            [26750] = true, -- Reduce Magicka Cost (Glyph of Reduce Spell Cost)
            [46739] = true, -- Reduce Block and Bash Cost (Glyph of Shielding)

            -- Weapon Enchants
            [28919] = true, -- Life Drain (Glyph of Absorb Health)
            [28921] = true, -- Life Drain (Glyph of Absorb Health)
            [46743] = true, -- Absorb Magicka (Glyph of Absorb Magicka)
            [46744] = true, -- Absorb Magicka (Glyph of Absorb Magicka)
            [46746] = true, -- Absorb Stamina (Glyph of Asborb Stamina)
            [46747] = true, -- Absorb Stamina (Glyph of Asborb Stamina)
            [17906] = true, -- Crusher (Glyph of Crushing)
            [46749] = true, -- Damaage Health (Glyph of Decrease Health)
            [17895] = true, -- Fiery Weapon (Glyph of Flame)
            [17904] = true, -- Befouled Weapon (Glyph of Foulness)
            [17897] = true, -- Frozen Weapon (Glyph of Frost)
            [17947] = true, -- Hardening (Glyph of Hardening)
            [21578] = true, -- Hardening (Glyph of Hardening)
            [17902] = true, -- Poisoned Weapon (Glyph of Poison)
            [40337] = true, -- Prismatic Weapon (Glyph of Prismatic Onslaught)
            [17899] = true, -- Charged Weapon (Glyph of Shock)
            [17945] = true, -- Weakening (Glyph of Weakening)
            [17910] = true, -- Weapon Damage (Glyph of Weapon Damage)
            [21230] = true, -- Berserker (Glyph of Weapon Damage)

            -------------------------------------
            -- STATUS EFFECT PROCS --
            -------------------------------------

            [18084] = true, -- Burning (Fire Status Effect)
            [21925] = true, -- Diseased (Disease Status Effect)
            [21927] = true, -- Major Defile (Disease Status Effect)
            [21481] = true, -- Chill (Frost Status Effect)
            [68368] = true, -- Minor Maim (Frost Status Effect)
            [95136] = true, -- Chill (Frost Status Effect)
            [21929] = true, -- Poisoned (Poison Status Effect)
            [21487] = true, -- Concussion (Shock Status Effect)
            [68359] = true, -- Minor Maim (Shock Status Effect)
            [95134] = true, -- Concussion (Shock Status Effect)

            -------------------------------------
            -- EQUIPMENT --
            -------------------------------------

            -- Weapons
            [100473] = true, -- Chaotic Whirlwind (Asylum)
            [100301] = true, -- Piercing Spray (Asylum)
            [100302] = true, -- Piercing Spray (Asylum)
            [100293] = true, -- Disciplined Slash (Asylum)
            [100294] = true, -- Disciplined Slash (Asylum)
            [100461] = true, -- Defensive Position (Asylum)
            [100463] = true, -- Defensive Position (Asylum)
            [100465] = true, -- Defensive Position (Perfected) (Asylum)
            [100462] = true, -- Defensive Position (Asylum)
            [100464] = true, -- Defensive Position (Asylum)
            [100303] = true, -- Concentrated Forced (Asylum)
            [100304] = true, -- Concentrated Forced (Asylum)
            [100306] = true, -- Concentrated Forced (Asylum)
            [100307] = true, -- Timeless Blessing (Asylum)
            [100308] = true, -- Timeless Blessing (Asylum)

            [99597] = true, -- Chaotic Whirlwind (Perfected) (Asylum)
            [99362] = true, -- Piercing Spray (Perfected) (Asylum)
            [99363] = true, -- Piercing Spray (Perfected) (Asylum)
            [99360] = true, -- Disciplined Slash (P) (Asylum)
            [99361] = true, -- Disciplined Slash (Perfected) (Asylum)
            [99896] = true, -- Defensive Position (Asylum)
            [100454] = true, -- Defensive Position (Perfected) (Asylum)
            [100455] = true, -- Defensive Position (Asylum)
            [99920] = true, -- Defensive Position (Perfected) (Asylum)
            [99919] = true, -- Defensive Position (Perfected) (Asylum)
            [99596] = true, -- Concentrated Force (Perfected) (Asylum)
            [99987] = true, -- Concentrated Force (P) (Asylum)
            [99989] = true, -- Concentrated Force (P) (Asylum)
            [99550] = true, -- Timeless Blessing (Perfected) (Asylum)
            [99582] = true, -- Timeless Blessing (Perfected) (Asylum)

            [99805] = true, -- Cruel Flurry (Maelstrom)
            [99806] = true, -- Cruel Flurry (Maelstrom)
            [99851] = true, -- Thunderous Volley (Maelstrom)
            [99852] = true, -- Thunderous Volley (Maelstrom)
            [99854] = true, -- Thunderous Volley (Maelstrom)
            [99853] = true, -- Thunderous Volley (Maelstrom)
            [99787] = true, -- Merciless Charge (Maelstrom)
            [99789] = true, -- Merciless Charge (Maelstrom)
            [99801] = true, -- Rampaging Slash (Maelstrom)
            [100588] = true, -- Rampaging Slash (Maelstrom)
            [100586] = true, -- Rampaging Slash (Maelstrom)
            [100587] = true, -- Rampaging Slash (Maelstrom)
            [100589] = true, -- Rampaging Slash (Maelstrom)
            [99875] = true, -- Crushing Wall (Maelstrom)
            [100155] = true, -- Crushing Wall (Maelstrom)
            [99876] = true, -- Crushing Wall (Maelstrom)
            [99886] = true, -- Precise Regeneration (Maelstrom)
            [100161] = true, -- Precise Regeneration (Maelstrom)
            [100165] = true, -- Precise Regeneration (Maelstrom)
            [99887] = true, -- Precise Regeneration (Maelstrom)

            [99762] = true, -- Stinging Slashes (Master)
            [100070] = true, -- Stinging Slashes (Master)
            [99766] = true, -- Caustic Arrow (Master)
            [100105] = true, -- Caustic Arrow (Master)
            [99742] = true, -- Titanic Cleave (Master)
            [101798] = true, -- Titanic Cleave (Master)
            [99759] = true, -- Puncturing Remedy (Master)
            [99761] = true, -- Puncturing Remedy (Master)
            [100575] = true, -- Puncturing Remedy (Master)
            [99774] = true, -- Destructive Impact (Master)
            [99780] = true, -- Grand Rejuvenation (Master)
            [99781] = true, -- Grand Rejuvenation (Master)

            -- Monster Helms
            [59516] = true, -- Blood Spawn
            [59517] = true, -- Blood Spawn
            [61274] = true, -- Blood Spawn

            [59589] = true, -- Nightflame
            [59590] = true, -- Imperial Prison Item Set
            [59591] = true, -- Bogdan Totem
            [61381] = true, -- Imperial Prison Item Set

            [81068] = true, -- Chokethorn
            --[25458] = true, -- Init Self Stun
            [81069] = true, -- Chokethorn
            [81077] = true, -- Chokethorn

            [97879] = true, -- Domihaus
            [97901] = true, -- Domihaus
            [97900] = true, -- Domihaus
            [97899] = true, -- Domihaus
            [97882] = true, -- Domihaus
            [97896] = true, -- Domihaus
            [97883] = true, -- Domihaus

            [97854] = true, -- Earthgore
            [97855] = true, -- Earthgore
            [97857] = true, -- Earthgore

            [84492] = true, -- Grothdarr
            [84504] = true, -- Grothdarr
            [84502] = true, -- Grothdarr

            [80560] = true, -- Iceheart
            [80561] = true, -- Iceheart
            [80562] = true, -- Iceheart
            [80563] = true, -- Iceheart

            [80524] = true, -- Ilambris
            [80529] = true, -- Ilambris
            [80526] = true, -- Ilambris
            [80527] = true, -- Ilambris
            [80525] = true, -- Ilambris

            [81687] = true, -- Infernal Guardian
            [83405] = true, -- Infernal Guardian
            [83390] = true, -- Infernal Guardian
            [83393] = true, -- Infernal Guardian
            [83409] = true, -- Infernal Guardian

            [80564] = true, -- Kra'gh
            [80566] = true, -- Kra'gh
            [80565] = true, -- Kra'gh

            [59585] = true, -- Lord Warden
            [59586] = true, -- Lord Warden
            [59587] = true, -- Lord Warden

            [59564] = true, -- Scourge Harvester (Malubeth)
            [85658] = true, -- Scourge Harvest (Malubeth)
            [59568] = true, -- Scourge Harvest (Malubeth)
            [61275] = true, -- Major Vitality (Malubeth)
            [59573] = true, -- Scourge Harvest (Malubeth)

            [59507] = true, -- Maw of the Infernal (Maw of the Infernal)
            [48796] = true, -- DUMMY (Maw of the Infernal)
            [59508] = true, -- Banished Cells Item Set (Maw of the Infernal)
            [60974] = true, -- Jagged Claw (Maw of the Infernal)
            [60971] = true, -- Fiery Breath (Maw of the Infernal)
            [60972] = true, -- Fiery Breath (Maw of the Infernal)
            [60973] = true, -- Fiery Jaws (Maw of the Infernal)

            [80482] = true, -- Major Ward (Mighty Chudan)
            [91983] = true, -- Major Resolve (Mighty Chudan)

            [66792] = true, -- Molag Kena
            [66808] = true, -- Molag Kena
            [66812] = true, -- Overkill

            [59592] = true, -- Nerien'eth
            [59594] = true, -- Crpyt of Hearts Item Set
            [59593] = true, -- Lich Crystal

            [80501] = true, -- Pirate Skeleton
            [81675] = true, -- Pirate Skeleton
            [80853] = true, -- Pirate Skeleton
            [85637] = true, -- Pirate Skeleton

            [80599] = true, -- Selene
            [80607] = true, -- Dummy
            [80600] = true, -- Selene
            [80604] = true, -- Selene
            [80609] = true, -- Dummy
            [80606] = true, -- Selene

            [80542] = true, -- Sellistrix
            [80545] = true, -- Sellistrix
            [80544] = true, -- Sellistrix
            [80549] = true, -- Sellistrix

            [81035] = true, -- Sentinel of Rkugamz
            [81036] = true, -- Sentinel of Rkugamz
            [81037] = true, -- Sentinel of Rkugamz
            [81038] = true, -- Sentinel of Rkugamz
            [81041] = true, -- Sentinel of Rkugamz

            [80951] = true, -- Shadowrend
            [80955] = true, -- Forward Charge
            [80954] = true, -- Shadowrend Summon
            [80980] = true, -- Shadowrend
            [80990] = true, -- Minor Maim
            [80989] = true, -- Shadowrend
            [81034] = true, -- Minor Maim

            [80481] = true, -- Minor Berserk (Slimecraw)

            [59489] = true, -- Spawn of Mephala
            [59497] = true, -- Spawn of Mephala
            [59498] = true, -- Mephala's Web
            [59499] = true, -- Mephala's Web

            [80520] = true, -- Stormfist
            [80523] = true, -- Stormfist
            [80522] = true, -- Stormfist
            [80521] = true, -- Stormfist

            [80592] = true, -- Swarm Mother
            [84419] = true, -- Swarm Mother Mask
            [80594] = true, -- Ability CC Immunity
            [80595] = true, -- CC Immunity
            [80593] = true, -- Swarm Mother Mask

            [59521] = true, -- Engine Guardian
            [60484] = true, -- Sphere Groundrise
            [59522] = true, -- Engine Guardian
            [59539] = true, -- Engine Guardian
            [59540] = true, -- Engine Guardian Stamina
            [59525] = true, -- Engine Guardian
            [59533] = true, -- Engine Guardian Magicka
            [59541] = true, -- Engine Guardian
            [59543] = true, -- Engine Guardian Health

            [80503] = true, -- The Troll King
            [80504] = true, -- The Troll King

            [102089] = true, -- Thurvokun
            [102094] = true, -- Thurvokun
            [102097] = true, -- Thurvokun
            [102100] = true, -- Thurvokun
            [102093] = true, -- Thurvokun
            [102095] = true, -- Thurvokun

            [80513] = true, -- Tremorscale
            [80517] = true, -- Tremorscale
            [80865] = true, -- Tremorscale
            [80866] = true, -- Tremorscale

            [59595] = true, -- Valkyn Skoria
            [66612] = true, -- CoA Trigger Cooldown
            [59596] = true, -- Valkyn Skoria
            [61273] = true, -- Valkyn Skoria

            [80483] = true, -- Velidreth
            [80487] = true, -- Hoarvor Mask
            [80488] = true, -- Hoarvor Mask
            [80856] = true, -- Hoarvor Mask
            [80864] = true, -- Hoarvor Mask
            [80489] = true, -- Hoarvor Mask
            [80490] = true, -- Velidreth

            [102125] = true, -- Zaan
            [102136] = true, -- Zaan
            [102142] = true, -- Zaan

            -- Crafted Sets
            [29124] = true, -- Ashen Grip
            [34502] = true, -- Ashen Grip

            [32799] = true, -- Alessia's Bulwark
            [34592] = true, -- Alessia's Bulwark

            [92768] = true, -- Assassin's Guile (Assassin's)

            [75745] = true, -- Clever Alchemist
            [75746] = true, -- Clever Alchemist

            [92769] = true, -- of Daedric Trickery (of Daedric Trickery)

            [92774] = true, -- Major Mending (of Daedric Trickery)
            [92771] = true, -- Major Expedition (of Daedric Trickery)
            [92775] = true, -- Major Heroism (of Daedric Trickery)
            [92776] = true, -- Major Vitality (of Daedric Trickery)
            [92773] = true, -- Major Protection (of Daedric Trickery)

            [29097] = true, -- Death's Wind
            [33764] = true, -- Death's Wind
            [52289] = true, -- Death's Wind

            [75927] = true, -- Eternal Hunt
            [75930] = true, -- Daedric Mines
            [75929] = true, -- Eternal Hunt
            [76533] = true, -- Eternal Hunt

            [79008] = true, -- Gladiator

            [32781] = true, -- Hist Bark
            [86555] = true, -- Hist Bark

            [99199] = true, -- Innate Axiom

            [32810] = true, -- Kagrenac's Hope
            [57207] = true, -- Kagrenac's Hope

            [29102] = true, -- Magnus' Gift (Magnus)
            [34381] = true, -- Magnus' Gift (Magnus)

            [99202] = true, -- Mechanical Acuity (of Mechanical Acuity)
            [99204] = true, -- Mechanical Acuity (of Mechanical Acuity)

            [71670] = true, -- Morkuldin (Morkuldin)
            [71671] = true, -- Morkuldin (Morkuldin)
            [71678] = true, -- Light Attack (Morkuldin)
            [71679] = true, -- Cleave (Morkuldin)


            [79103] = true, -- Pelinal's

            [32801] = true, -- Orgnum's

            [61783] = true, -- Redistributor (Redistribution)
            [61784] = true, -- Redistributor (Redistribution)

            [32816] = true, -- Shalidor's Curse
            [49126] = true, -- Shalidor's Curse

            [75724] = true, -- Tava's Favor
            [75726] = true, -- Tava's Favor

            [61851] = true, -- Armor Master (the Armor Master)
            [61870] = true, -- Armor Master (the Armor Master)
            [70352] = true, -- Armor Master (the Armor Master)

            [52712] = true, -- Way of the Arena (the Arena)

            [32804] = true, -- Eyes of Mara (the Eyes of Mara)

            [29113] = true, -- Night Mother's Gaze (the Night Mother's Gaze)
            [34386] = true, -- Major Fracture (the Night Mother's Gaze)

            [29108] = true, -- Night's Silence (the Night's Silence)

            [61780] = true, -- Noble's Conquest (Nobles Conquest)
            [61781] = true, -- Noble's Conquest (Nobles Conquest)
            [61782] = true, -- Minor Vulnerability

            [29119] = true, -- Armor of the Seducer (the Seducer)

            [32784] = true, -- Song of Lamae (the Song of Lamae)
            [34587] = true, -- Song of Lamae (the Song of Lamae)
            [34588] = true, -- Song of Lamae (the Song of Lamae)

            [60457] = true, -- Twice-Born Star (the Twice-Born Star)
            [61584] = true, -- Prep To Remove Mundus (the Twice-Born Star)

            [32782] = true, -- Willow's Path (the Willow's Path)

            [32759] = true, -- Torug's Pact (Torug's Pact)

            [71018] = true, -- Trial by Fire (Trials)
            [71055] = true, -- Trial by Fire Cooldown (Trials)
            [71067] = true, -- Trial by Shock (Trials)
            [71058] = true, -- Trial by Fire (Trials)
            [71019] = true, -- Trial by Frost (Trials)
            [71072] = true, -- Trial by Poison (Trials)
            [71069] = true, -- Trial by Disease (Trials)

            [29098] = true, -- Twilight's Embrace

            [79029] = true, -- Varen's Legacy
            [79089] = true, -- Varen's Wall
            [79093] = true, -- Remove Trigger

            [29120] = true, -- Vampire's Kiss
            [57170] = true, -- Vampire's Kiss

            [29109] = true, -- Whitestrake's Retribution (Whitestrake's)
            [49236] = true, -- Whitestrake's Retribution (Whitestrake's)

            [106775] = true, -- Adept Rider (Adept Rider's)
            [106776] = true, -- Major Evasion (Adept Rider's)
            [106790] = true, -- Major Evasion (Adept Rider's)
            [106784] = true, -- Dustcloud (Adept Rider's)
            [106783] = true, -- Dustcloud Damage (Adept Rider's)

            [106803] = true, -- Nocturnal's Favor (Nocturnal's Favored)
            [106804] = true, -- Nocturnal's Heal (Nocturnal's Favored)

            [106797] = true, -- Sload's Semblance (Sload's)
            [106798] = true, -- Sload's Semblance (Sload's)

            -- Overland Sets (All Types)
            [85541] = true, -- Armor of the Trainee (of the Trainee)

            -- Overland Sets (Light)
            [77888] = true, -- Bahraha's Curse (of Bahraha's Curse)
            [75673] = true, -- Bahraha's Curse (of Bahraha's Curse)
            [75981] = true, -- Bahraha's Curse (of Bahraha's Curse)
            [75691] = true, -- Bahraha's Curse (of Bahraha's Curse)
            [75707] = true, -- Bahraha's Curse (of Bahraha's Curse)
            [75692] = true, -- Bahraha's Curse (of Bahraha's Curse)
            [75706] = true, -- Bahraha's Curse (of Bahraha's Curse)

            [32742] = true, -- Bloodthorn's Touch (Bloodthorn)
            [34522] = true, -- Bloodthorn's Touch (Bloodthorn)
            [57177] = true, -- Bloodthorn's Touch (Bloodthorn)

            [29092] = true, -- Dreamer's Mantle (Dreamer's)
            [31213] = true, -- Dreamer's Mantle (Dreamer's)
            [48913] = true, -- Dreamer's Mantle (Dreamer's)
            [57133] = true, -- Dreamer's Mantle (Dreamer's)

            [32803] = true, -- Queen's Elegance (Elegant)

            [32743] = true, -- Robes of the Hist (of Hist Sap)
            [85776] = true, -- Robes of the Hist (of Hist Sap)

            [52704] = true, -- Way of Martial Knowledge (of Martial Knowledge)
            [52705] = true, -- Way of Martial Knowledge (of Martial Knowledge)

            [32820] = true, -- Necropotence (of Necropotence)

            [29094] = true, -- Prisoner's Rags (Prisoner's)
            [85825] = true, -- Prisoner's Rags (Prisoner's)

            [79192] = true, -- Sithis' Touch (Sithis)
            [79200] = true, -- Major Berserk (Sithis)

            [85591] = true, -- Skooma Smuggler (Smuggler's)
            [85592] = true, -- Major Expedition (Smuggler's)

            [32725] = true, -- Stendarr's Embrace (of Stendarr)
            [85812] = true, -- Stendarr's Embrace (of Stendarr)

            [32728] = true, -- Syrabane's Grip (of Syrabane)
            [34506] = true, -- Syrabane's Grip (of Syrabane)

            [32741] = true, -- Shadow Dancer's Raiment (of the Shadow Dancer)

            [29095] = true, -- Silks of the Sun (of the Sun)

            [29101] = true, -- Robes of the Withered Hand (of the Withered Hand)
            [57172] = true, -- Robes of the Withered Hand (of the Withered Hand)
            [57173] = true, -- Robes of the Withered Hand (of the Withered Hand)
            [57175] = true, -- Robes of the Withered Hand (of the Withered Hand)

            [71656] = true, -- Trinimac's Valor (of Trinimac's Valor)
            [71664] = true, -- Trinimac's Valor (of Trinimac's Valor)
            [71657] = true, -- Trinimac's Valor (of Trinimac's Valor)
            [71658] = true, -- Trinimac's Valor (of Trinimac's Valor)

            [85567] = true, -- Vampire Lord (Vampire Lord's)

            [92761] = true, -- War Maiden (War Maiden's)

            [85596] = true, -- Ysgramor's Birthright (Ysgramor's)

            [92981] = true, -- Mad Tinkerer (Mad Tinkerer's)
            [93026] = true, -- Mad Tinkerer (Mad Tinkerer's)
            [92982] = true, -- Mad Tinkerer (Mad Tinkerer's)
            [92986] = true, -- Mad Tinkerer (Mad Tinkerer's)
            [93001] = true, -- Mad Tinkerer (Mad Tinkerer's)
            [93002] = true, -- Mad Tinkerer (Mad Tinkerer's)
            [93003] = true, -- Mad Tinkerer (Mad Tinkerer's)
            [92998] = true, -- Mad Tinkerer (Mad Tinkerer's)

            [106805] = true, -- Wisdom of Vanus (Vanus's)
            [106806] = true, -- Major Mending (Vanus's)

            -- Overland Sets (Medium)

            [71102] = true, -- Briarheart
            [71106] = true, -- Briarheart
            [71107] = true, -- Briarheart

            [32734] = true, -- Darkstride (Darkstride)

            [93300] = true, -- Defiler (Defiler's)
            [93308] = true, -- Defiler (Defiler's)
            [93304] = true, -- Defiler (Defiler's)
            [93307] = true, -- Defiler (Defiler's)
            [93305] = true, -- Defiler (Defiler's)
            [93326] = true, -- Defiler (Defiler's)
            [100704] = true, -- Defiler (Defiler's)

            [29104] = true, -- Fiord's Legacy (Fiord's)

            [79181] = true, -- Flanking Strategist (of Flanking)

            [19165] = true, -- Night Terror (of Night Terror)
            [32836] = true, -- Night Terror (of Night Terror)
            [34875] = true, -- Night Terror (of Night Terror)

            [32822] = true, -- Salvation (of Salvation)

            [32808] = true, -- Senche's Bite (Senche's)
            [34611] = true, -- Senche's Bite (Senche's)

            [32750] = true, -- Stygian (Stygian)

            [67099] = true, -- Swamp Raider
            [67101] = true, -- Swamp Raider

            [85557] = true, -- Sword-Singer (Sword-Singer's)

            [76573] = true, -- Syvarra's Scales (of Syvarra's Scales)
            [75717] = true, -- Syvarra's Scales (of Syvarra's Scales)
            [76344] = true, -- Serpent's Spirit (of Syvarra's Scales)
            [75718] = true, -- Serpent's Spirit (of Syvarra's Scales)

            [51504] = true, -- Yokudan Air Stealth Detection (of the Air)
            [52708] = true, -- Way of Air (of the Air)
            [52709] = true, -- Way of Air (of the Air)

            [29107] = true, -- Night Mother's Embrace (of the Night Mother)

            [32751] = true, -- Ranger's Gait (of the Ranger)

            [29111] = true, -- Shadow of the Red Mountain (of the Red Mountain)
            [97806] = true, -- Shadow of the Red Mountain (of the Red Mountain)
            [34383] = true, -- Shadow of the Red Mountain (of the Red Mountain)

            [32828] = true, -- Twin Sisters (of the Twin Sisters)
            [34817] = true, -- Twin Sisters Bleed (of the Twin Sisters)

            [32829] = true, -- Wilderqueen's Arch (of the Wilderqueen)
            [34870] = true, -- Wilderqueen's Arch (of the Wilderqueen)

            [99266] = true, -- Unfathomable Darkness (of Unfathomable Darkness)
            [99267] = true, -- Unfathomable Darkness (of Unfathomable Darkness)
            [99268] = true, -- Unfathomable Darkness (of Unfathomable Darkness)

            [32729] = true, -- Hide of the Werewolf (Werewolf Hide)
            [34508] = true, -- Hide of the Werewolf (Werewolf Hide)

            [18991] = true, -- Witchman Armor (Witchman's)
            [18993] = true, -- Witchman Armor (Witchman's)
            [85818] = true, -- Witchman Armor (Witchman's)

            [106858] = true, -- Gryphon's Ferocity (Gryphon's)
            [106860] = true, -- Minor Expedition (Gryphon's)
            [106861] = true, -- Minor Force (Gryphon's)

            -- Overland Sets (Heavy)

            [32815] = true, -- Meridia's Blessed Armor (Blessed)
            [34711] = true, -- Meridia's Blessed Armor (Blessed)

            [57295] = true, -- Draugr's Heritage (of Draugr Heritage)
            [57298] = true, -- Draugr's Heritage (of Draugr Heritage)
            [57296] = true, -- Draugr's Heritage (of Draugr Heritage)
            [57297] = true, -- Draugr's Heritage (of Draugr Heritage)

            [99281] = true, -- Livewire
            [99282] = true, -- Livewire
            [99285] = true, -- Livewire
            [99286] = true, -- Livewire
            [99461] = true, -- Livewire

            [79110] = true, -- Hide of Morihaus (of Morihaus)
            [79315] = true, -- Hide of Horihaus (of Morihaus)
            [79506] = true, -- Hide of Morihaus (of Morihaus)
            [79123] = true, -- Hide of Morihaus (of Morihaus)
            [79507] = true, -- Tracker (of Morihaus)
            [79112] = true, -- Hide of Morihaus (of Morihaus)

            [32752] = true, -- Seventh Legion Brute (Seventh Legion's)
            [34526] = true, -- Seventh Legion Brute (Seventh Legion's)
            [57186] = true, -- Seventh Legion Brute (Seventh Legion's)

            [85593] = true, -- Minor Heroism (Shalk's)
            [85594] = true, -- Minor Heroism (Shalk's)

            [32838] = true, -- Soulshine (of Soulshine)

            [18996] = true, -- Akaviri Dragonguard (of the Dragon)

            [52710] = true, -- Way of Fire (of the Fire)
            [52711] = true, -- Fiery Weapon (of the Fire)

            [85570] = true, -- Green Pact (of the Green Pact)

            [32736] = true, -- Hatchling's Shell (of the Hatchling's Shell)
            [85797] = true, -- Hatchling's Shell (of the Hatchling's Shell)

            [85565] = true, -- Minor Vitality (of the Order of Diagna)

            [71077] = true, -- Mark of the Pariah (of the Pariah)

            [32814] = true, -- Storm Knight's Plate (of the Storm Knight)
            [57210] = true, -- Storm Knight's Plate (of the Storm Knight)
            [57209] = true, -- Storm Knight's Plate (of the Storm Knight)

            [85551] = true, -- Minor Protection (of the Vampire's Cloak)

            [29118] = true, -- Armor of the Veiled Heritance (of the Veiled Heritance)
            [33514] = true, -- Armor of the Veiled Heritance (of the Veiled Heritance)

            [32830] = true, -- Wyrd Tree's Blessing (of the Wyrd Tree)

            [29116] = true, -- Thunderbug's Carapace (Thunderbug's)
            [33497] = true, -- Thunderbug's Carapace (Thunderbug's)

            [92762] = true, -- Minor Toughness (Warrior-Poet's)

            [106865] = true, -- Grace of Gloom (Gloom-Graced)
            [106867] = true, -- Major Evasion (Gloom-Graced)
            [106868] = true, -- Grace of Gloom (Gloom-Graced)

            -- Dungeon Sets (Light)

            [60418] = true, -- Burning Spellweave
            [61459] = true, -- Burning Spellweave
            [60419] = true, -- Burning Spellweave

            [102026] = true, -- Caluurion's Legacy
            [102060] = true, -- Caluurion's Legacy
            [102027] = true, -- Caluurion's Legacy (Fire)
            [102032] = true, -- Caluurion's Legacy (Ice)
            [102033] = true, -- Caluurion's Legacy (Disease)
            [102034] = true, -- Caluurion's Legacy (Shock)

            [97532] = true, -- Draugr's Rest
            [97538] = true, -- Draugr's Rest
            [97539] = true, -- Draugr's Rest

            [97572] = true, -- Flame Blossom
            [99144] = true, -- Flame Blossom
            [97573] = true, -- Flame Blossom
            [97574] = true, -- Flame Blossom

            [84340] = true, -- Gossamer (Gossamer)
            [84341] = true, -- Major Evasion (Gossamer)

            [101978] = true, -- Jorvuld's Guidance

            [85609] = true, -- Lamia's Song (Lamia's)
            [85610] = true, -- Lamia's Song (Lamia's)
            [85636] = true, -- Lamia's Song (Lamia's)

            [85604] = true, -- Light Speaker (Light Speaker's)

            [67093] = true, -- Overwhelming Surge (Overwhelming)
            [67129] = true, -- Overwhelming Surge (Overwhelming)
            [67136] = true, -- Overwhelming Surge (Overwhelming)

            [29099] = true, -- Prayer Shawl (of Prayer)
            [34504] = true, -- Prayer Shawl (of Prayer)

            [88764] = true, -- Sanctuary (of Sanctuary)
            [32834] = true, -- Sanctuary (of Sanctuary)

            [85603] = true, -- Spider Cultist Cowl (Spider Cultist's)

            [66899] = true, -- Spell Power Cure (Spell Power Cure)
            [69402] = true, -- WGT Heal Set (Spell Power Cure)
            [66902] = true, -- Spell Power Cure (Spell Power Cure)

            [67096] = true, -- Combat Physician (of the Combat Physician)
            [67098] = true, -- Combat Physician (of the Combat Physician)
            [69291] = true, -- ICP Light Heal Set (of the Combat Physician)

            [18987] = true, -- Shroud of the Lich (of the Lich)
            [57164] = true, -- Shroud of the Lich (of the Lich)

            [32826] = true, -- Magicka Furnace (of the Magicka Furnace)
            [34813] = true, -- Magicka Furnace (of the Magicka Furnace)

            [29100] = true, -- Noble Duelist's Silks (of the Noble Duelist)
            [34373] = true, -- Noble Duelist's Silks (of the Noble Duelist)

            [85606] = true, -- Netch's Touch (of the Netch's Touch)

            [67287] = true, -- Scathing Mage (of the Scathing Mage)
            [67288] = true, -- Scathing Mage (of the Scathing Mage)

            [59675] = true, -- Undaunted Unweaver (of the Undaunted Unweaver)
            [59676] = true, -- Undaunted Unweaver (of the Undaunted Unweaver)

            [57162] = true, -- Robes of the Warlock (of the Warlock)
            [57163] = true, -- Robes of the Warlock (of the Warlock)

            [88763] = true, -- Worm's Raiment (of the Worm Cult)
            [47367] = true, -- Worm's Raiment (of the Worm Cult)

            [85613] = true, -- Major Prophecy (Treasure Hunter's)

            -- Dungeon Sets (Medium)

            [85607] = true, -- Strength of the Automaton (Automaton's)

            [29105] = true, -- Barkskin
            [85977] = true, -- Barkskin
            [85978] = true, -- Barkskin

            [97567] = true, -- Blooddrinker

            [85617] = true, -- Bone Pirate's Tatters (Bone Pirate's)

            [84305] = true, -- Heem-Jas' Retribution (Heem-Jas')
            [84308] = true, -- Heem-Jas' Retribution (Heem-Jas')
            [84310] = true, -- Heem-Jas' Retribution (Heem-Jas')

            [88760] = true, -- Hircine's Veneer (Hircine's)
            [47365] = true, -- Hircine's Veneer (Hircine's)

            [32809] = true, -- Oblivion's Edge
            [34612] = true, -- Oblivion's Edge
            [57206] = true, -- Oblivion's Edge

            [97712] = true, -- Pillar of Nirn
            [97714] = true, -- Pillar of Nirn
            [97716] = true, -- Pillar of Nirn
            [97743] = true, -- Pillar of Nirn

            [102104] = true, -- Plague Slinger
            [102106] = true, -- Skeever Corpse
            [102113] = true, -- Plague Slinger

            [67140] = true, -- Sheer Venom (of Sheer Venom)
            [67926] = true, -- Sheer Venom (of Sheer Venom)
            [67927] = true, -- Sheer Venom (of Sheer Venom)
            [67141] = true, -- Sheer Venom (of Sheer Venom)

            [85624] = true, -- Spelunker (Spelunker's)
            [85626] = true, -- Spelunker (Spelunker's)
            [85635] = true, -- Spelunker (Spelunker's)

            [66939] = true, -- Storm Master (Storm Master's)
            [70297] = true, -- Storm Master (Storm Master's)
            [70298] = true, -- Storm Master (Storm Master's)

            [85622] = true, -- Sword Dancer (Sword Dancer's)

            [60059] = true, -- Sunderflame (Sunderflame)
            [60060] = true, -- Sunderflame (Sunderflame)
            [60416] = true, -- Minor Fracture (Sunderflame)
            [108825] = true, -- Minor Breach (Sunderflame)

            [32780] = true, -- Crusader (of the Crusader)
            [49220] = true, -- Extra dodge (of the Crusader)

            [85605] = true, -- Major Savagery (Toothrow)

            [67296] = true, -- Essence Thief (of the Essence Thief)
            [67324] = true, -- WGT Medium Set 1 (of the Essence Thief)
            [67298] = true, -- Essence Thief (of the Essence Thief)
            [67308] = true, -- Essence Thief (of the Essence Thief)
            [67326] = true, -- Essence Thief (of the Essence Thief)
            [67330] = true, -- Essence Thief (of the Essence Thief)
            [67334] = true, -- Essence Thief (of the Essence Thief)
            [70284] = true, -- Essence Thief (of the Essence Thief)
            [70290] = true, -- Essence Thief (of the Essence Thief)

            [59666] = true, -- Undaunted Infiltrator (of the Undaunted Infiltrator)
            [59667] = true, -- Undaunted Infiltrator (of the Undaunted Infiltrator)

            [29106] = true, -- Viper's Sting (of the Viper)
            [33691] = true, -- Viper's Sting (of the Viper)

            [101969] = true, -- Trappings of Invigoration
            [101970] = true, -- Trappings of Invigoration

            [84349] = true, -- Widowmaker
            [97851] = true, -- Widowmaker
            [84350] = true, -- Widowmaker

            -- Dungeon Sets (Heavy)

            [102008] = true, -- Curse of Doylemish
            [102023] = true, -- Curse of Doylemish

            [32825] = true, -- Duneripper's Scales (Duneripper)

            [32754] = true, -- Durok's Bane (of Durok's Bane)
            [34527] = true, -- Durok's Bane Major Defile (of Durok's Bane)

            [82890] = true, -- Ebon Armory (Ebon)
            [47362] = true, -- Ebon Armory (Ebon)

            [59694] = true, -- Embershield
            [59695] = true, -- Embershield
            [59696] = true, -- Embershield

            [97907] = true, -- Hagraven's Garden (Hagraven's)
            [97908] = true, -- Hagraven's Garden (Hagraven's)
            [97909] = true, -- Hagraven's Garden (Hagraven's)
            [97910] = true, -- Hagraven's Garden (Hagraven's)
            [97918] = true, -- Hagraven's Garden (Hagraven's)

            [29123] = true, -- The Ice Furnace (Ice Furnace)
            [34404] = true, -- Frostfire (Ice Furnace)

            [97616] = true, -- Ironblood (Ironblood)
            [97626] = true, -- Ironblood (Ironblood)
            [97627] = true, -- Major Protection (Ironblood)

            [67077] = true, -- Jolting Arms (Jolting)
            [67079] = true, -- WGT Heavy Set 2 (Jolting)
            [67078] = true, -- Jolting Arms (Jolting)
            [67080] = true, -- Shocking Bash (Jolting)

            [85619] = true, -- Knight-Errant's Mail (Knight-Errant's)
            [85620] = true, -- Knight-Errant's Mail (Knight-Errant's)

            [67202] = true, -- Leeching Plate (of Leeching)
            [69346] = true, -- Leeching Plate (of Leeching)
            [67205] = true, -- Leeching Plate (of Leeching)
            [69345] = true, -- Leeching Plate (of Leeching)
            [67204] = true, -- Leeching Plate (of Leeching)

            [84275] = true, -- Aspect of Mazzatun (of Mazzatun)
            [84277] = true, -- Aspect of Mazzatun (of Mazzatun)
            [84278] = true, -- Aspect of Mazzatun (of Mazzatun)
            [84279] = true, -- Aspect of Mazzatun (of Mazzatun)

            [85611] = true, -- Minor Force (of Medusa)

            [84353] = true, -- Hand of Mephala (of Mephala's Hand)
            [84354] = true, -- Hand of Mephala (of Mephala's Hand)
            [84357] = true, -- Hand of Mephala Webbing (of Mephala's Hand)
            [84355] = true, -- Hand of Mephala (of Mephala's Hand)
            [84358] = true, -- Minor Fracture (of Mephala's Hand)

            [32755] = true, -- Nikulas' Heavy Armor (of Nikulas)

            [85623] = true, -- Major Sorcery (Rattlecage)

            [32735] = true, -- Major Brutality (of the Dreugh King Slayer)
            [34511] = true, -- Major Expedition (of the Dreugh King Slayer)

            [66882] = true, -- Brands of the Imperium (of the Imperium)
            [66887] = true, -- Brands of the Imperium (of the Imperium)

            [29117] = true, -- Knightmare (of the Knightmare)
            [33512] = true, -- Minor Maim (of the Knightmare)

            [29115] = true, -- Sargeant's Mail (of the Sargeant)

            [67280] = true, -- Tormentor (of the Tormentor)
            [67281] = true, -- ICP Heavy Set 2 Hit W Taunt (of the Tormentor)
            [67283] = true, -- Tormentor Resistance (of the Tormentor)

            [59663] = true, -- Undaunted Bastion (of the Undaunted Bastion)
            [61200] = true, -- Undaunted Bastion (of the Undaunted Bastion)

            [32818] = true, -- Armor of Truth (of Truth)
            [86070] = true, -- Armor of Truth (of Truth)

            [101974] = true, -- Ulfnor's Favor

            -- Trial Sets (Hel Ra Citadel)

            [50971] = true, -- Berserking Warrior (Advancing Yokeda)
            [50978] = true, -- Berserking Warrior (Advancing Yokeda)

            [51300] = true, -- Immortal Warrior (Immortal Yokeda)
            [90937] = true, -- Immortal Warrior (Immortal Yokeda)
            [51302] = true, -- Immortal Warrior (Immortal Yokeda)
            [51401] = true, -- Immortal Warrior (Immortal Yokeda)
            [90938] = true, -- Immortal Warrior (Immortal Yokeda)

            [50990] = true, -- Defending Warrior (Resilient Yokeda)
            [86907] = true, -- Defending Warrior (Resilient Yokeda)
            [50992] = true, -- Defending Warrior (Resilient Yokeda)

            [61436] = true, -- Eternal Warrior (Eternal Yokeda)
            [76618] = true, -- Minor Aegis (Eternal Yokeda)
            [90940] = true, -- Eternal Warrior (Eternal Yokeda)
            [81527] = true, -- Eternal Warrior (Eternal Yokeda)
            [61437] = true, -- Eternal Warrior (Eternal Yokeda)
            [81529] = true, -- Eternal Warrior (Eternal Yokeda)
            [90939] = true, -- Eternal Warrior (Eternal Yokeda)

            -- Trial Sets (Aetherian Archive)

            [51314] = true, -- Destructive Mage (Aether ... of Destruction)
            [51315] = true, -- Destructive Mage (Aether ... of Destruction)
            [51320] = true, -- Mage Destruction Bomb (Aether ... of Destruction)

            [51442] = true, -- Healing Mage (of Mending)
            [51443] = true, -- Healing Bane (of Mending)

            [51432] = true, -- Wise Mage (Aether ... of Strategy)
            [51434] = true, -- Minor Vulnerability (Aether ... of Strategy)

            [76617] = true, -- Minor Slayer (of the Infallible Aether)
            [61438] = true, -- Infallible Mage (of the Infallible Aether)
            [81519] = true, -- Minor Vulnerability (of the Infallible Aether)

            -- Trial Sets (Sanctum Ophidia)

            [51132] = true, -- Poisonous Serpent (Ophidian ... of Venom)
            [51241] = true, -- Poisonous Serpent (Ophidian ... of Venom)

            [51170] = true, -- Twice-Fanged Serpent (of the Two-Fanged Snake)
            [51176] = true, -- Twice-Fanged Serpent (of the Two-Fanged Snake)

            [50995] = true, -- Quick Serpent (Ophidian... of Celerity)
            [50997] = true, -- Major Expedition (Ophidian... of Celerity)

            [61440] = true, -- Vicious Serpent (of the Vicious Ophidian)
            [98103] = true, -- Minor Slayer (of the Vicious Ophidian)
            [81524] = true, -- Quick Serpent (of the Vicious Ophidian)
            [81522] = true, -- Serpent Stamina (of the Vicious Ophidian)

            -- Trial Sets (Maw of Lorkhaj)

            [75797] = true, -- Moondancer (Moondancer)
            [75801] = true, -- Lunar Blessing (Moondancer)
            [75804] = true, -- Shadow Blessing (Moondancer)

            [75751] = true, -- Roar of Alkosh (of Alkosh)
            [98102] = true, -- Minor Slayer (of Alkosh)
            [78835] = true, -- Roar of Alkosh Miss (of Alkosh)
            [75752] = true, -- Roar of Alkosh (of Alkosh)
            [75753] = true, -- Line Breaker (of Alkosh)
            [76667] = true, -- Roar of Alkosh (of Alkosh)

            [75813] = true, -- Lunar Bastion (of the Lunar Bastion)
            [75815] = true, -- Lunar Bastion (of the Lunar Bastion)

            [75766] = true, -- Twilight Remedy (of Twilight Remedy)
            [75768] = true, -- Primal Heal (of Twilight Remedy)
            [75770] = true, -- Twilight Remedy (of Twilight Remedy)
            [76564] = true, -- Minor Force (of Twilight Remedy)

            -- Trial Sets (Halls of Fabrication)

            [93443] = true, -- Automated Defense (Automated Defense)
            [93444] = true, -- Major Aegis (Automated Defense)

            [93124] = true, -- Inventor's Guard (Inventor's Guard)
            [93125] = true, -- Major Aegis (Inventor's Guard)

            [93119] = true, -- Master Architect (Master Architect)
            [93120] = true, -- Major Slayer (Master Architect)

            [93441] = true, -- War Machine (War Machine)
            [93442] = true, -- Major Slayer (War Machine)

            -- Trial Sets (Cloudrest)

            [107117] = true, -- Vestment of Olirime (Olirime's)
            [107141] = true, -- Vestment of Olirime (Olirime's)
            [109994] = true, -- Major Courage (Olirime's)

            [109082] = true, -- Ideal Vestment of Olorime (Olirime's Perfect)
            [109084] = true, -- Ideal Vestment of Olorime (Olirime's Perfect)
            [110020] = true, -- Major Courage (Olirime's Perfect)

            [107093] = true, -- Mantle of Siroria (Siroria's)
            [107095] = true, -- Mantle of Siroria (Siroria's)
            [110118] = true, -- Siroria's Boon (Siroria's)

            [109079] = true, -- Ideal Mantle of Siroria (Perfect Siroria's)
            [109081] = true, -- Ideal Mantle of Siroria (Perfect Siroria's)
            [110142] = true, -- Siroria's Boon (Siroria's)

            [107202] = true, -- Arms of Relequen (Relequen's)
            [107206] = true, -- Arms of Relequen (Relequen's)
            [107203] = true, -- Arms of Relequen (Relequen's)

            [109085] = true, -- Ideal Arms of Relequen (Perfect Relequen's)
            [109087] = true, -- Ideal Arms of Relequen (Perfect Relequen's)
            [109086] = true, -- Ideal Arms of Relequen (Perfect Relequen's)

            [107268] = true, -- Aegis of Galenwe (Galenwe's)
            [109976] = true, -- Empower (Galenwe's)

            [109088] = true, -- Ideal Aegis of Galenwe (Galenwe's)
            [109989] = true, -- Empower (Galenwe's)

            -- Battleground Sets
            [92908] = true, -- Major Expedition (Coward's Gear)
            [92909] = true, -- Major Protection (Coward's Gear)

            [93099] = true, -- Knight Slayer
            [93104] = true, -- Knight Slayer

            [92914] = true, -- Vanguard's Challenge
            [92916] = true, -- Vanguard's Challenge

            [92920] = true, -- Wizard's Riposte (Wizard's Riposte)
            [92921] = true, -- Minor Maim (Wizard's Riposte)

            -- Imperial City Sets
            [61761] = true, -- Black Rose (of the Black Rose)
            [61762] = true, -- Black Rose (of the Black Rose)

            [79419] = true, -- Galerion's Revenge (Galerion's)
            [79421] = true, -- Mark of Revenge (Galerion's)
            [79770] = true, -- U10 AVA MA/LA 1 (Galerion's)
            [79771] = true, -- U10 AVA MA/LA 1 (Galerion's)
            [79420] = true, -- Galerion's Revenge (Galerion's)

            [79405] = true, -- Imperial Physique (Imperial Physique)
            [79411] = true, -- 4x Bonus (Imperial Physique)

            [61775] = true, -- Supporting Soldier Trigger (of Meritorious Service)
            [65706] = true, -- Meritorious Service (of Meritorious Service)
            [65707] = true, -- Meritorious Service (of Meritorious Service)

            [68933] = true, -- Phoenix (of the Phoenix)
            [90935] = true, -- Phoenix (of the Phoenix)
            [68935] = true, -- Phoenix (of the Phoenix)
            [70406] = true, -- Phoenix (of the Phoenix)
            [68938] = true, -- Phoenix (of the Phoenix)
            [90936] = true, -- Phoenix (of the Phoenix)
            [68940] = true, -- Phoenix (of the Phoenix)
            [70405] = true, -- Phoenix (of the Phoenix)

            [61763] = true, -- Powerful Assault Trigger (of the Powerful Assault)
            [61771] = true, -- Powerful Assault (of the Powerful Assault)
            [61774] = true, -- Powerful Assault (of the Powerful Assault)

            [68947] = true, -- Reactive Armor (Reactive)
            [68948] = true, -- Reactive Armor (Reactive)
            [69567] = true, -- Reactive Armor Effects (Reactive)

            [68973] = true, -- Shield Breaker (of the Shield Breaker)
            [68974] = true, -- Shield Breaker (of the Shield Breaker)

            [79362] = true, -- Thews of the Harbinger (of the Harbinger)
            [79363] = true, -- Thews of the Harbinger (of the Harbinger)

            [79464] = true, -- Vicecanon of Venom
            [79469] = true, -- Deadly Venom
            [79470] = true, -- Vicecanon of Venom Heal
            [79471] = true, -- Venom Heal

            -- Cyrodiil Sets (Light)

            [32802] = true, -- Almalexia's Mercy (of Almalexia's Mercy)
            [34605] = true, -- Almalexia's Mercy (of Almalexia's Mercy)

            [32779] = true, -- Robes of Alteration Mastery (of Alteration Mastery)

            [47355] = true, -- Grace of the Ancients (of Ancient Grace)

            [32819] = true, -- The Arch-Mage (of the Arch-Mage)
            [70392] = true, -- The Arch-Mage (of the Arch-Mage)

            [32827] = true, -- Curse Eater (Curse-Eating)

            [32833] = true, -- Light of Cyrodiil (of Cyrodiil's Light)

            [29093] = true, -- Desert Rose (of the Desert Rose)
            [33498] = true, -- Desert Rose (of the Desert Rose)

            [47351] = true, -- Buffer of the Swift (of the Swift)
            [47352] = true, -- Buffer of the Swift (of the Swift)

            -- Cyrodiil Sets (Medium)

            [32835] = true, -- Ward of Cyrodiil (of Cyrodiil's Ward)
            [49119] = true, -- Ward of Cyrodiil (Block) (of Cyrodiil's Ward)

            [47361] = true, -- Eagle Eye (Eagle-Eyed)

            [32823] = true, -- Hawk's Eye (of Hawk's Eye)

            [32731] = true, -- Kyne's Kiss (of Kyne's Kiss)
            [34509] = true, -- Kyne's Kiss (of Kyne's Kiss)
            [70492] = true, -- Kyne's Kiss (of Kyne's Kiss)

            [29112] = true, -- The Morag Tong (of the Morag Tong)
            [34384] = true, -- The Morag Tong (of the Morag Tong)

            [32807] = true, -- Sentry (of the Sentry)

            [32747] = true, -- Shadow Walker (of the Shadow Walker)
            [57180] = true, -- Shadow Walker (of the Shadow Walker)
            [57181] = true, -- Shadow Walker (of the Shadow Walker)

            [47353] = true, -- Shield of the Valiant (of the Valiant)

            [47357] = true, -- Vengeance Leech (of Vengeance Leech)
            [47358] = true, -- Vengeance Leech (of Vengeance Leech)
            [47359] = true, -- Vengeance Leech (of Vengeance Leech)
            [47360] = true, -- Vengeance Leech (of Vengeance Leech)

            -- Cyrodiil Sets (Heavy)

            [32824] = true, -- Affliction (Afflicted)
            [34787] = true, -- Affliction (Afflicted)

            [29122] = true, -- Beckoning Steel (of Beckoning Steel)
            [49237] = true, -- Beckoning Steel (of Beckoning Steel)

            [32837] = true, -- Crest of Cyrodiil (of Cyrodiil's Crest)
            [34876] = true, -- Major Defile (of Cyrodiil's Crest)

            [32800] = true, -- Elf Bane (of Elf Bane)

            [32831] = true, -- Ravager (Ravaging)
            [34872] = true, -- The Ravager (Ravaging)

            [29121] = true, -- Armor of the Alessian Order (of the Alessian Order)

            [47348] = true, -- Bastion of the Heartland (of the Heartland)
            [47350] = true, -- Bastion of the Heartland (of the Heartland)

            [32737] = true, -- The Juggernaut (of the Juggernaut)
            [34512] = true, -- The Juggernaut (of the Juggernaut)

            [47356] = true, -- Blessing of the Potentates (of the Potentates)

            -- Rewards for the Worthy Sets
            [76946] = true, -- Fasalla's Guile (of Fasalla's Guile)
            [76947] = true, -- Fasalla's Guile (of Fasalla's Guile)

            [76949] = true, -- Warrior's Fury (of Fury)
            [76950] = true, -- Warrior's Fury (of Fury)
            [76951] = true, -- 10 Stack Count FX Dummy (of Fury)

            [76940] = true, -- Leki's Focus (Leki's)

            [76932] = true, -- Marksman's Crest (Markman's)

            [76934] = true, -- Robes of Transmutation (Transmutation)
            [76936] = true, -- Robes of Transmutation (Transmutation)

            [76937] = true, -- Vicious Death (of Vicious Death)
            [82987] = true, -- Vicious Death (of Vicious Death)
            --[76938] = true, -- Vicious Death (of Vicious Death)

            -- Maelstrom Arena Sets
            [71248] = true, -- Elemental Succession (of Succession)
            [71311] = true, -- Stack Counter (of Succession)
            [71264] = true, -- Fire Ascendant (of Succession)
            [71265] = true, -- Lightning Ascendant (of Succession)
            [71266] = true, -- Frost Ascendant (of Succession)

            [71644] = true, -- Winterborn (Winterborn)
            [71647] = true, -- Winterborn (Winterborn)
            [73296] = true, -- Winterborn Snare (Winterborn)
            [71646] = true, -- Winterborn (Winterborn)

            [71603] = true, -- Hunt Leader (of the Hunt)
            [71604] = true, -- Mark of the Hunt Leader (of the Hunt)
            [71605] = true, -- Hunt Leader (of the Hunt)
            [74106] = true, -- Hunt Leader (of the Hunt)
            [71191] = true, -- Para Bellum (Para Bellum)
            [71194] = true, -- Para Bellum Timer (Para Bellum)
            [71193] = true, -- Para Bellum Shield (Para Bellum)

            [71180] = true, -- Glorious Defender (of Glory)
            [71188] = true, -- Glorious Defense (of Glory)
            [71186] = true, -- Dodge Trigger (of Glory)
            [71101] = true, -- Permafrost (of Permafrost)

            -- Dragonstar Arena Sets
            [29103] = true, -- Archer's Mind (of the Archer's Mind)
            [57167] = true, -- Archer's Mind (of the Archer's Mind)
            [32806] = true, -- Robes of Destruction Mastery (of Destruction Mastery)
            [29114] = true, -- Footman's Fortune (of the Footman)
            [29096] = true, -- Minor Mending (of the Healer)

            -- DISGUISES

            [46281] = true, -- Necromancer Disguise (Bloodthorn Disguse)
            [31766] = true, -- Disguised (Colovian Uniform)
            [48429] = true, -- Gold Coast Courier Uniform (Courier Uniform)
            [33221] = true, -- Crown Disguise (Crown Dishdasha)
            [20175] = true, -- Dunmer Cultural Garb (Dunmer Cultural Garb)
            [33220] = true, -- Forebear Disguise (Forebear Dishdasha)
            [47574] = true, -- Fort Amol Guard Disguise (Fort Amol Guard Disguise)
            [38167] = true, -- Bleakrock Bandit Disguise (Frostedge Bandit Disguise)
            [39295] = true, -- Hallin's Stand Seventh Legion (Hallin's Stand Seventh Legion Disguise)
            [34267] = true, -- Imperial Disguise (Imperial Disguise)
            [31268] = true, -- Q4606 Disguise Watcher (Keeper's Gard)
            [31118] = true, -- Keeper's Garb (Keeper's Garb)
            [30879] = true, -- Shimmering Glow (Kollopi Essence)
            [35607] = true, -- Midnight Union Disguise (Midnight Union Disguise)
            [38878] = true, -- Northwind Disguise (Northwind Disguise)
            [43716] = true, -- Phaer Mercenary Disguise (Phaer Mercenary Disguise)
            [29986] = true, -- Disguise (Pirate Disguise)
            [43719] = true, -- Quendeluun Pact Disguise (Quendeluun Veiled Heritance Disguise)
            [28076] = true, -- Red Rook Disguise (Red Rook Disguise)
            [85204] = true, -- Scarlet Judge's Regalia (Scarlet Judge's Regalia)
            [33534] = true, -- Seaside Disguise (Sea Viper Armor)
            [27457] = true, -- Seadrake Disguise (Seadrake Disguise)
            [32045] = true, -- Servant Costume (Servant's Robes)
            [51906] = true, -- Q3854 Goblin Disguise (Shadowsilk Gem)
            [19013] = true, -- Steel Shrike Uniform (Steel Shrike Uniform)
            [19086] = true, -- Stormfist Disguise (Stormfist Disguise)
            [50177] = true, -- Vanguard Uniform (Vanguard Uniform)
            [43722] = true, -- First Auridon Marine Disguise (Vulkhel Guard Marine Disguise)

            -------------------------------------
            -- CHAMPION POINTS --
            -------------------------------------

            -- The Steed
            [59120] = true, -- Medium Armor Focus (The Steed)
            [92423] = true, -- Ironclad (The Steed)
            [62760] = true, -- Spell Shield (The Steed)
            [60384] = true, -- Resistant (The Steed)
            [60407] = true, -- Invigorating Bash (The Steed 10 - Invigorating Bash)
            [98313] = true, -- Invigorating Bash (The Steed 10 - Invigorating Bash)
            [63852] = true, -- Phase (The Steed 30 - Phase)
            [98294] = true, -- Phase (The Steed 30 - Phase)
            [61660] = true, -- Resilient (The Steed 75 - Resilient)
            [61661] = true, -- Resilient (The Steed 75 - Resilient)
            [64067] = true, -- Reinforced (The Steed 120 - Reinforced)
            [98314] = true, -- Reinforced (The Steed 120 - Reinforced)

            -- The Lady
            [60502] = true, -- Light Armor Focus (The Lady)
            [63850] = true, -- Thick Skinned (The Lady)
            [63844] = true, -- Hardy (The Lady)
            [63843] = true, -- Elemental Defender (The Lady)
            [63109] = true, -- Spell Absorption (The Lady 10 - Spell Absorption)
            [63110] = true,  -- Spell Absorption (The Lady 10 - Spell Absorption)
            [64079] = true, -- Shield Expert (The Lady 30 - Shield Expert)
            [60370] = true, -- Critical Leech (The Lady 75 - Critical Leech)
            [60371] = true, -- Critical Leech (The Lady 75 - Critical Leech)
            [59286] = true, -- Unchained (The Lady 120 - Unchained)
            [98316] = true, -- Unchained (The Lady 120 - Unchained)

            -- The Lord
            [60624] = true, -- Heavy Armor Focus (The Lord)
            [59948] = true, -- Bastion (The Lord)
            [59953] = true, -- Expert Defender (The Lord)
            [63851] = true, -- Quick Recovery (The Lord)
            [59300] = true, -- Field Physician (The Lord 10 - Field Physician)
            [98405] = true, -- Field Physician (The Lord 10 - Field Physician)
            [59582] = true, -- Infusion (The Lord 30 - Infusion)
            [98404] = true, -- Infusion (The Lord 30 - Infusion)
            [60427] = true, -- Revival (The Lord 75 - Revival)
            [98414] = true, -- Revival (The Lord 75 - Revival)
            [59893] = true, -- Determination (The Lord 120 - Determination)
            [61015] = true, -- Determination (The Lord 120 - Determination)

            -- The Tower
            [58899] = true, -- Bashing Focus (The Tower)
            [64077] = true, -- Sprinter (The Tower)
            [92425] = true, -- Siphoner (The Tower)
            [92428] = true, -- Siphoner (The Tower)
            [92431] = true, -- Warlord (The Tower)
            [60398] = true, -- Ensnare (The Tower 10 - Ensnare)
            [98308] = true, -- Ensnare (The Tower 10 - Ensnare)
            [60494] = true, -- Inspiration Boost (The Tower 30 - Inspiration Boost)
            [62516] = true, -- Mara's Gift (The Tower 75 - Mara's Gift)
            [62518] = true, -- Mara's Gift (The Tower 75 - Mara's Gift)
            [62274] = true, -- War Mount (The Tower 120 - War Mount)
            [64165] = true, -- War Mount (The Tower 120 - War Mount)

            -- The Lover
            [59346] = true, -- Mooncalf (The Lover)
            [59577] = true, -- Arcanist (The Lover)
            [60374] = true, -- Healthy (The Lover)
            [63854] = true, -- Tenacity (The Lover)
            [63663] = true, -- Plentiful Harvest (The Lover 10 - Plentiful Harvest)
            [63875] = true, -- Synergizer (The Lover 30 - Synergizer)
            [63878] = true, -- Synergizer (The Lover 30 - Synergizer)
            [60555] = true, -- Master Gatherer (The Lover 75 - Master Gatherer)
            [60560] = true, -- Windrunning (The Lover 125 - Windrunning)
            [64664] = true, -- Windrunning (The Lover 125 - Windrunning)
            [64665] = true, -- Windrunning (The Lover 125 - Windrunning)

            -- The Shadow
            [59298] = true, -- Befoul (The Shadow)
            [61548] = true, -- Shade (The Shadow)
            [60649] = true, -- Shadow Ward (The Shadow)
            [63863] = true, -- Tumbling (The Shadow)
            [56630] = true, -- Fortune Seeker (The Shadow 10 - Fortune Seeker)
            [60501] = true, -- Merchant Favored (The Shadow 30 - Merchant Favored)
            [60566] = true, -- Treasure Hunter (The Shadow 75 - Treasure Hunter)
            [61426] = true, -- Shadowstrike (The Shadow 120 - Shadowstrike)
            [64244] = true, -- Shadowstrike (The Shadow 120 - Shadowstrike)
            [64245] = true, -- Shadowstrike (The Shadow 120 - Shadowstrike)
            [77773] = true, -- Clairvoyance Fx (The Shadow 120 - Shadowstrike)

            -- The Apprentice
            [63848] = true, -- Elemental Expert (The Apprentice)
            [61555] = true, -- Spell Erosion (The Apprentice)
            [61680] = true, -- Elfborn (The Apprentice)
            [59630] = true, -- Blessed (The Apprentice)
            [63150] = true, -- Vengeance (The Apprentice 10 - Vengeance)
            [63152] = true, -- Vengeance Count (The Apprentice 10 - Vengeance)
            [63151] = true, -- Vengeance (The Apprentice 10 - Vengeance)
            [59626] = true, -- Spell Precision (The Apprentice 30 - Spell Precision)
            [59526] = true, -- Foresight (The Apprentice 75 - Foresight)
            [59530] = true, -- Foresight (The Apprentice 75 - Foresight)
            [63111] = true, -- Arcane Well (The Apprentice 120 - Arcane Well)
            [63114] = true, -- Arcane Well (The Apprentice 120 - Arcane Well)
            [88784] = true, -- Arcane Well (The Apprentice 120 - Arcane Well)

            -- The Atronach
            [92424] = true, -- Physical Weapon Expert (The Atronach)
            [60662] = true, -- Shattering Blows (The Atronach)
            [92134] = true, -- Master-at-Arms Expert (The Atronach)
            [60503] = true, -- Staff Expert (The Atronach)
            [63104] = true, -- Retaliation (The Atronach 10 - Retaliation)
            [63106] = true, -- Retaliation (The Atronach 10 - Retaliation)
            [60229] = true, -- Riposte (The Atronach 30 - Riposte)
            [60230] = true, -- Riposte (The Atronach 30 - Riposte)
            [63879] = true, -- Butcher (The Atronach 75 - Butcher)
            [60486] = true, -- Tactician (The Atronach 120 - Tactician)
            [63108] = true, -- Off-Balance (The Atronach 120 - Tactician)

            -- The Ritual
            [63847] = true, -- Thaumaturge (The Ritual)
            [59105] = true, -- Precise Strikes (The Ritual)
            [61546] = true, -- Piercing (The Ritual)
            [63868] = true, -- Mighty (The Ritual)
            [63099] = true, -- Opportunist (The Ritual 10 - Opportunist)
            [98307] = true, -- Opportunist (The Ritual 10 - Opportunist)
            [100408] = true, -- Opportunist (The Ritual 10 - Opportunist)
            [59418] = true, -- Perfect Strike (The Ritual 30 - Perfect Strike)
            [63880] = true, -- Exploiter (The Ritual 75 - Exploiter)
            [60413] = true, -- Last Stand (The Ritual 120 - Last Stand)
            [65133] = true, -- Major Heroism (The Ritual 120 - Last Stand)

            -------------------------------------
            -- PLAYER EFFECTS --
            -------------------------------------

            -- ROLL DODGE
            [28549] = true, -- Roll Dodge
            [29721] = true, -- Immobilize Immunity
            [69143] = true, -- Dodge Fatigue

            -- SPRINT
            [973] = true, -- Sprint
            [15356] = true, -- Sprint Drain

            -- CROUCH
            [20299] = true, -- Sneak
            [20304] = true, -- Crouch Slow
            [76463] = true, -- Clairvoyance Fx
            [20309] = true, -- Hidden
            [20307] = true, -- Trying to Hide
            [20301] = true, -- Crouch Drain
            [38127] = true, -- Remove Sprint
            [29177] = true, -- Flee
            [64420] = true, -- Remove Pet Stealth
            [26245] = true, -- Slam Stun

            -- MISC
            [15594] = true, -- Bonus vs off Balance
            --[20663] = true, -- Range Test Cast
            --[20667] = true, -- Heal Test Cast
            [28541] = true, -- Swap Weapons
            [25166] = true, -- Clumsy
            [10950] = true, -- Fall Snare
            [6811] = true, -- Recall
            [31221] = true, -- Skyshard Collect
            [32346] = true, -- Skyshard Collect
            [63601] = true, -- ESO Plus Member
            [47270] = true, -- Ritual of Mara

            -- MOUNT
            [36010] = true, -- Mount Up
            [37059] = true, -- Mount Up
            [37139] = true, -- Mount Up
            [36434] = true, -- Mount Up
            [42399] = true, -- Remove on Dismount
            [36432] = true, -- Dismount
            [36417] = true, -- Dismount
            [36419] = true, -- Dismount
            [46697] = true, -- Pause Mount Stamina Regen
            [42514] = true, -- Hard Dismount
            [43005] = true, -- Dismount
            [43770] = true, -- Boost
            [33439] = true, -- Mount Sprint (Generic)
            [33442] = true, -- Sprint Drain
            [41703] = true, -- Sprint
            [41704] = true, -- Sprint



            -- BLOCK
            [14890] = true, -- Block
            [16270] = true, -- Brace Cost
            [88724] = true, -- Brace Cost
            [86311] = true, -- Block FX
            [86310] = true, -- Stagger
            [86309] = true, -- Stun
            [86312] = true, -- Stun
            [45902] = true, -- Off-Balance
            [18713] = true, -- Remover

            -- BASH
            [55146] = true, -- Interrupt Bonus
            [21970] = true, -- Bash
            [21973] = true, -- Bash
            [21972] = true, -- Stagger
            [21971] = true, -- Bash Stun
            [48416] = true, -- Uber Attack
            [45982] = true, -- Bash Stun

            -- OFF-BALANCE EXPLOIT
            [20172] = true, -- Off-Balance Exploit
            [18793] = true, -- Off-Balance Exploit
            [16825] = true, -- Off-Balance Exploit

            -- BREAK FREE
            [16565] = true, -- Break Free
            [16566] = true, -- CC Immunity

            -- MUNDUS STONE EVENTS
            [14031] = true, -- Mundus Use
            [13940] = true, -- Boon: The Warrior
            [13943] = true, -- Boon: The Mage
            [13974] = true, -- Boon: The Serpent
            [13975] = true, -- Boon: The Thief
            [13976] = true, -- Boon: The Lady
            [13977] = true, -- Boon: The Steed
            [13978] = true, -- Boon: The Lord
            [13979] = true, -- Boon: The Apprentice
            [13980] = true, -- Boon: The Ritual
            [13981] = true, -- Boon: The Lover
            [13982] = true, -- Boon: The Atronach
            [13984] = true, -- Boon: The Shadow
            [13985] = true, -- Boon: The Tower

            -- DEATH/RESURRECTION
            [14644] = true, -- Revive (Death Dialog)
            [14646] = true, -- Recently Revived
            [26770] = true, -- Resurrect
            [55406] = true, -- Resurrect Trigger
            [55400] = true, -- Magicka Restore
            [55401] = true, -- Magicka Restore

            -- BASIC ATTACKS
            [16593] = true, -- Melee Snare
            --[64842] = true, -- Critter Smash
            [48532] = true, -- Charge Snare
            [61737] = true, -- Empower
            --[41952] = true, -- Generic Fear Snare
            [55080] = true, -- Pet Hidden
            [28301] = true, -- Ability CC Immunity
            [38117] = true, -- CC Immunity
            [2874] = true, -- Staggered

            -- TAUNT EFFECTS
            [38254] = true, -- Taunt
            [52790] = true, -- Taunt Counter
            [38541] = true, -- Taunt
            [38542] = true, -- Taunt

            -- DISGUISE EFFECTS

            [50602] = true, -- Disguised
            [26237] = true, -- Disguise Warning Area
            [26238] = true, -- Disguise Warning Area
            [25584] = true, -- Discovered
            [25582] = true, -- Remove Disguise
            [26472] = true, -- Remove Disguise

            [25602] = true, -- Suspicious
            [25603] = true, -- Begin
            [25604] = true, -- Interact Complete
            [26223] = true, -- Remove Suspicious

            --[13371] = true, -- Acting Suspicious
            [13372] = true, -- Spotted

            -- MISC
            [22706] = true, -- Remove Sprint
            [20303] = true, -- Remove Sprint
            [38519] = true, -- Hiding
            [85701] = true, -- Dueling Flag
            [2727] = true, -- Off-Balance
            [21263] = true, -- Ayleid Health Bonus

            -- PET EFFECTS
            [28609] = true, -- Dummy Target Setter
            [43958] = true, -- Pet AoE Resistance
            [70116] = true, -- Pet PvP Damage Reduction
            [62197] = true, -- Pet Crit Chance

            --------------------------
            -- WORLD EVENTS
            --------------------------

            -- Daedric Anchor
            [13603] = true, -- CON_Destealth
            [44045] = true, -- Summon Victim
            [44056] = true, -- Summon Victim Spawn
            [48272] = true, -- Pester Victim
            [44058] = true, -- Draw the Blood
            [43982] = true, -- Sacrifice

            [46804] = true, -- Unexpected Sacrifice
            [46870] = true, -- Unexpected Sacrifice
            [46871] = true, -- Unexpected Sacrifice
            [46872] = true, -- Unexpected Sacrifice

            [43974] = true, -- Daedric Arrival
            [43972] = true, -- Daedric Arrival
            [86717] = true, -- Drop Anchor

            [46690] = true, -- Power of the Daedra
            [46689] = true, -- Vitality of the Daedra
            [51632] = true, -- Vitality of the Daedra
            [51633] = true, -- Vitality of the Daedra

            [44526] = true, -- Daedric Souls Basic
            [44635] = true, -- Daedric Souls Average
            [44636] = true, -- Daedric Souls Scary

            [95805] = true, -- Static Charge
            [95806] = true, -- Static Charge
            [95821] = true, -- Static Charge
            [95820] = true, -- Static Charge
            [95810] = true, -- Static Charge
            [95841] = true, -- Static Charge
            [95813] = true, -- Static Charge
            [96267] = true, -- Static Charge

            [56385] = true, -- DA Music Delay
            [46293] = true, -- Stun
            [46291] = true, -- Rain of Doom
            [46292] = true, -- Become Visible
            [46294] = true, -- Become Visible

            -- Daedric World Drop
            [51509] = true, -- Stun
            [51506] = true, -- Targetable Off
            [51505] = true, -- Portal Spawn
            [51507] = true, -- Targetable On

            --------------------------
            -- DRAGONKNIGHT PASSIVES
            --------------------------

            -- Ardent Flame
            [29424] = true, -- Combustion (Rank 1)
            [108806] = true, -- Combustion
            [108809] = true, -- Combustion
            [45011] = true, -- Combustion (Rank 2)
            [108816] = true, -- Combustion
            [108815] = true, -- Combustion
            [29430] = true, -- Warmth (Rank 1)
            [29436] = true, -- Warmth
            [45012] = true, -- Warmth (Rank 2)
            [45016] = true, -- Warmth
            [29439] = true, -- Searing Heat (Rank 1)
            [45023] = true, -- Searing Heat (Rank 2)
            [29451] = true, -- World in Ruin (Rank 1)
            [45029] = true, -- World in Ruin (Rank 2)

            -- Draconic Power
            [29455] = true, -- Iron Skin (Rank 1)
            [44922] = true, -- Iron Skin (Rank 2)
            [29457] = true, -- Burning Heart (Rank 1)
            [44933] = true, -- Burning Heart (Rank 2)
            [29460] = true, -- Elder Dragon (Rank 1)
            [44951] = true, -- Elder Dragon (Rank 2)
            [29462] = true, -- Scaled Armor (Rank 1)
            [44953] = true, -- Scaled Armor (Rank 2)

            -- Earthen Heart
            [29468] = true, -- Eternal Mountain (Rank 1)
            [44996] = true, -- Eternal Mountain (Rank 2)
            [29463] = true, -- Battle Roar (Rank 1)
            [29465] = true, -- Battle Roar
            [29466] = true, -- Battle Roar
            [29467] = true, -- Battle Roar
            [44984] = true, -- Battle Roar (Rank 2)
            [44986] = true, -- Battle Roar
            [44987] = true, -- Battle Roar
            [44988] = true, -- Battle Roar
            [29473] = true, -- Mountain's Blessing (Rank 1)
            [61798] = true, -- Minor Brutality
            [29474] = true, -- Mountain's Blessing
            [45001] = true, -- Mountain's Blessing (Rank 2)
            [61799] = true, -- Minor Brutality
            [45005] = true, -- Mountain's Blessing
            [29475] = true, -- Helping Hands (Rank 1)
            [29476] = true, -- Helping Hands
            [45009] = true, -- Helping Hands (Rank 2)
            [45010] = true, -- Helping Hands

            --------------------------
            -- DRAGONKNIGHT ACTIVE ABILITIES
            --------------------------

            [23806] = true, -- Lava Whip (Lava Whip - Rank 1)
            [23808] = true, -- Off Balance (Lava Whip - Rank 1)

            [32842] = true, -- Molten Whip Passive (Molten Whip - Rank 1)
            [20805] = true, -- Molten Whip (Molten Whip - Rank 1)
            [20806] = true, -- Off Balance (Molten Whip - Rank 1)

            [20816] = true, -- Flame Lash (Flame Lash - Rank 1)
            [34117] = true, -- Off Balance (Flame Lash - Rank 1)
            [20824] = true, -- Power Lash (Flame Lash - Rank 1)
            [70742] = true, -- Off-Balance Exploit (Flame Lash - Rank 1)
            [70744] = true, -- Off-Balance Exploit (Flame Lash - Rank 1)
            [23105] = true, -- Power Lash (Flame Lash - Rank 1)
            [105196] = true, -- Power Lash (Flame Lash - Rank 1)

            [20657] = true, -- Searing Strike (Searing Strike - Rank 1)
            [44363] = true, -- Searing Strike (Searing Strike - Rank 1)

            [20668] = true, -- Venomous Claw (Venomous Claw - Rank 1)
            [44369] = true, -- Venomous Claw (Venomous Claw - Rank 1)
            [31810] = true, -- Venomous Claw (Venomous Claw - Rank 1)

            [32019] = true, -- Burning Embers (Burning Embers - Rank 1)
            [32018] = true, -- Burning Embers (Burning Embers - Rank 1)
            [20660] = true, -- Burning Embers (Burning Embers - Rank 1)
            [44373] = true, -- Burning Embers (Burning Embers - Rank 1)
            [31815] = true, -- Burning Embers (Burning Embers - Rank 1)

            [20917] = true, -- Fiery Breath (Fiery Breath - Rank 1)
            [31102] = true, -- Fiery Breath (Fiery Breath - Rank 1)

            [20944] = true, -- Noxious Breath (Noxious Breath - Rank 1)
            [31103] = true, -- Noxious Breath (Noxious Breath - Rank 1)
            [48946] = true, -- Major Fracture (Noxious Breath - Rank 1)

            [20930] = true, -- Engulfing Flames (Engulfing Flames - Rank 1)
            [31104] = true, -- Engulfing Flames (Engulfing Flames - Rank 1)

            [31290] = true, -- Fiery Reach taunt (Fiery Grip - All Morphs)
            [20492] = true, -- Fiery Grip (Fiery Grip)
            [20493] = true, -- Fiery Grip (Fiery Grip)
            [76498] = true, -- Major Expedition (Fiery Grip)

            [20499] = true, -- Empowering Chains (Empowering Chains)
            [76506] = true, -- Major Expedition (Empowering Chains)
            [108679] = true, -- Empower (Empowering Chains)
            [108678] = true, -- Might of the Guild (Empowering Chains)
            [109206] = true, -- Empower (Empowering Chains)

            [20496] = true, -- Unrelenting Grip (Unrelenting Grip)
            [62004] = true, -- Unrelenting Grip (Unrelenting Grip)
            [76502] = true, -- Major Expedition (Unrelenting Grip)
            [77105] = true, -- Unrelenting Grip (Unrelenting Grip)

            [75088] = true, -- Major Prophecy (Inferno)
            [28967] = true, -- Inferno (Inferno)
            [28969] = true, -- Inferno (Inferno)

            [76433] = true, -- Major Prophecy (Cauterize)
            [32881] = true, -- Cauterize (Cauterize)
            [76429] = true, -- Cauterize (Cauterize)

            [76420] = true, -- Major Prophecy (Flames of Oblivion)
            [76426] = true, -- Major Savagery (Flames of Oblivion)
            [32853] = true, -- Flames of Oblivion (Flames of Oblivion)
            [61945] = true, -- Flames of Oblivion (Flames of Oblivion)

            [67717] = true, -- Shackle Synergy Cooldown (Dragonknight Standard - Shackle Synergy)
            [98438] = true, -- Shackle Damage (Dragonknight Standard - Shackle Synergy)
            [98447] = true, -- Shackle Snare (Dragonknight Standard - Shackle Synergy)
            [98437] = true, -- Shackle Area Effect (Dragonknight Standard - Shackle Synergy)
            [98448] = true, -- Shackle Immune FX (Dragonknight Standard - Shackle Synergy)
            [108805] = true, -- Synergy Damage Bonus (Dragonknight Standard - Shackle Synergy)

            [28988] = true, -- Dragonknight Standard (Dragonknight Standard - Rank 1)
            [28995] = true, -- Dragonknight Standard (Dragonknight Standard - Rank 1)
            [29230] = true, -- Major Defile (Dragonknight Standard - Rank 1)
            [102366] = true, -- Shackle Synergy Anchor (Dragonknight Standard - Rank 1)
            [32905] = true, -- Shackle (Dragonknight Standard - Rank 1)

            [32967] = true, -- Shifting Standard (Shifting Standard - Rank 1)
            [32958] = true, -- Shifting Standard (Shifting Standard - Rank 1)
            [70735] = true, -- Shifting Standard (Shifting Standard - Rank 1)
            [32960] = true, -- Shifting Standard (Shifting Standard - Rank 1)
            [32961] = true, -- Major Defile (Shifting Standard - Rank 1)
            [102370] = true, -- Shackle Synergy Anchor (Shifting Standard - Rank 1)
            [32962] = true, -- Shifting Standard (Shifting Standard - Rank 1)
            [32963] = true, -- Shift Standard (Shifting Standard - Rank 1)
            [100100] = true, -- Shift Standard (Shifting Standard - Rank 1)
            [102376] = true, -- Shackle Synergy Anchor (Shifting Standard - Rank 1)
            [32966] = true, -- Shifting Standard (Shifting Standard - Rank 1)
            [32964] = true, -- Shifting Standard (Shifting Standard - Rank 1)
            [32965] = true, -- Major Deflie (Shifting Standard - Rank 1)

            [32956] = true, -- Standard of Might (Standard of Might - Rank 1)
            [32957] = true, -- Standard of Might (Standard of Might - Rank 1)
            [32947] = true, -- Standard of Might (Standard of Might - Rank 1)
            [32948] = true, -- Standard of Might (Standard of Might - Rank 1)
            [32949] = true, -- Major Defile (Standard of Might - Rank 1)
            [102413] = true, -- Shackle Synergy Anchor (Standard of Might - Rank 1)
            [32950] = true, -- Standard of Might (Standard of Might - Rank 1)

            [20319] = true, -- Spiked Armor (Spiked Armor - Rank 1)
            [61815] = true, -- Major Resolve (Spiked Armor - Rank 1)
            [61816] = true, -- Major Ward (Spiked Armor - Rank 1)
            [20320] = true, -- Spiked Armor (Spiked Armor - Rank 1)

            [20328] = true, -- Hardened Armor (Hardened Armor - Rank 1)
            [61827] = true, -- Major Resolve (Hardened Armor - Rank 1)
            [61828] = true, -- Major Ward (Hardened Armor - Rank 1)
            [31808] = true, -- Hardened Armor (Hardened Armor - Rank 1)
            [20329] = true, -- Hardened Armor Damage Return (Hardened Armor - Rank 1)

            [20323] = true, -- Volatile Armor (Volatile Armor - Rank 1)
            [61836] = true, -- Major Resolve (Volatile Armor - Rank 1)
            [61837] = true, -- Major Ward (Volatile Armor - Rank 1)
            [20324] = true, -- Volatle Armor (Volatile Armor - Rank 1)
            [20326] = true, -- Volatile Armor (Volatile Armor - Rank 1)

            [32974] = true, -- Ignite (Dark Talons - Synergy)
            [48040] = true, -- Synergy Dummy (Dark Talons - Ignite Synergy)
            [108807] = true, -- Synergy Damage Bonus (Dark Talons - Ignite Synergy)

            [20245] = true, -- Dark Talons (Dark Talons - Rank 1)
            [20527] = true, -- Dark Talons (Dark Talons - Rank 1)
            [102690] = true, -- Ignite Synergy Ticker (Dark Talons - Rank 1)
            [32976] = true, -- Ignite Grant Ability (Dark Talons - Rank 1)
            [95174] = true, -- Dark Talons FX (Dark Talons - Rank 1)

            [20252] = true, -- Burning Talons (Impale Grant Ability - Rank 1)
            [31898] = true, -- Burning Talons (Burning Talons - Rank 1)
            [20253] = true, -- Burning Talons (Burning Talons - Rank 1)
            [102716] = true, -- Ignite Synergy Ticker (Burning Talons - Rank 1)
            [33244] = true, -- Ignite Grant Ability (Burning Talons - Rank 1)
            [95178] = true, -- Dark Talons FX (Burning Talons - Rank 1)

            [20251] = true, -- Choking Talons (Choking Talons - Rank 1)
            [31899] = true, -- Minor Maim (Choking Talons - Rank 1)
            [20528] = true, -- Choking Talons (Choking Talons - Rank 1)
            [102720] = true, -- Ignite Synergy Ticker (Choking Talons - Rank 1)
            [33252] = true, -- Ignite Grant Ability (Choking Talons - Rank 1)
            [95182] = true, -- Dark Talons FX (Choking Talons - Rank 1)

            [29004] = true, -- Dragon Blood (Dragon Blood - Rank 1)
            [29010] = true, -- Dragon Blood (Dragon Blood - Rank 1)
            [29011] = true, -- Major Fortitude (Dragon Blood - Rank 1)

            [32744] = true, -- Green Dragon Blood (Dragon Blood - Rank 1)
            [32745] = true, -- Green Dragon Blood (Dragon Blood - Rank 1)
            [32748] = true, -- Major Endurance (Dragon Blood - Rank 1)
            [61884] = true, -- Major Fortitude (Dragon Blood - Rank 1)
            [91670] = true, -- Minor Vitality (Dragon Blood - Rank 1)

            [32722] = true, -- Coagulating Blood (Coagulating Blood - Rank 1)
            [61891] = true, -- Coagulating Blood Bonus Heal (Coagulating Blood - Rank 1)
            [32723] = true, -- Coagulating Blood (Coagulating Blood - Rank 1)
            [91674] = true, -- Major Fortitude (Coagulating Blood - Rank 1)

            [21007] = true, -- Reflective Scale (Reflective Scale)

            [21014] = true, -- Reflective Plate (Reflective Plate)

            [21017] = true, -- Dragon Fire Scale (Dragon Fire Scale)
            [32753] = true, -- Dragon Fire Scale (Dragon Fire Scale)

            [31837] = true, -- Inhale (Inhale)
            [31859] = true, -- Inhale Heal (Inhale)
            [31841] = true, -- Inhale (Inhale)
            [31842] = true, -- Inhale (Inhale)

            [32792] = true, -- Deep Breath (Deep Breath)
            [32795] = true, -- Deep Breath (Deep Breath)
            [32796] = true, -- Deep Breath (Deep Breath)
            [32794] = true, -- Deep Breath (Deep Breath)
            [32797] = true, -- Deep Breath (Deep Breath)
            [32805] = true, -- Deep Breath (Deep Breath)

            [32785] = true, -- Draw Essence (Draw Essence)
            [32786] = true, -- Draw Essence (Draw Essence)
            [32788] = true, -- Draw Essence (Draw Essence)
            [32787] = true, -- Draw Essence (Draw Essence)
            [32789] = true, -- Draw Essence (Draw Essence)

            --[18032] = true, -- Stun (Dragon Leap)
            [48744] = true, -- CC Immunity (Dragon Leap)
            [29012] = true, -- Dragon Leap (Dragon Leap)
            [29014] = true, -- Dragon Leap (Dragon Leap)
            [29016] = true, -- Dragon Leap (Dragon Leap)

            [48753] = true, -- CC Immunity (Take Flight - Rank 1)
            [32719] = true, -- Take Flight (Take Flight - Rank 1)
            [32720] = true, -- Take Flight (Take Flight - Rank 1)
            [32721] = true, -- Take Flight (Take Flight - Rank 1)

            [48760] = true, -- CC Immunity (Ferocious Leap - Rank 1)
            [32715] = true, -- Ferocious Leap (Ferocious Leap - Rank 1)
            [32716] = true, -- Ferocious Leap (Ferocious Leap - Rank 1)
            [32717] = true, -- Ferocious Leap (Ferocious Leap - Rank 1)
            [61814] = true, -- Ferocious Leap (Ferocious Leap - Rank 1)

            [86798] = true, -- Knockdown Bonus Damage (Stonefist - Rank 1)
            [29032] = true, -- Stonefist (Stonefist - Rank 1)
            [29034] = true, -- Stonefist (Stonefist - Rank 1)

            [31820] = true, -- Obsidian Shard (Obsidian Shard - Rank 1)
            [31821] = true, -- Obsidian Shard (Obsidian Shard - Rank 1)
            [68763] = true, -- Obsidian Shard (Obsidian Shard - Rank 1)

            [86805] = true, -- Knockdown Bonus Damage (Stone Giant - Rank 1)
            [31816] = true, -- Stone Giant (Stone Giant - Rank 1)
            [31817] = true, -- Stone Giant (Stone Giant - Rank 1)
            [31818] = true, -- Minor Resolve (Stone Giant - Rank 1)
            [108801] = true, -- Minor Ward (Stone Giant - Rank 1)

            [29043] = true, -- Molten Weapons (Molten Weapons - Rank 1)
            [92507] = true, -- Major Sorcery (Molten Weapons - Rank 1)

            [31874] = true, -- Igneous Weapons (Igneous Weapons - Rank 1)
            [76518] = true, -- Major Brutality (Igneous Weapons - Rank 1)
            [92503] = true, -- Major Sorcery (Igneous Weapons - Rank 1)

            [31888] = true, -- Molten Armaments (Molten Armaments - Rank 1)
            [76537] = true, -- Molten Armaments (Molten Armaments - Rank 1)
            [92512] = true, -- Major Sorcery (Molten Armaments - Rank 1)

            [29071] = true, -- Obsidian Shield (Obsidian Shield)
            [108675] = true, -- Major Mending (Obsidian Shield)

            [29224] = true, -- Igneous Shield (Igneous Shield)
            [29225] = true, -- Obsidian Shield (Igneous Shield)
            [55033] = true, -- Major Mending (Igneous Shield)

            [32673] = true, -- Fragmented Shield (Fragmented Shield)
            [108676] = true, -- Major Mending (Fragmented Shield)

            [29037] = true, -- Petrify (Petrify)
            [54918] = true, -- Petrify (Petrify)

            [32685] = true, -- Fossilize (Fossilize)
            [54931] = true, -- Fossilize (Fossilize)
            [61785] = true, -- Fossilize (Fossilize)

            [32678] = true, -- Shattering Rocks (Shattering Rocks)
            [32684] = true, -- Shattering Rocks (Shattering Rocks)
            [108813] = true, -- Heal Trigger Shattering Rocks (Shattering Rocks)
            [108811] = true, -- Shattering Rocks Heal (Shattering Rocks)

            [29059] = true, -- Ash Cloud (Ash Cloud)
            [33142] = true, -- Ash Cloud (Ash Cloud)
            [61772] = true, -- Ash Cloud (Ash Cloud)
            [29126] = true, -- Ash Cloud (Ash Cloud)

            [20779] = true, -- Cinder Storm (Cinder Storm)
            [21435] = true, -- Ash Storm Remover (Cinder Storm)
            [34791] = true, -- Cinder Storm (Cinder Storm)
            [20780] = true, -- Cinder Storm (Cinder Storm)

            [32710] = true, -- Eruption (Eruption)
            [33099] = true, -- Ash Storm Remover (Eruption)
            [32714] = true, -- Eruption (Eruption)
            [32711] = true, -- Eruption (Eruption)
            [32712] = true, -- Eruption (Eruption)

            [15957] = true, -- Magma Armor (Magma Armor - Rank 1)
            [15959] = true, -- Magma Armor (Magma Armor - Rank 1)

            [17874] = true, -- Magma Shell (Magma Shell - Rank 1)
            [17875] = true, -- Magma Shell (Magma Shell - Rank 1)
            [76483] = true, -- Magma Shell (Magma Shell - Rank 1)

            [17878] = true, -- Corrosive Armor (Corrosive Armor - Rank 1)
            [17879] = true, -- Corrosive Armor (Corrosive Armor - Rank 1)

            --------------------------
            -- NIGHTBLADE PASSIVES
            --------------------------

            -- Assassination
            [36616] = true, -- Master Assassin (Rank 1)
            [45038] = true, -- Master Assassin (Rank 2)
            [36630] = true, -- Executioner (Rank 1)
            [101434] = true, -- Executioner
            [101435] = true, -- Executioner
            [36633] = true, -- Executioner
            [45048] = true, -- Executioner (Rank 2)
            [101437] = true, -- Executioner
            [101436] = true, -- Executioner
            [45050] = true, -- Executioner
            [36636] = true, -- Pressure Points (Rank 1)
            [45053] = true, -- Pressure Points (Rank 2)
            [36641] = true, -- Hemorrhage (Rank 1)
            [61882] = true, -- Minor Savagery
            [45060] = true, -- Hemorrhage (Rank 2)
            [61898] = true, -- Minor Savagery

            -- Shadow
            [36549] = true, -- Refreshing Shadows (Rank 1)
            [45103] = true, -- Refreshing Shadows (Rank 2)
            [18866] = true, -- Shadow Barrier (Rank 1)
            [18868] = true, -- Major Ward
            [66075] = true, -- Major Resolve
            [45071] = true, -- Shadow Barrier (Rank 2)
            [45076] = true, -- Major Ward
            [66083] = true, -- Major Resolve
            [36532] = true, -- Dark Vigor (Rank 1)
            [45084] = true, -- Dark Vigor (Rank 2)
            [36552] = true, -- Dark Veil (Rank 1)
            [45115] = true, -- Dark Veil (Rank 2)

            -- Siphoning
            [36560] = true, -- Catalyst (Rank 1)
            [63705] = true, -- Catalyst
            [45135] = true, -- Catalyst (Rank 2)
            [63707] = true, -- Catalyst
            [36595] = true, -- Magicka Flood (Rank 1)
            [45150] = true, -- Magicka Flood (Rank 2)
            [36603] = true, -- Soul Siphoner (Rank 1)
            [45155] = true, -- Soul Siphoner (Rank 2)
            [36587] = true, -- Transfer (Rank 1)
            [36589] = true, -- Transfer
            [45145] = true, -- Transfer (Rank 2)
            [45146] = true, -- Transfer

            --------------------------
            -- NIGHTBLADE ACTIVES
            --------------------------

            [43706] = true, -- Sense Weakness (Assassin's Blade - All Morphs)
            [33386] = true, -- Assassin's Blade (Assassin's Blade)

            [61788] = true, -- Killer's Blade (Killer's Blade)
            [34843] = true, -- Killer's Blade (Killer's Blade)
            [61787] = true, -- Killer's Blade (Killer's Blade)

            [34851] = true, -- Impale (Impale)

            [18342] = true, -- Teleport Strike (Teleport Strike)
            [18346] = true, -- Teleport Strike (Teleport Strike)
            [25887] = true, -- Teleport Strike (Teleport Strike)

            [25484] = true, -- Ambush (Ambush)
            [25485] = true, -- Ambush (Ambush)
            [25959] = true, -- Ambush (Ambush)

            [25493] = true, -- Lotus Fan (Lotus Fan)
            [25494] = true, -- Lotus Fan (Lotus Fan)
            [35334] = true, -- Lotus Fan (Lotus Fan)
            [35336] = true, -- Lotus Fan (Lotus Fan)

            [33375] = true, -- Blur (Blur)
            [90587] = true, -- Major Evasion (Blur)

            [35414] = true, -- Mirage (Mirage)
            [90593] = true, -- Major Evasion (Mirage)
            [61817] = true, -- Minor Resolve (Mirage)
            [68512] = true, -- Minor Ward (Mirage)

            [35419] = true, -- Double Take (Double Take)
            [90620] = true, -- Major Evasion (Double Take)
            [61833] = true, -- Major Expedition (Double Take)

            [33357] = true, -- Mark Target (Mark Target)
            [33363] = true, -- Major Breach (Mark Target)
            [63909] = true, -- Major Fracture (Mark Target)
            [33408] = true, -- Summon Shade (Mark Target)
            [33373] = true, -- Mark Target (Mark Target)

            [36968] = true, -- Piercing Mark (Piercing Mark)
            [36980] = true, -- Major Breach (Piercing Mark)
            [63915] = true, -- Major Fracture (Piercing Mark)
            [36994] = true, -- Piercing Mark (Piercing Mark)
            [36982] = true, -- Summon Shade (Piercing Mark)
            [36983] = true, -- Mark Target (Piercing Mark)

            [36967] = true, -- Reaper's Mark (Reaper's Mark)
            [36972] = true, -- Major Breach (Reaper's Mark)
            [63919] = true, -- Major Fracture (Reaper's Mark)
            [36974] = true, -- Reaper's Mark (Reaper's Mark)
            [36975] = true, -- Reaper's Mark (Reaper's Mark)
            [36973] = true, -- Major Berserk (Reaper's Mark)

            [61907] = true, -- Assassin's Will (Grim Focus)
            [61902] = true, -- Grim Focus (Grim Focus)
            [64047] = true, -- Minor Berserk (Grim Focus)
            [61905] = true, -- Grim Focus (Grim Focus)

            [61932] = true, -- Assassin's Scourge (Relentless Focus)
            [61927] = true, -- Relentless Focus (Relentless Focus)
            [64051] = true, -- Minor Berserk (Relentless Focus)
            [62056] = true, -- Minor Endurance (Relentless Focus)
            [61928] = true, -- Relentless Focus (Relentless Focus)

            [61930] = true, -- Assassin's Will (Merciless Resolve)
            [62061] = true, -- Snare (Merciless Resolve)
            [61919] = true, -- Merciless Resolve (Merciless Resolve)
            [64055] = true, -- Minor Berserk (Merciless Resolve)
            [61920] = true, -- Merciless Resolve (Merciless Resolve)

            [33398] = true, -- Death Stroke (Death Stroke)
            [33399] = true, -- Major Defile (Death Stroke)
            [61389] = true, -- Damage Taken Increased (Death Stroke)

            [36508] = true, -- Incapacitating Strike (Incapacitating Strike)
            [36509] = true, -- Major Defile (Incapacitating Strike)
            [61393] = true, -- Damage Taken Increased (Incapacitating Strike)
            [36513] = true, -- Incapacitating Strike (Incapacitating Strike)

            [36518] = true, -- Soul Harvest Passive (Soul Harvest)
            [36514] = true, -- Soul Harvest (Soul Harvest)
            [36515] = true, -- Major Defile (Soul Harvest)
            [61400] = true, -- Damage Taken Increased (Soul Harvest)
            [36519] = true, -- Rapid Stroke Passive (Soul Harvest)

            [25255] = true, -- Veiled Strike (Veiled Strike)
            [25256] = true, -- Off Balance (Veiled Strike)
            [33185] = true, -- Veiled Strike (Veiled Strike)

            [25260] = true, -- Surprise Attack (Surprise Attack)
            [34733] = true, -- Off Balance (Surprise Attack)
            [34732] = true, -- Surprise Attack (Surprise Attack)
            [34734] = true, -- Major Fracture (Surprise Attack)

            [34738] = true, -- Concealed Weapon Passive (Concealed Weapon)
            [34739] = true, -- Concealed Weapon (Concealed Weapon)
            [25267] = true, -- Concealed Weapon (Concealed Weapon)
            [34737] = true, -- Off Balance (Concealed Weapon)
            [34736] = true, -- Concealed Weapon (Concealed Weapon)

            [25375] = true, -- Shadow Cloak (Shadow Cloak)
            [25376] = true, -- Shadow Cloak (Shadow Cloak)
            [77756] = true, -- Clairvoyance Fx (Shadow Cloak)

            [25380] = true, -- Shadowy Disguise (Shadowy Disguise)
            [25381] = true, -- Shadowy Disguise (Shadowy Disguise)
            [62141] = true, -- Shadowy Disguise (Shadowy Disguise)
            [77757] = true, -- Clairvoyance Fx (Shadowy Disguise)

            [25377] = true, -- Dark Cloak (Dark Cloak)
            [108913] = true, -- Minor Protection (Dark Cloak)

            [33195] = true, -- Path of Darkness (Path of Darkness)
            [37380] = true, -- Summon Shade (Path of Darkness)
            [63982] = true, -- Path of Darkness (Path of Darkness)
            [33198] = true, -- Path of Darkness (Path of Darkness)
            [33197] = true, -- Path of Darkness (Path of Darkness)
            [33210] = true, -- Major Expedition (Path of Darkness)
            [33196] = true, -- Path of Darkness (Path of Darkness)

            [36049] = true, -- Twisting Path (Twisting Path)
            [37381] = true, -- Summon Shade (Twisting Path)
            [36050] = true, -- Major Expedition (Twisting Path)
            [36052] = true, -- Twisting Path (Twisting Path)

            [36028] = true, -- Refreshing Path (Refreshing Path)
            [64003] = true, -- Summon Shade (Refreshing Path)
            [64007] = true, -- Path of Darkness (Refreshing Path)
            [64004] = true, -- Path of Darkness (Refreshing Path)
            [64002] = true, -- Refreshing Path (Refreshing Path)
            [64005] = true, -- Major Expedition (Refreshing Path)
            [64006] = true, -- Refreshing Path (Refreshing Path)
            [64001] = true, -- Path of Darkness (Refreshing Path)

            [25352] = true, -- Aspect of Terror (Aspect of Terror)
            [76683] = true, -- Mass Hysteria (Aspect of Terror)

            [37470] = true, -- Mass Hysteria (Mass Hysteria)
            [37473] = true, -- Mass Hysteria (Mass Hysteria)
            [37472] = true, -- Minor Maim (Mass Hysteria)

            [37475] = true, -- Manifestation of Terror (Manifestation of Terror)
            [76628] = true, -- Manifestation of Terror (Manifestation of Terror)
            [76631] = true, -- Manifestation of Terror (Manifestation of Terror)
            [76627] = true, -- Manifestation of Terror (Manifestation of Terror)
            [76630] = true, -- Deadric Mines (Manifestation of Terror)
            [76629] = true, -- Remove Trap (Manifestation of Terror)
            [76635] = true, -- Remove Trap (Manifestation of Terror)
            [76634] = true, -- Manifestation of Terror (Manifestation of Terror)
            [76637] = true, -- Manifestation of Terror (Manifestation of Terror)
            [76639] = true, -- Manifestation of Terror (Manifestation of Terror)
            --[108907] = true, -- Generic Fear Snare (Manifestation of Terror)
            [38208] = true, -- Birth Manifestation of Terror (Manifestation of Terror)
            [76632] = true, -- Manifestation of Terror (Manifestation of Terror)
            [76638] = true, -- Mass Hysteria (Manifestation of Terror)

            [65269] = true, -- Shade Initialize (Summon Shade - All Morphs)
            [62197] = true, -- Pet Crit Chance (Summon Shade - All Morphs)
            --[85086] = true, -- Boss (Summon Shade - All Morphs)
            --[85087] = true, -- Boss (Summon Shade - All Morphs)

            [33219] = true, -- Corrode (Shade) (Summon Shade - Summon Shade/Dark Shade)
            [33228] = true, -- Minor Maim (Summon Shade - Summon Shade/Dark Shade)

            [33211] = true, -- Summon Shade (Summon Shade)
            [38517] = true, -- Summon Shade (Summon Shade)
            [33290] = true, -- Summon Shade (Summon Shade)

            [35434] = true, -- Dark Shade (Dark Shade)
            [35438] = true, -- Summon Shade (Dark Shade)
            [108940] = true, -- Summon Shade (Dark Shade)
            [108936] = true, -- Whirlwind (Dark Shade)
            [108939] = true, -- Minor Maim (Dark Shade)
            [108938] = true, -- Whirlwind (Dark Shade)

            [35441] = true, -- Shadow Image (Shadow Image)
            [38528] = true, -- Shadow (Shadow Image)
            [35442] = true, -- Summon Shade (Shadow Image)
            [35451] = true, -- Shadow (Shadow Image)

            [51556] = true, -- Corrode (Shadow Image)
            [51558] = true, -- Shade Corrode (Shadow Image)


            [25411] = true, -- Consuming Darkness (Consuming Darkness)
            [102438] = true, -- Hidden Refresh Anchor (Consuming Darkness)
            [44871] = true, -- Major Protection (Consuming Darkness)
            [25412] = true, -- Consuming Darkness (Consuming Darkness)

            [36493] = true, -- Bolstering Darkness (Bolstering Darkness)
            [102442] = true, -- Hidden Refresh Anchor (Bolstering Darkness)
            [44862] = true, -- Major Protection (Bolstering Darkness)
            [36495] = true, -- Bolstering Darkness (Bolstering Darkness)

            [36485] = true, -- Veil of Blades (Veil of Blades)
            [102446] = true, -- Hidden Refresh Anchor (Veil of Blades)
            [44854] = true, -- Major Protection (Veil of Blades)
            [36490] = true, -- Veil of Blades (Veil of Blades)
            [36487] = true, -- Veil of Blades (Veil of Blades)

            [60400] = true, -- Caused Damage with Strife (Strife -- All Morphs)
            [60401] = true, -- Strife Saved Damage (Strife -- All Morphs)
            [33291] = true, -- Strife (Strife)
            [33292] = true, -- Strife (Strife)

            [34838] = true, -- Funnel Health (Funnel Health)
            [34840] = true, -- Funnel Health (Funnel Health)
            [35469] = true, -- Funnel Health (Funnel Health)
            [46181] = true, -- Funnel Health (Funnel Health)
            [34841] = true, -- Funnel Health (Funnel Health)

            [34837] = true, -- Minor Vitality (Swallow Soul)
            [34835] = true, -- Swallow Soul (Swallow Soul)
            [34836] = true, -- Swallow Soul (Swallow Soul)

            [33308] = true, -- Malevolent Offering (Malevolent Offering)
            [108925] = true, -- Malevolent Offering (Malevolent Offering)

            [34721] = true, -- Shrewd Offering (Shrewd Offering)
            [108927] = true, -- Shrewd Offering (Shrewd Offering)

            [34727] = true, -- Healthy Offering (Healthy Offering)
            [108932] = true, -- Healthy Offering (Healthy Offering)
            [108934] = true, -- Minor Mending (Healthy Offering)

            [33326] = true, -- Cripple (Cripple)
            [33329] = true, -- Cripple (Cripple)
            [33333] = true, -- Cripple (Cripple)
            [33327] = true, -- Cripple (Cripple)
            [33328] = true, -- Major Expedition (Cripple)
            [33339] = true, -- Summon Shade (Cripple)

            [36943] = true, -- Debilitate (Debilitate)
            [36950] = true, -- Debilitate (Debilitate)
            [36947] = true, -- Debilitate (Debilitate)
            [36945] = true, -- Debilitate (Debilitate)
            [36946] = true, -- Major Expedition (Debilitate)
            [62196] = true, -- Debilitate (Debilitate)

            [36957] = true, -- Crippling Grasp (Crippling Grasp)
            [36965] = true, -- Crippling Grasp (Crippling Grasp)
            [36960] = true, -- Crippling Grasp (Crippling Grasp)
            [36958] = true, -- Crippling Grasp (Crippling Grasp)
            [36959] = true, -- Major Expedition (Crippling Grasp)
            [36961] = true, -- Crippling Grasp (Crippling Grasp)
            [36963] = true, -- Crippling Grasp (Crippling Grasp)
            [36964] = true, -- Crippling Grasp (Crippling Grasp)

            [33319] = true, -- Siphoning Strikes (Siphoning Strikes)
            [33321] = true, -- Siphoning Strikes (Siphoning Strikes)

            [36908] = true, -- Leeching Strikes (Leeching Strikes)
            [96689] = true, -- Leeching Strikes (Leeching Strikes)
            [96696] = true, -- Leeching Strikes (Leeching Strikes)
            [95895] = true, -- Leeching Strikes (Leeching Strikes)
            [36911] = true, -- Leeching Strikes (Leeching Strikes)
            [36912] = true, -- Leeching Strikes (Leeching Strikes)

            [36935] = true, -- Siphoning Attacks (Siphoning Attacks)
            [96713] = true, -- Siphoning Strikes (Siphoning Attacks)
            [96714] = true, -- Siphoning Strikes (Siphoning Attacks)
            [95908] = true, -- Siphoning Attacks (Siphoning Attacks)
            [36937] = true, -- Siphoning Attacks (Siphoning Attacks)
            [36938] = true, -- Siphoning Attacks (Siphoning Attacks)

            [33316] = true, -- Drain Power (Drain Power)
            [33317] = true, -- Major Brutality (Drain Power)

            [36901] = true, -- Power Extraction (Power Extraction)
            [36903] = true, -- Major Brutality (Power Extraction)

            [36891] = true, -- Sap Essence (Sap Essence)
            [45655] = true, -- Sap Essence (Sap Essence)
            [36894] = true, -- Major Brutality (Sap Essence)
            [62240] = true, -- Major Sorcery (Sap Essence)
            [36898] = true, -- Sap Will (Sap Essence)
            [36899] = true, -- Sap Will (Sap Essence)

            [108814] = true, -- Synergy Damage Bonus (Synergy - Soul Leech)
            [25170] = true, -- Soul Leech (Synergy - Soul Leech)
            [89114] = true, -- Soul Leech (Synergy - Soul Leech)
            [25172] = true, -- Soul Leech (Synergy - Soul Leech)
            [89113] = true, -- Soul Leech Saved Damage (Synergy - Soul Leech)
            [25171] = true, -- Soul Leech (Synergy - Soul Leech)

            [25091] = true, -- Soul Shred (Soul Shred)
            [25863] = true, -- Soul Shred (Soul Shred)
            [25093] = true, -- Soul Shred (Soul Shred)
            [25168] = true, -- Soul Shred (Soul Shred)
            [25169] = true, -- Soul Leech (Soul Shred)

            [35508] = true, -- Soul Siphon (Soul Siphon)
            [35615] = true, -- Soul Siphon (Soul Siphon)
            [63533] = true, -- Major Vitality (Soul Siphon)
            [106133] = true, -- Soul Siphon (Soul Siphon)
            [35614] = true, -- Soul Tether (Soul Siphon)
            [35613] = true, -- Soul Leech (Soul Siphon)

            [35460] = true, -- Soul Tether (Soul Tether)
            [35465] = true, -- Soul Tether (Soul Tether)
            [35466] = true, -- Soul Tether (Soul Tether)
            [36606] = true, -- Soul Tether (Soul Tether)
            [35462] = true, -- Soul Tether Leech (Soul Tether)
            [35463] = true, -- Soul Tether (Soul Tether)
            [35461] = true, -- Soul Leech (Soul Tether)

            --------------------------
            -- SORCERER PASSIVES
            --------------------------

            -- Dark Magic
            [31386] = true, -- Unholy Knowledge (Rank 1)
            [45176] = true, -- Unholy Knowledge (Rank 2)
            [31383] = true, -- Blood Magic (Rank 1)
            [31384] = true, -- Blood Magic
            [45172] = true, -- Blood Magic (Rank 2)
            [45173] = true, -- Blood Magic
            [31378] = true, -- Persistance (Rank 1)
            [108858] = true, -- Persistance Cost Reduction
            [45165] = true, -- Persistance (Rank 2)
            [108862] = true, -- Persistance Cost Reduction
            [31389] = true, -- Exploitation (Rank 1)
            [62319] = true, -- Minor Prophecy
            [45181] = true, -- Exploitation (Rank 2)
            [62320] = true, -- Minor Prophecy

            -- Daedric Summoning
            [31398] = true, -- Rebate (Rank 1)
            [64860] = true, -- Rebate Magic
            [45198] = true, -- Rebate (Rank 2)
            [64861] = true, -- Rebate Magic
            [31396] = true, -- Power Stone (Rank 1)
            [45196] = true, -- Power Stone (Rank 2)
            [31417] = true, -- Daedric Protection (Rank 1)
            [45200] = true, -- Daedric Protection (Rank 2)
            [31412] = true, -- Expert Summoner (Rank 1)
            [31415] = true, -- Expert Summoner
            [45199] = true, -- Expert Summoner (Rank 2)
            [46198] = true, -- Expert Summoner

            -- Storm Calling
            [31419] = true, -- Capacitor (Rank 1)
            [45188] = true, -- Capacitor (Rank 2)
            [31421] = true, -- Energized (Rank 1)
            [45190] = true, -- Energized (Rank 2)
            [31422] = true, -- Implosion (Rank 1)
            [31424] = true, -- Implosion
            [82803] = true, -- Implosion
            [45192] = true, -- Implosion (Rank 2)
            [45194] = true, -- Implosion
            [82806] = true, -- Implosion
            [31425] = true, -- Expert Mage (Rank 1)
            [45195] = true, -- Expert Mage (Rank 2)

            --------------------------
            -- SORCERER ACTIVES
            --------------------------

            [43714] = true, -- Crystal Shard (Crystal Shard)

            [46331] = true, -- Crystal Blast (Crystal Blast)
            [46332] = true, -- Crystal Blast (Crystal Blast)
            [46333] = true, -- Crystal Blast (Crystal Blast)

            [46326] = true, -- Crystal Fragments Passive (Crystal Fragments)
            [46324] = true, -- Crystal Fragments (Crystal Fragments)
            [46327] = true, -- Crystal Fragments Proc (Crystal Fragments)
            [64158] = true, -- Reduced Post Global (Crystal Fragments)
            [64160] = true, -- Crystal Fragments Passive (Crystal Fragments)

            [28025] = true, -- Encase (Encase)
            [43759] = true, -- Encase (Encase)
            [43761] = true, -- Encase (Encase)
            [43760] = true, -- Encase (Encase)

            [28308] = true, -- Shattering Prison (Shattering Prison)
            [43781] = true, -- Encase (Shattering Prison)
            [43782] = true, -- Encase (Shattering Prison)
            [43780] = true, -- Encase (Shattering Prison)
            [28309] = true, -- Shattering Prison (Shattering Prison)

            [24371] = true, -- Rune Prison (Rune Prison)
            [24559] = true, -- Rune Prison (Rune Prison)

            [28311] = true, -- Restraining Prison (Restraining Prison)
            [43793] = true, -- Encase (Restraining Prison)
            [43794] = true, -- Encase (Restraining Prison)
            [43792] = true, -- Encase (Restraining Prison)
            [108833] = true, -- Restraining Stack Count (Restraining Prison)
            [108832] = true, -- Major Vitality (Restraining Prison)

            [24578] = true, -- Rune Cage (Rune Cage)
            [24581] = true, -- Rune Cage (Rune Cage)
            [100118] = true, -- Petrify (Rune Cage)

            [24574] = true, -- Defensive Rune (Defensive Rune)
            [24576] = true, -- Defensive Rune (Defensive Rune)

            [24584] = true, -- Dark Exchange (Dark Exchange)
            [24585] = true, -- Dark Exchange (Dark Exchange)
            [24587] = true, -- Dark Exchange Heal (Dark Exchange)

            [24595] = true, -- Dark Deal (Dark Deal)
            [24596] = true, -- Dark Exchange (Dark Deal)
            [24597] = true, -- Dark Exchange Heal (Dark Deal)

            [24589] = true, -- Dark Conversion (Dark Conversion)
            [24591] = true, -- Dark Exchange (Dark Conversion)
            [24592] = true, -- Dark Exchange Heal (Dark Conversion)

            [24828] = true, -- Daedric Mines (Daedric Mines)
            [24830] = true, -- Daedric Mines (Daedric Mines)
            [24832] = true, -- Daedric Mines (Daedric Mines)
            [24833] = true, -- Daedric Mines (Daedric Mines)
            [25144] = true, -- Daedric Mines (Daedric Mines)
            [24829] = true, -- Daedric Mines (Daedric Mines)
            [27935] = true, -- Daedric Mines (Daedric Mines)

            [24842] = true, -- Daedric Tomb (Daedric Tomb)
            [77437] = true, -- Summon Shade (Daedric Tomb)
            [24847] = true, -- Daedric Mines (Daedric Tomb)
            [24846] = true, -- Daedric Mines (Daedric Tomb)
            [24844] = true, -- Daedric Mines (Daedric Tomb)
            [28466] = true, -- Daedric Mines (Daedric Tomb)
            [24843] = true, -- Daedric Tomb (Daedric Tomb)
            [28452] = true, -- Daedric Tomb (Daedric Tomb)

            [24834] = true, -- Daedric Minefield (Daedric Minefield)
            [25158] = true, -- Daedric Mines (Daedric Minefield)
            [25157] = true, -- Daedric Mines (Daedric Minefield)
            [25159] = true, -- Daedric Mines (Daedric Minefield)
            [25160] = true, -- Daedric Mines (Daedric Minefield)
            [25162] = true, -- Daedric Mines (Daedric Minefield)
            [25155] = true, -- Daedric Mines (Daedric Minefield)
            [25161] = true, -- Daedric Minefield (Daedric Minefield)
            [28454] = true, -- Daedric Minefield (Daedric Minefield)

            [27706] = true, -- Negate Magic (Negate Magic)
            [29824] = true, -- Negate Magic (Negate Magic)
            [47147] = true, -- Negate Magic (Negate Magic)

            [28341] = true, -- Suppression Field (Suppression Field)
            [47160] = true, -- Suppression Field (Suppression Field)
            [47159] = true, -- Suppression Field (Suppression Field)
            [80435] = true, -- Suppression Field (Suppression Field)

            [28348] = true, -- Absorption Field (Absorption Field)
            [47168] = true, -- Absorption Field (Absorption Field)
            [47167] = true, -- Absorption Field (Absorption Field)
            [80405] = true, -- Absorption Field (Absorption Field)

            [27287] = true, -- Birth Unstable Familiar (Summon Unstable Familiar - All Ranks)
            [29536] = true, -- Familiar Set Target (Summon Unstable Familiar - All Ranks)
            [43963] = true, -- Pet Bonus Threat (Summon Unstable Familiar - All Ranks)
            [27850] = true, -- Familiar Melee (Summon Unstable Familiar + Summon Volatile Familiar)

            [23304] = true, -- Summon Unstable Familiar (Summon Unstable Familiar)
            [23617] = true, -- Unstable Familiar (Summon Unstable Familiar)
            [108840] = true, -- Summon Unstable Familiar (Summon Unstable Familiar)
            [108842] = true, -- Volatile Familiar Damage Pulsi (Summon Unstable Familiar)
            [108843] = true, -- Volatile Familiar (Summon Unstable Familiar)
            [108841] = true, -- Volatile Familiar FX (Summon Unstable Familiar)
            [108844] = true, -- Familiar Damage Pulse (Summon Unstable Familiar)

            [23319] = true, -- Summon Unstable Clannfear (Summon Unstable Clannfear)
            [23644] = true, -- Unstable Clannfear (Summon Unstable Clannfear)
            [29528] = true, -- Claw (Summon Unstable Clannfear)
            [29529] = true, -- Tail Spike (Summon Unstable Clannfear)
            [62201] = true, -- Taunt (Summon Unstable Clannfear)
            [63795] = true, -- Taunt (Summon Unstable Clannfear)
            [63794] = true, -- Taunt (Summon Unstable Clannfear)
            [76076] = true, -- Summon Unstable Clannfear (Summon Unstable Clannfear)
            [76078] = true, -- Clannfear Heal (Summon Unstable Clannfear)
            [77175] = true, -- Clannfear Heal (Summon Unstable Clannfear)

            [23316] = true, -- Summon Volatile Familiar (Summon Volatile Familiar)
            [23641] = true, -- Volatile Familiar (Summon Volatile Familiar)
            [77182] = true, -- Summon Volatile Familiar (Summon Volatile Familiar)
            [77187] = true, -- Volatile Familiar Damage Pulsi (Summon Volatile Familiar)
            [88933] = true, -- Volatile Familiar (Summon Volatile Familiar)
            [77246] = true, -- Volatile Familiar FX (Summon Volatile Familiar)
            [77186] = true, -- Familiar Damage Pulse (Summon Volatile Familiar)
            [77243] = true, -- Volatile Familiar Stun (Summon Volatile Familiar)

            [24326] = true, -- Daedric Curse (Daedric Curse)
            [28169] = true, -- Daedric Curse (Daedric Curse)
            [24327] = true, -- Daedric Curse (Daedric Curse)
            [44507] = true, -- Daedric Curse (Daedric Curse)

            [24328] = true, -- Daedric Prey (Daedric Prey)
            [28175] = true, -- Daedric Prey (Daedric Prey)
            [24329] = true, -- Daedric Prey (Daedric Prey)
            [44511] = true, -- Daedric Prey (Daedric Prey)

            [24330] = true, -- Haunting Curse (Haunting Curse)
            [28176] = true, -- Haunting Curse (Haunting Curse)
            [24331] = true, -- Haunting Curse (Haunting Curse)
            [44515] = true, -- Haunting Curse (Haunting Curse)
            [89491] = true, -- Haunting Curse (Haunting Curse)
            [89492] = true, -- Haunting Curse (Haunting Curse)

            [25599] = true, -- Lightning Prey (Summon Winged Twilight + Summon Twilight Matriarch)
            [25686] = true, -- Summon Storm Atronach Death Ov (Summon Winged Twilight + Summon Twilight Matriarch)
            [24617] = true, -- Zap (Summon Winged Twilight - All Morphs)
            [28027] = true, -- Kick (Summon Winged Twilight - All Morphs)

            [24613] = true, -- Summon Winged Twilight (Summon Winged Twilight)
            [24739] = true, -- Summon Winged Twilight (Summon Winged Twilight)
            [108845] = true, -- Winged Twilight Restore (Summon Winged Twilight)
            [108847] = true, -- Summon Twilight Matriarch (Summon Winged Twilight)
            [108846] = true, -- Summon Twilight Matriarch (Summon Winged Twilight)

            [24639] = true, -- Summon Twilight Matriarch (Summon Twilight Matriarch)
            [24742] = true, -- Twilight Matriarch (Summon Twilight Matriarch)
            [77369] = true, -- Twilight Matriarch Restore (Summon Twilight Matriarch)
            [77407] = true, -- Summon Twilight Matriarch (Summon Twilight Matriarch)
            [77371] = true, -- Summon Twilight Matriarch (Summon Twilight Matriarch)

            [24636] = true, -- Summon Twilight Tormentor (Summon Twilight Tormentor)
            [24741] = true, -- Twilight Tormentor (Summon Twilight Tormentor)
            [36735] = true, -- Resto Twilight (Summon Twilight Tormentor)
            [77140] = true, -- Summon Twilight Tormentor (Summon Twilight Tormentor)
            [77354] = true, -- Summon Twilight Tormentor (Summon Twilight Tormentor)
            [88937] = true, -- Twilight Tormentor (Summon Twilight Tormentor)
            [77368] = true, -- Twilight Tormentor Damage Bonu (Summon Twilight Tormentor)

            [28418] = true, -- Conjured Ward (Conjured Ward)
            [28421] = true, -- Conjured Ward (Conjured Ward)

            [29492] = true, -- Hardened Ward (Hardened Ward)
            [29489] = true, -- Hardened Ward (Hardened Ward)
            [29490] = true, -- Hardened Ward (Hardened Ward)

            [29482] = true, -- Empowered Ward (Empowered Ward)
            [29483] = true, -- Empowered Ward (Empowered Ward)
            [77418] = true, -- Minor Intellect (Empowered Ward)

            [108849] = true, -- Bound Armor Passive (Bound Armor)
            [24158] = true, -- Bound Armor (Bound Armor)

            [108853] = true, -- Bound Armaments Passive (Bound Armaments)
            [24165] = true, -- Bound Armaments (Bound Armaments)

            [108855] = true, -- Bound Aegis Passive (Bound Aegis)
            [24163] = true, -- Bound Aegis (Bound Aegis)

            [48078] = true, -- Major Berserk (Summon Storm Atronach - Charged Lightning Synergy)
            [62195] = true, -- Major Berserk (Summon Storm Atronach - Charged Lightning Synergy)
            [48085] = true, -- Major Berserk (Summon Storm Atronach - Charged Lightning Synergy)

            [25312] = true, -- Storm Atronach (Summon Storm Atronach - All Morphs)
            [31409] = true, -- Killed Trigger (Summon Storm Atronach - All Morphs)
            [77454] = true, -- Break Free (Atronach) (Summon Storm Atronach - All Morphs)
            [70122] = true, -- Change Target (Summon Storm Atronach - All Morphs)
            [77456] = true, -- Guard CC Break Timer (Summon Storm Atronach - All Morphs)
            [77457] = true, -- Guard CC Break Anim (Summon Storm Atronach - All Morphs)
            [77455] = true, -- Guard CC Immunity (Summon Storm Atronach - All Morphs)
            [23428] = true, -- Atronach Zap (Summon Storm Atronach - All Morphs)
            [26098] = true, -- Zap Snare (Summon Storm Atronach - All Morphs)

            [23634] = true, -- Summon Storm Atronach (Summon Storm Atronach)
            [23639] = true, -- Summon Storm Atronach (Summon Storm Atronach)
            [23636] = true, -- Summon Storm Atronach (Summon Storm Atronach)
            [80459] = true, -- Summon Storm Atronach (Summon Storm Atronach)
            [102309] = true, -- Atronach Synergy Anchor (Summon Storm Atronach)
            [102310] = true, -- Charged Lightning (Summon Storm Atronach)
            [23659] = true, -- Summon Storm Atronach (Summon Storm Atronach)
            [23658] = true, -- Summon Storm Atronach (Summon Storm Atronach)

            [23492] = true, -- Greater Storm Atronach (Greater Storm Atronach)
            [23663] = true, -- Greater Storm Atronach (Greater Storm Atronach)
            [23665] = true, -- Greater Storm Atronach (Greater Storm Atronach)
            [80463] = true, -- Summon Storm Atronach (Greater Storm Atronach)
            [102322] = true, -- Atronach Synergy Anchor (Greater Storm Atronach)
            [102321] = true, -- Charged Lightning (Greater Storm Atronach)
            [23664] = true, -- Greater Storm Atronach (Greater Storm Atronach)
            [23662] = true, -- Greater Storm Atronach (Greater Storm Atronach)

            [23495] = true, -- Summon Charged Atronach (Summon Charged Atronach)
            [23669] = true, -- Summon Charged Atronach (Summon Charged Atronach)
            [23668] = true, -- Summon Charged Atronach (Summon Charged Atronach)
            [80468] = true, -- Summon Storm Atronach (Summon Charged Atronach)
            [102330] = true, -- Atronach Synergy Anchor (Summon Charged Atronach)
            [102329] = true, -- Charged Lightning (Summon Charged Atronach)
            [23667] = true, -- Summon Charged Atronach (Summon Charged Atronach)
            [23666] = true, -- Summon Charged Atronach (Summon Charged Atronach)

            [29806] = true, -- Lightning Strike (Summon Charged Atronach)
            [43764] = true, -- Lightning Strike (Summon Charged Atronach)
            [43767] = true, -- Lightning Strike (Summon Charged Atronach)
            [43765] = true, -- Lightning Strike (Summon Charged Atronach)
            [43766] = true, -- Lightning Strike (Summon Charged Atronach)
            [29807] = true, -- AoE (Summon Charged Atronach)
            [29809] = true, -- Lightning Strike (Summon Charged Atronach)
            [29808] = true, -- AoE (Summon Charged Atronach)
            [29811] = true, -- AoE (Summon Charged Atronach)
            [29812] = true, -- AoE (Summon Charged Atronach)
            [29810] = true, -- AoE (Summon Charged Atronach)

            [18718] = true, -- Mages' Fury (Mages' Fury)
            [18746] = true, -- Mages' Fury (Mages' Fury)
            [18719] = true, -- Mages' Fury Explosion (Mages' Fury)
            [44483] = true, -- Mages' Fury Explosion (Mages' Fury)

            [19123] = true, -- Mages' Wrath (Mages' Wrath)
            [19125] = true, -- Mages' Wrath (Mages' Wrath)
            [19128] = true, -- Mages' Wrath Explosion (Mages' Wrath)
            [44487] = true, -- Mages' Wrath Explosion (Mages' Wrath)

            [19121] = true, -- Endless Fury Regeneration (Endless Fury)
            [19109] = true, -- Endless Fury (Endless Fury)
            [19118] = true, -- Endless Fury (Endless Fury)
            [24925] = true, -- Endless fury dummy (Endless Fury)
            [24923] = true, -- Endless Fury Regeneration (Endless Fury)
            [19120] = true, -- Endless Fury Explosion (Endless Fury)
            [44491] = true, -- Endless Fury Explosion (Endless Fury)

            [23210] = true, -- Lightning Form (Lightning Form)
            [62159] = true, -- Major Resolve (Lightning Form)
            [62160] = true, -- Major Ward (Lightning Form)
            [23211] = true, -- Lightning Form (Lightning Form)

            [23231] = true, -- Hurricane (Hurricane)
            [62167] = true, -- Major Ward (Hurricane)
            [62168] = true, -- Major Resolve (Hurricane)
            [82797] = true, -- Minor Expedition (Hurricane)
            [80485] = true, -- Hurricane Bonus Damage Stacks (Hurricane)
            [80484] = true, -- Hurricane Bonus Radius Stacks (Hurricane)
            [23232] = true, -- Hurricane (Hurricane)

            [23213] = true, -- Boundless Storm (Boundless Storm)
            [23216] = true, -- Major Expedition (Boundless Storm)
            [62175] = true, -- Major Resolve (Boundless Storm)
            [62176] = true, -- Major Ward (Boundless Storm)
            [23214] = true, -- Boundless Storm (Boundless Storm)

            [23196] = true, -- Conduit (Lightning Splash - Conduit Synergy)
            [108607] = true, -- Synergy Damage Bonus (Lightning Splash - Conduit Synergy)
            [43769] = true, -- Conduit Synergy Cooldown (Lightning Splash - Conduit Synergy)
            [65711] = true, -- Only 1 Lightning Splash (Lightning Splash - All Morphs)

            [23182] = true, -- Lightning Splash (Lightning Splash)
            [23195] = true, -- Lightning Splash (Lightning Splash)
            [23194] = true, -- Lightning Splash (Lightning Splash)
            [23189] = true, -- Lightning Splash (Lightning Splash)

            [23200] = true, -- Liquid Lightning (Liquid Lightning)
            [23204] = true, -- Lightning Splash (Liquid Lightning)
            [23203] = true, -- Lightning Splash (Liquid Lightning)
            [23202] = true, -- Liquid Lightning (Liquid Lightning)

            [23205] = true, -- Lightning Flood (Lightning Flood)
            [23209] = true, -- Lightning Splash (Lightning Flood)
            [23206] = true, -- Lightning Splash (Lightning Flood)
            [23208] = true, -- Lightning Flood (Lightning Flood)

            [23670] = true, -- Surge (Surge)
            [23673] = true, -- Major Brutality (Surge)
            [64492] = true, -- Surge (Surge)
            [96453] = true, -- Surge (Surge)

            [23674] = true, -- Power Surge (Power Surge)
            [62062] = true, -- Major Sorcery (Power Surge)
            [62060] = true, -- Major Brutality (Power Surge)
            [64500] = true, -- Power Surge (Power Surge)
            [96457] = true, -- Power Surge (Power Surge)

            [23678] = true, -- Critical Surge (Critical Surge)
            [62147] = true, -- Major Brutality (Critical Surge)
            [23682] = true, -- Surge Heal (Critical Surge)
            [96461] = true, -- Surge Heal (Critical Surge)

            [51392] = true, -- Bolt Escape Fatigue (Bolt Escape - All Morphs)
            [23234] = true, -- Bolt Escape (Bolt Escape)
            [23235] = true, -- Bolt Escape (Bolt Escape)

            [23236] = true, -- Streak (Streak)
            [23239] = true, -- Streak (Streak)
            [28482] = true, -- Streak (Streak)

            [23277] = true, -- Ball of Lightning (Ball of Lightning)
            [23283] = true, -- Summoned Ball of Lightning (Ball of Lightning)
            [23284] = true, -- Intercept (Ball of Lightning)
            [23279] = true, -- Ball of Lightning (Ball of Lightning)
            [23278] = true, -- Ball of Lightning (Ball of Lightning)
            [70518] = true, -- 1 Orb Up (Ball of Lightning)

            [26111] = true, -- Shock Dummy (Overload - Light Attack)
            [24792] = true, -- Overload Light Attack (Overload - Light Attack)
            [24794] = true, -- Overload Heavy Attack (Overload - Heavy Attack)
            [27787] = true, -- Controlled Fury Cost (Overload - Heavy Attack)
            [24798] = true, -- Overload Heavy Attack (Overload - Heavy Attack)
            [24785] = true, -- Overload (Overload)
            [24799] = true, -- Overload End (Overload)

            [24806] = true, -- Power Overload (Power Overload)
            [24808] = true, -- Overload End (Power Overload)
            [24810] = true, -- Power Overload Heavy Attack (Power Overload - Heavy Attack)
            [28433] = true, -- Controlled Fury Cost (Power Overload - Heavy Attack)
            [24811] = true, -- Power Overload Heavy Attack (Power Overload - Heavy Attack)

            [24804] = true, -- Energy Overload (Energy Overload)
            [24805] = true, -- Overload End (Energy Overload)
            [29740] = true, -- Energy Overload (Energy Overload)

            --------------------------
            -- TEMPLAR PASSIVES
            --------------------------

            -- Aedric Spear
            [31698] = true, -- Piercing Spear (Rank 1)
            [44046] = true, -- Piercing Spear (Rank 2)
            [31708] = true, -- Spear Wall (Rank 1)
            [44721] = true, -- Spear Wall (Rank 2)
            [31718] = true, -- Burning Light (Rank 1)
            [31720] = true, -- Burning Light
            [80153] = true, -- Burning Light
            [44730] = true, -- Burning Light (Rank 2)
            [44731] = true, -- Burning Light
            [80170] = true, -- Burning Light
            [31565] = true, -- Balanced Warrior (Rank 1)
            [44732] = true, -- Balanced Warrior (Rank 2)

            -- Dawn's Wrath
            [31739] = true, -- Enduring Rays (Rank 1)
            [45214] = true, -- Enduring Rays (Rank 2)
            [31744] = true, -- Prism (Rank 1)
            [31746] = true, -- Prism
            [45216] = true, -- Prism (Rank 2)
            [45217] = true, -- Prism
            [31743] = true, -- Illuminate (Rank 1)
            [62799] = true, -- Minor Sorcery
            [45215] = true, -- Illuminate (Rank 2)
            [62800] = true, -- Minor Sorcery
            [31721] = true, -- Restoring Spirit (Rank 1)
            [45212] = true, -- Restoring Spirit (Rank 2)

            -- Restoring Light
            [31751] = true, -- Mending (Rank 1)
            [45206] = true, -- Mending (Rank 2)
            [31757] = true, -- Sacred Ground (Rank 1)
            [45207] = true, -- Sacred Ground (Rank 2)
            [31759] = true, -- Major Mending
            [77082] = true, -- Major Mending
            [80195] = true, -- Sacred Ground
            [80230] = true, -- Sacred Ground
            [80261] = true, -- Sacred Ground
            [31760] = true, -- Light Weaver (Rank 1)
            [45208] = true, -- Light Weaver (Rank 2)
            [52703] = true, -- Light Weaver Ultimate
            [31747] = true, -- Master Ritualist (Rank 1)
            [31748] = true, -- Soul Trap
            [45202] = true, -- Master Ritualist (Rank 2)
            [45203] = true, -- Soul Trap

            --------------------------
            -- TEMPLAR ACTIVES
            --------------------------

            [26114] = true, -- Puncturing Strikes (Puncturing Strikes - Rank 1)
            [102904] = true, -- Puncturing Strikes (Puncturing Strikes - Rank 1)
            [26116] = true, -- Puncturing Strikes (Puncturing Strikes - Rank 1)
            [44426] = true, -- Puncturing Strikes (Puncturing Strikes - Rank 1)
            [76908] = true, -- Puncturing Strikes (Puncturing Strikes - Rank 1)

            [26792] = true, -- Biting Jabs (Biting Jabs - Rank 1)
            [26795] = true, -- Major Savagery (Biting Jabs - Rank 1)
            [103212] = true, -- Biting Jabs (Biting Jabs - Rank 1)
            [26794] = true, -- Biting Jabs (Biting Jabs - Rank 1)
            [44432] = true, -- Biting Jabs (Biting Jabs - Rank 1)
            [76912] = true, -- Biting Jabs (Biting Jabs - Rank 1)

            [55219] = true, -- Puncturing Sweeps (Puncturing Sweep - Rank 1)
            [26797] = true, -- Puncturing Sweep (Puncturing Sweep - Rank 1)
            [103310] = true, -- Puncturing Sweep (Puncturing Sweep - Rank 1)
            [55183] = true, -- Puncturing Sweep Healing (Puncturing Sweep - Rank 1)
            [26799] = true, -- Puncturing Sweep (Puncturing Sweep - Rank 1)
            [44436] = true, -- Puncturing Sweep (Puncturing Sweep - Rank 1)
            [76916] = true, -- Puncturing Sweep (Puncturing Sweep - Rank 1)

            [26158] = true, -- Piercing Javelin (Piercing Javelin - Rank 1)
            [37409] = true, -- Piercing Javelin (Piercing Javelin - Rank 1)
            [26162] = true, -- Piercing Javelin (Piercing Javelin - Rank 1)

            [26802] = true, -- Aurora Javelin Damage Bonus (Aurora Javelin - Rank 1)
            [26800] = true, -- Aurora Javelin (Aurora Javelin - Rank 1)
            [37414] = true, -- Piercing Javelin (Aurora Javelin - Rank 1)
            [26801] = true, -- Aurora Javelin (Aurora Javelin - Rank 1)

            [26804] = true, -- Binding Javelin (Binding Javelin - Rank 1)
            [32099] = true, -- Binding Javelin (Binding Javelin - Rank 1)
            [26805] = true, -- Binding Javelin (Binding Javelin - Rank 1)

            [22149] = true, -- Focused Charge (Focused Charge - Rank 1)
            [22155] = true, -- Focused Charge (Focused Charge - Rank 1)
            [26508] = true, -- Charge (Focused Charge - Rank 1)
            [49204] = true, -- Focused Charge (Focused Charge - Rank 1)
            [49205] = true, -- Focused Charge (Focused Charge - Rank 1)

            [22161] = true, -- Explosive Charge (Explosive Charge - Rank 1)
            [43585] = true, -- Explosive Charge AoE Dummy (Explosive Charge
            [22165] = true, -- Explosive Charge (Explosive Charge - Rank 1)
            [26522] = true, -- Charge (Explosive Charge - Rank 1)
            [49212] = true, -- Explosive Charge (Explosive Charge - Rank 1)
            [49213] = true, -- Explosive Charge (Explosive Charge - Rank 1)

            [15540] = true, -- Toppling Charge (Toppling Charge - Rank 1)
            [15544] = true, -- Toppling Charge (Toppling Charge - Rank 1)
            [15546] = true, -- Toppling Charge (Toppling Charge - Rank 1)
            [26518] = true, -- Charge (Toppling Charge - Rank 1)
            [44422] = true, -- Toppling Charge (Toppling Charge - Rank 1)

            [108924] = true, -- Synergy Damage Bonus (Spear Shards - All Ranks)
            [94973] = true, -- Blessed Shards (Spear Shards - All Ranks)
            [94974] = true, -- Blessed Shards (Spear Shards - All Ranks)
            [48052] = true, -- Spear Shards / Necrotic Orb CD (Spear Shards - All Ranks)
            [26188] = true, -- Spear Shards (Spear Shards - Rank 1)
            [26190] = true, -- Spear Shards (Spear Shards - Rank 1)
            [95932] = true, -- Spear Shards (Spear Shards - Rank 1)
            [95933] = true, -- Spear Shards (Spear Shards - Rank 1)
            [26189] = true, -- Spear Shards (Spear Shards - Rank 1)
            [26191] = true, -- Spear Shards (Spear Shards - Rank 1)
            [26827] = true, -- Spear Shards (Spear Shards - Rank 1)
            [26192] = true, -- Spear Shards (Spear Shards - Rank 1)
            [95931] = true, -- Spear Shards (Spear Shards - Rank 1)

            [108821] = true, -- Synergy Damage Bonus (Luminous Shards - All Ranks)
            [95928] = true, -- Holy Shards (Luminous Shards - All Ranks)
            [95927] = true, -- Holy Shards (Luminous Shards - All Ranks)
            [95926] = true, -- Holy Shards (Luminous Shards - All Ranks)
            [95925] = true, -- Holy Shards (Luminous Shards - All Ranks)
            [95924] = true, -- Spear Shards / Necrotic Orb CD (Luminous Shards - All Ranks)
            [26858] = true, -- Luminous Shards (Luminous Shards - Rank 1)
            [26860] = true, -- Luminous Shards (Luminous Shards - Rank 1)
            [95956] = true, -- Luminous Shards (Luminous Shards - Rank 1)
            [95957] = true, -- Luminous Shards (Luminous Shards - Rank 1)
            [26865] = true, -- Luminous Shards (Luminous Shards - Rank 1)
            [26861] = true, -- Luminous Shards (Luminous Shards - Rank 1)
            [26863] = true, -- Luminous Shards (Luminous Shards - Rank 1)
            [26859] = true, -- Luminous Shards (Luminous Shards - Rank 1)
            [95955] = true, -- Luminous Shards (Luminous Shards - Rank 1)

            [26869] = true, -- Blazing Spear (Blazing Spear - Rank 1)
            [26878] = true, -- Blazing Spear (Blazing Spear - Rank 1)
            [44445] = true, -- Blazing Spear (Blazing Spear - Rank 1)
            [26880] = true, -- Blazing Spear (Blazing Spear - Rank 1)
            [26877] = true, -- Blazing Spear (Blazing Spear - Rank 1)
            [26872] = true, -- Blazing Spear (Blazing Spear - Rank 1)
            [26874] = true, -- Blazing Spear (Blazing Spear - Rank 1)
            [26871] = true, -- Blazing Spear (Blazing Spear - Rank 1)
            [26879] = true, -- Blazing Spear (Blazing Spear - Rank 1)

            [22178] = true, -- Sun Shield (Sun Shield - Rank 1)
            [22179] = true, -- Sun Shield (Sun Shield - Rank 1)
            [26724] = true, -- Sun Shield Hit Bonus (Sun Shield - Rank 1)

            [22182] = true, -- Radiant Ward (Radiant Ward - Rank 1)
            [22183] = true, -- Radiant Ward (Radiant Ward - Rank 1)
            [26732] = true, -- Sun Shield Hit Bonus (Radiant Ward - Rank 1)

            [22180] = true, -- Blazing Shield (Blazing Shield - Rank 1)
            [49091] = true, -- Blazing Shield (Blazing Shield - Rank 1)
            [49090] = true, -- Sun Shield Hit Bonus (Blazing Shield - Rank 1)
            [22184] = true, -- Blazing Shield (Blazing Shield - Rank 1)
            [60531] = true, -- Backlash (Blazing Shield - Rank 1)
            [22181] = true, -- Blazing Shield (Blazing Shield - Rank 1)

            [22138] = true, -- Radial Sweep (Radial Sweep - Rank 1)
            [62593] = true, -- Radial Sweep (Radial Sweep - Rank 1)
            [62550] = true, -- Radial Sweep (Radial Sweep - Rank 1)

            [22144] = true, -- Empowering Sweep (Empowering Sweep - Rank 1)
            [22146] = true, -- Empowering Sweep (Empowering Sweep - Rank 1)
            [22147] = true, -- Empowering Sweep (Empowering Sweep - Rank 1)
            [55214] = true, -- Empowering Sweep (Empowering Sweep - Rank 1)
            [62599] = true, -- Radial Sweep (Empowering Sweep - Rank 1)
            [62598] = true, -- Radial Sweep (Empowering Sweep - Rank 1)

            [22139] = true, -- Crescent Sweep (Crescent Sweep - Rank 1)
            [22143] = true, -- Crescent Sweep (Crescent Sweep - Rank 1)
            [62607] = true, -- Radial Sweep (Crescent Sweep - Rank 1)
            [62606] = true, -- Radial Sweep (Crescent Sweep - Rank 1)

            [21726] = true, -- Sun Fire (Sun Fire)
            [21727] = true, -- Sun Fire (Sun Fire)
            [21728] = true, -- Sun Fire (Sun Fire)
            [62747] = true, -- Major Prophecy (Sun Fire)

            [21729] = true, -- Vampire's Bane (Vampire's Bane - Rank 1)
            [21730] = true, -- Vampire's Bane (Vampire's Bane - Rank 1)
            [21731] = true, -- Vampire's Bane (Vampire's Bane - Rank 1)
            [62751] = true, -- Major Prophecy (Vampire's Bane - Rank 1)

            [21732] = true, -- Reflective Light (Reflective Light - Rank 1)
            [21733] = true, -- Reflective Light (Reflective Light - Rank 1)
            [21734] = true, -- Reflective Light (Reflective Light - Rank 1)
            [62755] = true, -- Major Prophecy (Reflective Light - Rank 1)

            [22057] = true, -- Solar Flare (Solar Flare)
            [109418] = true, -- Empower (Solar Flare)

            [22110] = true, -- Dark Flare (Dark Flare)
            [63008] = true, -- Dark Flare Trauma (Dark Flare)
            [24686] = true, -- Major Defile (Dark Flare)
            [109419] = true, -- Empower (Dark Flare)

            [22095] = true, -- Solar Barrage (Solar Barrage)
            [100223] = true, -- Solar Barrage (Solar Barrage)
            [100218] = true, -- Solar Barrage (Solar Barrage)
            [109420] = true, -- Empower (Solar Barrage)

            [21761] = true, -- Backlash (Backlash - Rank 1)
            [22643] = true, -- Backlash D (Backlash - Rank 1)
            [89821] = true, -- Backlash (Backlash - Rank 1)
            [26411] = true, -- Backlash (Backlash - Rank 1)

            [21765] = true, -- Purifying Light (Purifying Light - Rank 1)
            [25802] = true, -- Purifying Light (Purifying Light - Rank 1)
            [89825] = true, -- Purifying Light (Purifying Light - Rank 1)
            [27544] = true, -- Purifying Light (Purifying Light - Rank 1)
            [68581] = true, -- Purifying Light Tick (Purifying Light - Rank 1)
            [69168] = true, -- Purifying Light Heal FX (Purifying Light - Rank 1)
            [21908] = true, -- Purifying Light (Purifying Light - Rank 1)

            [21763] = true, -- Power of the Light (Power of the Light - Rank 1)
            [64144] = true, -- Minor Fracture (Power of the Light - Rank 1)
            [68588] = true, -- Minor Breach (Power of the Light - Rank 1)
            [25799] = true, -- Power of the Light (Power of the Light - Rank 1)
            [89828] = true, -- Power of the Light (Power of the Light - Rank 1)
            [27567] = true, -- Power of the Light (Power of the Light - Rank 1)

            [21776] = true, -- Eclipse (Eclipse - Rank 1)
            [68657] = true, -- Eclipse (Eclipse - Rank 1)

            [22006] = true, -- Total Dark (Total Dark - Rank 1)
            [63083] = true, -- Total Dark (Total Dark - Rank 1)
            [68729] = true, -- Total Dark (Total Dark - Rank 1)

            [22004] = true, -- Unstable Core (Unstable Core - Rank 1)
            [100211] = true, -- Eclipse Trigger (Unstable Core - Rank 1)
            [100210] = true, -- Eclipse (Unstable Core - Rank 1)
            [22005] = true, -- Unstable Core (Unstable Core - Rank 1)

            [63029] = true, -- Radiant Destruction (Radiant Destruction - Rank 1)
            [63952] = true, -- Radiant Destruction (Radiant Destruction - Rank 1)

            [69119] = true, -- Radiant Test! (Radiant Glory - Rank 1)
            [63044] = true, -- Radiant Glory (Radiant Glory - Rank 1)
            [69118] = true, -- Radiant Glory Heal (Radiant Glory - Rank 1)
            [63956] = true, -- Radiant Glory (Radiant Glory - Rank 1)

            [63046] =  true, -- Radiant Oppression (Radiant Oppression - Rank 1)
            [104549] =  true, -- Radiant Oppression (Radiant Oppression - Rank 1)
            [63961] =  true, -- Radiant Oppression (Radiant Oppression - Rank 1)

            [108822] = true, -- Synergy Damage Bonus (Nova - Supernova Synergy)
            [48939] = true, -- Supernova (Nova - Supernova Synergy)
            [31540] = true, -- Supernova (Nova - Supernova Synergy)
            [31562] = true, -- Supernova (Nova - Supernova Synergy)
            [102770] = true, -- Supernova Area Effect (Nova - Supernova Synergy)

            [21752] = true, -- Nova (Nova - Rank 1)
            [21995] = true, -- Nova (Nova - Rank 1)
            [21976] = true, -- Nova (Nova - Rank 1)
            [21753] = true, -- Nova (Nova - Rank 1)
            [21754] = true, -- Nova (Nova - Rank 1)
            [102755] = true, -- Supernova Synergy Anchor (Nova - Rank 1)
            [31537] = true, -- Super Nova (Nova - Rank 1)

            [108823] = true, -- Synergy Damage Bonus (Solar Prison - All Ranks)
            [48938] = true, -- Gravity Crush (Solar Prison - All Ranks)
            [31603] = true, -- Gravity Crush (Solar Prison - All Ranks)
            [31604] = true, -- Gravity Crush (Solar Prison - All Ranks)
            [34443] = true, -- Gravity Crush (Solar Prison - All Ranks)
            [102782] = true, -- Gravity Crush (Solar Prison - All Ranks)

            [21755] = true, -- Solar Prison (Solar Prison - Rank 1)
            [22002] = true, -- Solar Prison (Solar Prison - Rank 1)
            [22003] = true, -- Solar Prison (Solar Prison - Rank 1)
            [21756] = true, -- Solar Prison (Solar Prison - Rank 1)
            [21757] = true, -- Solar Prison (Solar Prison - Rank 1)
            [102780] = true, -- Supernova Synergy Anchor (Solar Prison - Rank 1)
            [31598] = true, -- Super Nova (Solar Prison - Rank 1)

            [21758] = true, -- Solar Disturbance (Solar Disturbance - Rank 1)
            [22000] = true, -- Solar Disturbance (Solar Disturbance - Rank 1)
            [22001] = true, -- Solar Disturbance (Solar Disturbance - Rank 1)
            [21759] = true, -- Solar Disturbance (Solar Disturbance - Rank 1)
            [21760] = true, -- Solar Disturbance (Solar Disturbance - Rank 1)
            [24307] = true, -- Solar Disturbance Snare (Solar Disturbance - Rank 1)
            [102776] = true, -- Supernova Synergy Anchor (Solar Disturbance - Rank 1)
            [31597] = true, -- Super Nova (Solar Disturbance - Rank 1)

            [22250] = true, -- Rushed Ceremony (Rushed Ceremony - Rank 1)

            [22253] = true, -- Honor the Dead (Honor the Dead - Rank 1)
            [35632] = true, -- Honor the Dead (Honor the Dead - Rank 1)

            [22256] = true, -- Breath of Life (Breath of Life - Rank 1)
            [44391] = true, -- Breath of Life (Breath of Life - Rank 1)

            [22304] = true, -- Healing Ritual (Healing Ritual - Rank 1)
            [22307] = true, -- Healing Ritual (Healing Ritual - Rank 1)

            [22327] = true, -- Ritual of Rebirth (Ritual of Rebirth - Rank 1)
            [22331] = true, -- Ritual of Rebirth (Ritual of Rebirth - Rank 1)
            [88456] = true, -- Ritual of Rebirth (Ritual of Rebirth - Rank 1)

            [22314] = true, -- Hasty Prayer (Hasty Prayer)
            [22318] = true, -- Hasty Prayer (Hasty Prayer)
            [108935] = true, -- Minor Expedition (Hasty Prayer)

            [26207] = true, -- Restoring Aura Passive (Restoring Aura - All Morphs)
            [26213] = true, -- Minor Fortitude (Restoring Aura - All Morphs)
            [26216] = true, -- Minor Intellect (Restoring Aura - All Morphs)
            [26215] = true, -- Minor Endurance (Restoring Aura - All Morphs)
            [26209] = true, -- Restoring Aura (Restoring Aura - Rank 1)
            [26220] = true, -- Minor Magickasteal (Restoring Aura - Rank 1)
            [88472] = true, -- Minor Magickasteal (Restoring Aura - Rank 1)

            [26807] = true, -- Radiant Aura (Radiant Aura - Rank 1)
            [26809] = true, -- Minor Magickasteal (Radiant Aura - Rank 1)
            [88486] = true, -- Minor Magickasteal (Radiant Aura - Rank 1)

            [26821] = true, -- Repentance (Repentance - Rank 1)
            [34366] = true, -- Repentance (Repentance - Rank 1)
            [26823] = true, -- Repentance Magicka Restore (Repentance - Rank 1)
            [26824] = true, -- Repentance Heal (Repentance - Rank 1)

            [108824] = true, -- Synergy Damage Bonus (Cleansing Ritual - Purify Synergy)
            [22270] = true, -- Purify (Cleansing Ritual - Purify Synergy)
            [44013] = true, -- Purify (Cleansing Ritual - Purify Synergy)
            [22265] = true, -- Cleansing Ritual (Cleansing Ritual - Rank 1)
            [26286] = true, -- Healing Ritual (Cleansing Ritual - Rank 1)
            [26290] = true, -- Clensing Ritual Dummy (Cleansing Ritual - Rank 1)
            [26287] = true, -- Healing Ritual (Cleansing Ritual - Rank 1)
            [80540] = true, -- Cleansing Ritual (Cleansing Ritual - Rank 1)
            [26295] = true, -- Purify (Cleansing Ritual - Rank 1)

            [22259] = true, -- Ritual of Retribution (Ritual of Retribution - Rank 1)
            [26298] = true, -- Ritual of Retribution (Ritual of Retribution - Rank 1)
            [80172] = true, -- Ritual of Retribution (Ritual of Retribution - Rank 1)
            [26299] = true, -- Ritual of Retribution (Ritual of Retribution - Rank 1)
            [26301] = true, -- Ritual of Retribution (Ritual of Retribution - Rank 1)
            [80547] = true, -- Ritual of Retribution (Ritual of Retribution - Rank 1)
            [26300] = true, -- Purify (Ritual of Retribution - Rank 1)

            [22262] = true, -- Extended Ritual (Extended Ritual - Rank 1)
            [26303] = true, -- Extended Ritual (Extended Ritual - Rank 1)
            [26304] = true, -- Clensing Ritual Dummy (Extended Ritual - Rank 1)
            [26306] = true, -- Extended Ritual (Extended Ritual - Rank 1)
            [80553] = true, -- Extended Ritual (Extended Ritual - Rank 1)
            [26305] = true, -- Purify (Extended Ritual - Rank 1)

            [22236] = true, -- Major Resolve (Rune Focus - Rank 1)
            [44820] = true, -- Major Ward (Rune Focus - Rank 1)
            [22234] = true, -- Rune Focus (Rune Focus - Rank 1)
            [33516] = true, -- Summon Shade (Rune Focus - Rank 1)
            [101649] = true, -- Rune Focus (Rune Focus - Rank 1)

            [44828] = true, -- Major Resolve (Channeled Focus - Rank 1)
            [44827] = true, -- Major Ward (Channeled Focus - Rank 1)
            [22240] = true, -- Channeled Focus (Channeled Focus - Rank 1)
            [33524] = true, -- Summon Shade (Channeled Focus - Rank 1)
            [37009] = true, -- Channeled Focus (Channeled Focus - Rank 1)

            [44836] = true, -- Major Resolve (Restoring Focus - Rank 1)
            [44835] = true, -- Major Ward (Restoring Focus - Rank 1)
            [37027] = true, -- Minor Vitality (Restoring Focus - Rank 1)
            [77056] = true, -- Minor Protection (Restoring Focus - Rank 1)
            [22237] = true, -- Restoring Focus (Restoring Focus - Rank 1)
            [101690] = true, -- Restoring Focus (Restoring Focus - Rank 1)
            [33528] = true, -- Restoring Focus (Restoring Focus - Rank 1)

            [22223] = true, -- Rite of Passage (Rite of Passage - Rank 1)
            [22225] = true, -- Rite of Passage (Rite of Passage - Rank 1)
            [26380] = true, -- Rite of Passage Self Snare (Rite of Passage - Rank 1)

            [22229] = true, -- Remembrance (Remembrance - Rank 1)
            [22231] = true, -- Remembrance (Remembrance - Rank 1)
            [26381] = true, -- Rite of Passage Self Snare (Remembrance - Rank 1)
            [22233] = true, -- Major Protection (Remembrance - Rank 1)

            [22226] = true, -- Practiced Incantation (Practiced Incantation - Rank 1)
            [22228] = true, -- Practiced Incantation (Practiced Incantation - Rank 1)
            [26383] = true, -- Practiced Incantation (Practiced Incantation - Rank 1)

            --------------------------
            -- WARDEN PASSIVES
            --------------------------

            -- Animal Companions
            [86064] = true, -- Bond With Nature (Rank 1)
            [88986] = true, -- Bond With Nature
            [86065] = true, -- Bond With Nature (Rank 2)
            [88988] = true, -- Bond With Nature
            [86062] = true, -- Savage Beast (Rank 1)
            [88512] = true, -- Savage Beast Ultimate
            [86063] = true, -- Savage Beast (Rank 2)
            [88513] = true, -- Transfer
            [86066] = true, -- Flourish (Rank 1)
            [86067] = true, -- Flourish (Rank 2)
            [86068] = true, -- Advanced Species (Rank 1)
            [86069] = true, -- Advanced Species (Rank 2)

            -- Green Balance
            [85882] = true, -- Accelerated Growth (Rank 1)
            [88525] = true, -- Major Mending
            [85883] = true, -- Accelerated Growth (Rank 2)
            [88528] = true, -- Major Mending
            [85878] = true, -- Nature's Gift (Rank 1)
            [88483] = true, -- Nature's Give
            [93054] = true, -- Nature's Gift
            [96451] = true, -- Nature's Gift Cooldown
            [85879] = true, -- Nature's Gift (Rank 2)
            [93072] = true, -- Nature's Give
            [93073] = true, -- Nature's Gift
            [96452] = true, -- Nature's Gift Cooldown
            [85876] = true, -- Emerald Moss (Rank 1)
            [85877] = true, -- Emerald Moss (Rank 2)
            [85880] = true, -- Maturation (Rank 1)
            [88492] = true, -- Minor Toughness
            [85881] = true, -- Maturation (Rank 2)
            [88509] = true, -- Minor Toughness

            -- Winter's Embrace
            [86191] = true, -- Glacial Presence (Rank 1)
            [86192] = true, -- Glacial Presence (Rank 2)
            [86189] = true, -- Frozen Armor (Rank 1)
            [86190] = true, -- Frozen Armor (Rank 2)
            [86193] = true, -- Icy Aura (Rank 1)
            [86194] = true, -- Icy Aura (Rank 2)
            [86195] = true, -- Piercing Cold (Rank 1)
            [86196] = true, -- Piercing Cold (Rank 2)

            --------------------------
            -- WARDEN ACTIVES
            --------------------------

            [85995] = true, -- Dive (Dive)

            [88515] = true, -- Bond With Nature Trigger (Cutting Dive - All Morphs)
            [85999] = true, -- Cutting Dive (Cutting Dive)

            [87663] = true, -- Screaming Cliff Racer (Screaming Cliff Racer)
            [86003] = true, -- Screaming Cliff Racer (Screaming Cliff Racer)

            [86009] = true, -- Scorch (Scorch)
            [94412] = true, -- Scorch (Scorch)
            [94409] = true, -- Scorch (Scorch)
            [94410] = true, -- Scorch (Scorch)
            [94411] = true, -- Scorch (Scorch)

            [86019] = true, -- Subterranean Assault (Subterranean Assault)
            [94440] = true, -- Subterranean Assault (Subterranean Assault)
            [94441] = true, -- Subterranean Assault (Subterranean Assault)
            [94442] = true, -- Subterranean Assault (Subterranean Assault)
            [94445] = true, -- Subterranean Assault (Subterranean Assault)
            [94444] = true, -- Major Fracture (Subterranean Assault)

            [86015] = true, -- Deep Fissure (Deep Fissure)
            [94421] = true, -- Deep Fissure (Deep Fissure)
            [94422] = true, -- Deep Fissure (Deep Fissure)
            [94423] = true, -- Deep Fissure (Deep Fissure)
            [94424] = true, -- Deep Fissure (Deep Fissure)
            [108951] = true, -- Major Breach (Deep Fissure)

            [86023] = true, -- Swarm (Swarm)
            [101703] = true, -- Swarm (Swarm)

            [86027] = true, -- Fetcher Infection (Fetcher Infection)
            [91416] = true, -- Fetcher Infection Bonus Damage (Fetcher Infection)
            [101904] = true, -- Fetcher Infection (Fetcher Infection)
            [87687] = true, -- Bonus Damage Fetcher Infection (Fetcher Infection)

            [95130] = true, -- Growing Swarm (Growing Swarm)
            [86031] = true, -- Growing Swarm (Growing Swarm)
            [101944] = true, -- Growing Swarm (Growing Swarm)
            [89289] = true, -- Growing Swarm (Growing Swarm)
            [101948] = true, -- Growing Swarm (Growing Swarm)

            [89103] = true, -- Betty Netch Summon (Betty Netch - All Morphs)
            [87875] = true, -- Betty Netch (Betty Netch + Blue Betty)
            [87876] = true, -- Betty Netch (Betty Netch + Blue Betty)
            [86050] = true, -- Betty Netch (Betty Netch)
            [87929] = true, -- Major Sorcery (Betty Netch)
            [86106] = true, -- Betty Netch (Betty Netch)

            [86054] = true, -- Blue Betty (Blue Betty)
            [89107] = true, -- Major Sorcery (Blue Betty)
            [89106] = true, -- Blue Betty (Blue Betty)

            [86058] = true, -- Bull Netch (Bull Netch)
            [89110] = true, -- Major Brutality (Bull Netch)
            [95125] = true, -- Major Sorcery (Bull Netch)
            [89109] = true, -- Bull Netch (Bull Netch)
            [86103] = true, -- Bull Netch (Bull Netch)
            [91475] = true, -- Restore Remover (Bull Netch)

            [86037] = true, -- Falcon's Swiftness (Falcon's Swiftness)
            [86267] = true, -- Major Expedition (Falcon's Swiftness)
            [86268] = true, -- Major Endurance (Falcon's Swiftness)

            [86041] = true, -- Deceptive Predator (Deceptive Predator)
            [89076] = true, -- Major Expedition (Deceptive Predator)
            [89077] = true, -- Major Endurance (Deceptive Predator)
            [87861] = true, -- Minor Evasion (Deceptive Predator)

            [86045] = true, -- Bird of Prey (Bird of Prey)
            [89078] = true, -- Major Expedition (Bird of Prey)
            [89079] = true, -- Major Endurance (Bird of Prey)
            [87864] = true, -- Minor Berserk (Bird of Prey)

            [89363] = true, -- Feral Guardian Summon (Feral Guardian - All Morphs)
            [90826] = true, -- Pet PvP Damage Reduction(Feral Guardian - All Morphs)
            [93134] = true, -- Guardian's Wrath Trigger (Feral Guardian + Eternal Guardian)
            [101438] = true, -- Bear Immunity (Feral Guardian - All Morphs)

            [85982] = true, -- Feral Guardian (Feral Guardian)
            [86074] = true, -- Feral Guardian (Feral Guardian)
            [89135] = true, -- Swipe (Feral Guardian)
            [89128] = true, -- Crushing Swipe (Feral Guardian)
            [89129] = true, -- Crushing Swipe (Feral Guardian)
            [90284] = true, -- Guardian's Wrath (Feral Guardian)
            [93144] = true, -- Guardian's Wrath Trigger (Feral Guardian)
            [91974] = true, -- Guardian's Wrath (Feral Guardian)

            [85986] = true, -- Eternal Guardian (Eternal Guardian)
            [89166] = true, -- Eternal Guardian (Eternal Guardian)
            [105924] = true, -- Guardian's Wrath Trigger (Eternal Guardian)
            [105906] = true, -- Swipe (Eternal Guardian)
            [105907] = true, -- Crushing Swipe (Eternal Guardian)
            [105908] = true, -- Crushing Swipe (Eternal Guardian)
            [94625] = true, -- Guardian's Wrath (Eternal Guardian)
            [94626] = true, -- Guardian's Wrath Trigger (Eternal Guardian)
            [105921] = true, -- Guardian's Wrath (Eternal Guardian)
            [89180] = true, -- Eternal Guardian Respawn Timer (Eternal Guardian)
            [107588] = true, -- Eternal Guardian Cast Speed (Eternal Guardian)
            [95108] = true, -- Eternal Guardian Respawn Timer (Eternal Guardian)

            [85990] = true, -- Wild Guardian (Wild Guardian)
            [89207] = true, -- Wild Guardian (Wild Guardian)
            [95104] = true, -- Guardian's Savagery Trigger (Wild Guardian)
            [89219] = true, -- Swipe (Wild Guardian)
            [89220] = true, -- Crushing Swipe (Wild Guardian)
            [92666] = true, -- Crushing Swipe (Wild Guardian)
            [92163] = true, -- Guardian's Savagery (Wild Guardian)
            [93233] = true, -- Guardian's Savagery Trigger (Wild Guardian)
            [92160] = true, -- Guardian's Savagery (Wild Guardian)

            [85536] = true, -- Fungal Growth (Fungal Growth)

            [85862] = true, -- Enchanted Growth (Enchanted Growth)
            [86300] = true, -- Minor Intellect (Enchanted Growth)
            [87019] = true, -- Minor Endurance (Enchanted Growth)

            [85863] = true, -- Soothing Spores (Soothing Spores)
            [87938] = true, -- Soothing Spores Healing Bonus (Soothing Spores)

            [108826] = true, -- Synergy Damage Bonus (Healing Seed - Harvest Synergy)
            [85572] = true, -- Harvest (Healing Seed - Harvest Synergy)
            [85577] = true, -- Harvest (Healing Seed - Harvest Synergy)
            [85578] = true, -- Healing Seed (Healing Seed)
            [85585] = true, -- Healing Seed Dummy (Healing Seed)
            [85584] = true, -- Healing Seed Synergy Tick (Healing Seed)
            [85583] = true, -- Harvest (Healing Seed)
            [85582] = true, -- Healing Seed Heal (Healing Seed)

            [85840] = true, -- Budding Seeds (Budding Seeds)
            [85842] = true, -- Budding Seeds Dummy (Budding Seeds)
            [85844] = true, -- Budding Seeds Synergy (Budding Seeds)
            [85843] = true, -- Harvest (Budding Seeds)
            [85841] = true, -- Budding Seeds Heal (Budding Seeds)
            [85922] = true, -- Budding Seeds (Budding Seeds)
            [85925] = true, -- Budding Seeds Heal (Budding Seeds)

            [85845] = true, -- Corrupting Pollen (Corrupting Pollen)
            [85847] = true, -- Corrupting Pollen Dummy (Corrupting Pollen)
            [85849] = true, -- Corrupting Pollen Synergy Tick (Corrupting Pollen)
            [85848] = true, -- Harvest (Corrupting Pollen)
            [85846] = true, -- Corrupting Pollen Heal (Corrupting Pollen)
            [85944] = true, -- Major Defile (Corrupting Pollen)

            [85552] = true, -- Living Vines (Living Vines)
            [85559] = true, -- Living Vines Heal (Living Vines)

            [85850] = true, -- Leeching Vines (Leeching Vines)
            [88712] = true, -- Leeching Vines (Leeching Vines)
            [86307] = true, -- Minor Lifesteal (Leeching Vines)
            [86306] = true, -- Minor Lifesteal (Leeching Vines)

            [85851] = true, -- Living Trellis (Living Trellis)
            [88721] = true, -- Living Trellis Heal (Living Trellis)
            [88723] = true, -- Living Trellis Heal Burst (Living Trellis)

            [85564] = true, -- Nature's Grasp (Nature's Grasp)
            [90266] = true, -- Nature's Grasp (Nature's Grasp)
            [108943] = true, -- Nature's Grasp Ultimate Restor (Nature's Grasp)

            [85859] = true, -- Bursting Vines (Bursting Vines)
            [88739] = true, -- Bursting Vines (Bursting Vines)
            [108947] = true, -- Bursting Vines Ultimate Rest (Bursting Vines)

            [85539] = true, -- Lotus Flower (Lotus Flower)
            [85550] = true, -- Lotus Flower (Lotus Flower)
            [94558] = true, -- Lotus Flower (Lotus Flower)

            [85854] = true, -- Green Lotus (Green Lotus)
            [87061] = true, -- Major Savagery (Green Lotus)
            [87058] = true, -- Green Lotus (Green Lotus)
            [94571] = true, -- Green Lotus (Green Lotus)

            [85855] = true, -- Lotus Blossom (Lotus Blossom)
            [86303] = true, -- Major Prophecy (Lotus Blossom)
            [88695] = true, -- Lotus Blossom Heal (Lotus Blossom)
            [94590] = true, -- Lotus Blossom Heal (Lotus Blossom)

            [85858] = true, -- Nature's Embrace (Nature's Embrace)
            [88726] = true, -- Nature's Embrace (Nature's Embrace)
            [87074] = true, -- Nature's Embrace (Nature's Embrace)
            [108945] = true, -- Nature's Embrace Ultimate Rest (Nature's Embrace)

            [85532] = true, -- Secluded Grove (Secluded Grove)
            [85533] = true, -- Secluded Grove Instant Heal (Secluded Grove)
            [85534] = true, -- Secluded GroveTick Heal (Secluded Grove)

            [85804] = true, -- Enchanted Forest (Enchanted Forest)
            [88748] = true, -- Enchanted Forest Burst (Enchanted Forest)
            [86357] = true, -- Enchanted Forest Ultimate Rest (Enchanted Forest)
            [88747] = true, -- Enchanted Forest (Enchanted Forest)

            [85807] = true, -- Healing Thicket (Healing Thicket)
            [88750] = true, -- Healing Thicket Instant Heal (Healing Thicket)
            [91819] = true, -- Healing Thicket (Healing Thicket)

            [86122] = true, -- Frost Cloak (Frost Cloak)
            [86224] = true, -- Major Resolve (Frost Cloak)
            [86225] = true, -- Major Ward (Frost Cloak)

            [86126] = true, -- Expansive Frost Cloak (Expansive Frost Cloak)
            [88758] = true, -- Major Resolve (Expansive Frost Cloak)
            [88759] = true, -- Major Ward (Expansive Frost Cloak)

            [86130] = true, -- Ice Fortress (Ice Fortress)
            [88761] = true, -- Major Resolve (Ice Fortress)
            [88762] = true, -- Major Ward (Ice Fortress)
            [87194] = true, -- Minor Protection (Ice Fortress)

            [86161] = true, -- Impaling Shards (Impaling Shards)
            [88920] = true, -- Impaling Shards Dummy (Impaling Shards)
            [88783] = true, -- Impaling Shards (Impaling Shards)
            [86238] = true, -- Impaling Shards (Impaling Shards)

            [86165] = true, -- Gripping Shards (Gripping Shards)
            [88993] = true, -- Impaling Shards Dummy (Gripping Shards)
            [87443] = true, -- Gripping Shards (Gripping Shards)
            [88791] = true, -- Gripping Shards (Gripping Shards)
            [87448] = true, -- Gripping Shards (Gripping Shards)

            [86169] = true, -- Winter's Revenge (Winter's Revenge)
            [88994] = true, -- Impaling Shards Dummy (Winter's Revenge)
            [88802] = true, -- Winter's Revenge (Winter's Revenge)
            [88801] = true, -- Winter's Revenge (Winter's Revenge)

            [86148] = true, -- Arctic Wind (Arctic Wind)
            [90833] = true, -- Arctic Wind (Arctic Wind)

            [86152] = true, -- Polar Wind (Polar Wind)
            [90835] = true, -- Polar Wind (Polar Wind)
            [88776] = true, -- Polar Wind (Polar Wind)

            [86156] = true, -- Arctic Blast (Arctic Blast)
            [90834] = true, -- Arctic Blast (Arctic Blast)
            [105334] = true, -- Arctic Blast (Arctic Blast)
            [105336] = true, -- Arctic Blast (Arctic Blast)
            [87256] = true, -- Arctic Blast (Arctic Blast)

            [86135] = true, -- Crystallized Shield (Crystallized Shield)
            [92068] = true, -- Crystalized Shield (Crystallized Shield)
            [87227] = true, -- Crystallized Shield (Crystallized Shield)
            [87224] = true, -- Combat Restore Crystalized Shi (Crystallized Shield)
            [87226] = true, -- Crystalized Shield Remover (Crystallized Shield)

            [86139] = true, -- Crystallized Slab (Crystallized Slab)
            [92168] = true, -- Crystalized Slab (Crystallized Slab)
            [88769] = true, -- Crystalized Slab Stack Counter (Crystallized Slab)
            [88766] = true, -- Crystalized Slab Restore (Crystallized Slab)
            [88768] = true, -- Crystalized Slab Remover (Crystallized Slab)
            [93175] = true, -- Crystallized Slab (Crystallized Slab)

            [86143] = true, -- Shimmering Shield (Shimmering Shield)
            [92170] = true, -- Shimmering Shield (Shimmering Shield)
            [88774] = true, -- Shimmering Shield Stack Count (Shimmering Shield)
            [88771] = true, -- Shimmering Shield Restore (Shimmering Shield)
            [87234] = true, -- Major Herosim (Shimmering Shield)
            [88773] = true, -- Shimmering Shield Remover (Shimmering Shield)

            [86175] = true, -- Frozen Gate (Frozen Gate)
            [86256] = true, -- Frozen Gate Dummy (Frozen Gate)
            [86264] = true, -- Frozen Gate Move Position (Frozen Gate)
            [108948] = true, -- Frozen Gate (Frozen Gate)
            [89812] = true, -- Frozen Gate Root (Frozen Gate)
            [87560] = true, -- Frozen Gate Root (Frozen Gate)

            [86179] = true, -- Frozen Device (Frozen Device)
            [92031] = true, -- Frozen Gate Dummy (Frozen Device)
            [92032] = true, -- Frozen Gate Move Position (Frozen Device)
            [108949] = true, -- Frozen Device (Frozen Device)
            [92038] = true, -- Frozen Gate Root (Frozen Device)
            [92039] = true, -- Frozen Gate Root (Frozen Device)
            [92041] = true, -- Minor Maim (Frozen Device)

            [88887] = true, -- Icy Escape Move Position (Frozen Retreat - Icy Escape Synergy
            [88892] = true, -- Icy Escape Cooldown (Frozen Retreat - Icy Escape Synergy
            [103321] = true, -- Major Expedition (Frozen Retreat - Icy Escape Synergy

            [86183] = true, -- Frozen Retreat (Frozen Retreat)
            [92052] = true, -- Frozen Retreat Dummy (Frozen Retreat)
            [92062] = true, -- Frozen Retreat Synergy Tick (Frozen Retreat)
            [92053] = true, -- Frozen Retreat Move Position (Frozen Retreat)
            [108950] = true, -- Frozen Retreat (Frozen Retreat)
            [92058] = true, -- Frozen Retreat Root (Frozen Retreat)
            [92060] = true, -- Frozen Retreat Root (Frozen Retreat)
            [92061] = true, -- Frozen Retreat Synergy Tick (Frozen Retreat)

            [86109] = true, -- Sleet Storm (Sleet Storm)
            [86249] = true, -- Major Protection (Sleet Storm)
            [86247] = true, -- Sleet Storm (Sleet Storm)
            [86250] = true, -- Sleet Storm (Sleet Storm)

            [87542] = true, -- Northern Storm (Northern Storm)
            [86113] = true, -- Northern Storm (Northern Storm)
            [88859] = true, -- Major Protection (Northern Storm)
            [88860] = true, -- Northern Storm (Northern Storm)
            [88858] = true, -- Northern Storm (Northern Storm)

            [86117] = true, -- Permafrost (Permafrost)
            [88862] = true, -- Major Protection (Permafrost)
            [92969] = true, -- FX Dummy (Permafrost)
            [88863] = true, -- Permafrost (Permafrost)
            [88861] = true, -- Permafrost (Permafrost)
            [90942] = true, -- Permafrost Stack Counter (Permafrost)
            [90943] = true, -- Permafrost (Permafrost)

            --------------------------
            -- UNARMED
            --------------------------

            [23604] = true, -- Light Attack
            [18429] = true, -- Heavy Attack (Unarmed)
            [18430] = true, -- Heavy Attack
            [21991] = true, -- Heavy Attack Damage Bonus
            [18431] = true, -- Heavy Attack
            [60772] = true, -- Heavy Attack (Unarmed)

            --------------------------
            -- TWO HANDED PASSIVES
            --------------------------

            [16037] = true, -- Light Attack
            [16041] = true, -- Heavy Attack (2H)
            [17162] = true, -- Heavy Attack
            [17699] = true, -- Heavy Attack Damage Bonus
            [17163] = true, -- Heavy Attack
            [60757] = true, -- Heavy Attack (2H)

            [29387] = true, -- Forceful (Rank 1)
            [61022] = true, -- Forceful
            [30821] = true, -- Forceful
            [45444] = true, -- Forceful (Rank 2)
            [61023] = true, -- Forceful
            [45445] = true, -- Forceful

            [29375] = true, -- Heavy Weapons (Rank 1)
            [29383] = true, -- Heavy Weapons Bleed
            [45430] = true, -- Heavy Weapons (Rank 2)
            [45431] = true, -- Heavy Weapons Bleed

            [29388] = true, -- Balanced Blade (Rank 1)
            [45443] = true, -- Balanced Blade (Rank 2)

            [29389] = true, -- Follow Up (Rank 1)
            [60860] = true, -- Bonus Damage
            [45446] = true, -- Follow Up (Rank 2)
            [60888] = true, -- Bonus Damage

            [29391] = true, -- Battle Rush (Rank 1)
            [29392] = true, -- Battle Rush
            [45448] = true, -- Battle Rush (Rank 2)
            [45450] = true, -- Battle Rush

            --------------------------
            -- TWO HANDED ACTIVES
            --------------------------

            [28279] = true, -- Uppercut (Uppercut)

            [38814] = true, -- Dizzying Swing (Dizzying Swing)
            [38818] = true, -- Dizzying Swing (Dizzying Swing)
            [38816] = true, -- Dizzying Swing (Dizzying Swing)

            [38807] = true, -- Wrecking Blow (Wrecking Blow)

            [28448] = true, -- Critical Charge (Critical Charge)
            [28450] = true, -- Critical Strike (Critical Charge)
            [28449] = true, -- Critical Charge (Critical Charge)

            [38788] = true, -- Stampede (Stampede)
            [38789] = true, -- Critical Strike (Stampede)
            [38792] = true, -- Stampede (Stampede)
            [38791] = true, -- Stampede (Stampede)

            [38778] = true, -- Critical Rush (Critical Rush)
            [38781] = true, -- Critical Strike (Critical Rush)
            [38783] = true, -- Damage Bonus (Critical Rush)
            [38782] = true, -- Critical Rush (Critical Rush)

            [20919] = true, -- Cleave (Cleave)
            [31059] = true, -- Cleave Bleed (Cleave)

            [38745] = true, -- Carve (Carve)
            [38747] = true, -- Carve Bleed (Carve)
            [38746] = true, -- Minor Heroism (Carve)

            [38754] = true, -- Brawler (Brawler)
            [38759] = true, -- Brawler Bleed (Brawler)
            [38773] = true, -- Brawler (Brawler)
            [38774] = true, -- Brawler (Brawler)
            [38763] = true, -- Brawler (Brawler)

            [28302] = true, -- Reverse Slash (Reverse Slash)

            [38823] = true, -- Reverse Slice (Reverse Slice)
            [38826] = true, -- Reverse Slice (Reverse Slice)
            [38827] = true, -- Reverse Slice (Reverse Slice)

            [38819] = true, -- Executioner (Executioner)

            [28297] = true, -- Momentum (Momentum)
            [61670] = true, -- Major Brutality (Momentum)
            [28299] = true, -- Momentum (Momentum)

            [38794] = true, -- Forward Momentum (Forward Momentum)
            [62387] = true, -- Major Brutality (Forward Momentum)
            [38797] = true, -- Forward Momentum (Forward Momentum)
            [62385] = true, -- Momentum (Forward Momentum)

            [38802] = true, -- Rally (Rally)
            [62415] = true, -- Major Brutality (Rally)
            [60894] = true, -- Heal Buffer (Rally)
            [60895] = true, -- Heal Buff (Rally)
            [38803] = true, -- Rally (Rally)
            [38805] = true, -- Rally (Rally)

            [83216] = true, -- Berserker Strike (Berserker Strike)
            [83217] = true, -- Berserker Strike (Berserker Strike)
            [83221] = true, -- Berserker Strike (Berserker Strike)

            [83345] = true, -- Onslaught Passive (Onslaught)
            [83346] = true, -- Onslaught (Onslaught)
            [83229] = true, -- Onslaught (Onslaught)
            [83230] = true, -- Onslaught (Onslaught)
            [83231] = true, -- Onslaught (Onslaught)

            [83238] = true, -- Berserker Rage (Berserker Rage)
            [83239] = true, -- Berserker Rage (Berserker Rage)
            [83240] = true, -- Berserker Rage (Berserker Rage)
            [83241] = true, -- Berserker Rage (Berserker Rage)

            --------------------------
            -- ONE HAND AND SHIELD PASSIVES
            --------------------------

            [15435] = true, -- Light Attack
            [15279] = true, -- Heavy Attack (1H)
            [15282] = true, -- Heavy Attack
            [17694] = true, -- Heavy Attack Damage Bonus
            [15829] = true, -- Heavy Attack
            [60759] = true, -- Heavy Attack (Shield)

            [29420] = true, -- Fortress (Rank 1)
            [45471] = true, -- Fortress (Rank 2)

            [29397] = true, -- Sword and Board (Rank 1)
            [45452] = true, -- Sword and Board (Rank 2)

            [29415] = true, -- Deadly Bash (Rank 1)
            [45469] = true, -- Deadly Bash (Rank 2)

            [29399] = true, -- Deflect Bolts (Rank 1)
            [45472] = true, -- Deflect Bolts (Rank 2)

            [29422] = true, -- Battlefield Mobility (Rank 1)
            [45473] = true, -- Battlefield Mobility (Rank 2)

            --------------------------
            -- ONE HAND AND SHIELD ACTIVES
            --------------------------

            [28306] =  true, -- Puncture (Puncture)
            [28307] =  true, -- Major Fracture (Puncture)

            [38256] = true, -- Ransack (Ransack)
            [62474] = true, -- Major Fracture (Ransack)
            [62475] = true, -- Minor Resolve (Ransack)

            [38250] = true, -- Pierce Armor (Pierce Armor)
            [62484] = true, -- Major Fracture (Pierce Armor)
            [62485] = true, -- Major Breach (Pierce Armor)

            [28304] = true, -- Low Slash (Low Slash)
            [29308] = true, -- Minor Maim (Low Slash)
            [28305] = true, -- Low Slash Snare (Low Slash)

            [38268] = true, -- Deep Slash (Deep Slash)
            [62495] = true, -- Minor Maim (Deep Slash)
            [38271] = true, -- Deep Slash (Deep Slash)
            [60921] = true, -- Deep Slash (Deep Slash)

            [38264] = true, -- Heroic Slash (Heroic Slash)
            [62504] = true, -- Minor Maim (Heroic Slash)
            [38266] = true, -- Heroic Slash Snare (Heroic Slash)
            [62505] = true, -- Minor Heroism (Heroic Slash)

            [28728] = true, -- Defensive Posture (Defensive Posture - All Morphs)
            [28727] = true, -- Defensive Posture (Defensive Posture)

            [38312] = true, -- Defensive Stance (Defensive Stance)
            [38316] = true, -- Defensive Stance (Defensive Stance)
            [38315] = true, -- Defensive Stance (Defensive Stance)

            [38317] = true, -- Absorb Magic (Absorb Magic)
            [38398] = true, -- Absorb Magic (Absorb Magic)

            [28719] = true, -- Shield Charge (Shield Charge)
            [28721] = true, -- Shield Charge (Shield Charge)
            [28720] = true, -- Shield Charge (Shield Charge)

            [38401] = true, -- Shielded Assault (Shielded Assault)
            [38404] = true, -- Shielded Assault (Shielded Assault)
            [38402] = true, -- Shielded Assault (Shielded Assault)
            [38403] = true, -- Shielded Assault (Shielded Assault)

            [38405] = true, -- Invasion (Invasion)
            [38408] = true, -- Invasion (Invasion)
            [38406] = true, -- Invasion (Invasion)
            [38407] = true, -- Invasion Stun (Invasion)

            [28365] = true, -- Power Bash (Power Bash)
            [83433] = true, -- Power Bash (Power Bash)

            [38455] = true, -- Reverberating Bash (Reverberating Bash)
            [83446] = true, -- Reverberating Bash (Reverberating Bash)
            [38838] = true, -- Major Defile (Reverberating Bash)

            [80624] = true, -- Power Slam (Power Slam)
            [80625] = true, -- Power Slam (Power Slam)
            [38452] = true, -- Power Slam (Power Slam)

            [83272] = true, -- Shield Wall (Shield Wall)

            [83292] = true, -- Spell Wall (Spell Wall)
            [83301] = true, -- Spell Wall (Spell Wall)

            [83310] = true, -- Shield Discipline (Shield Discipline)

            --------------------------
            -- DUAL WIELD PASSIVES
            --------------------------

            [16499] = true, -- Light Attack
            [16420] = true, -- Heavy Attack (Dual Wield)
            [17170] = true, -- Heavy Attack
            [17700] = true, -- Heavy Attack Damage Bonus
            [17169] = true, -- Heavy Attack
            [18622] = true, -- Heavy Attack (Dual Wield)
            [60758] = true, -- Heavy Attack (Dual Wield)
            [64546] = true, -- Heavy Attack Damage Bonus


            [18929] = true, -- Slaughter (Rank 1)
            [45476] = true, -- Slaughter (Rank 2)

            [30873] = true, -- Dual Wield Expert (Rank 1)
            [45477] = true, -- Dual Wield Expert (Rank 2)

            [30872] = true, -- Controlled Fury (Rank 1)
            [45478] = true, -- Controlled Fury (Rank 2)

            [21114] = true, -- Ruffian (Rank 1)
            [45481] = true, -- Ruffian (Rank 2)

            [30893] = true, -- Twin Blade and Blunt (Rank 1)
            [30894] = true, -- Twin Blade and Blunt Bleed
            [45482] = true, -- Twin Blade and Blunt (Rank 2)
            [45483] = true, -- Twin Blade and Blunt Bleed

            --------------------------
            -- DUAL WIELD ACTIVES
            --------------------------

            [28607] = true, -- Flurry (Flurry)
            [81355] = true, -- Flurry (Flurry)
            [29227] = true, -- Flurry (Flurry)

            [38857] = true, -- Rapid Strikes (Rapid Strikes)
            [38860] = true, -- Rapid Strikes (Rapid Strikes)
            [81368] = true, -- Rapid Strikes (Rapid Strikes)
            [38859] = true, -- Rapid Strikes (Rapid Strikes)

            [38846] = true, -- Bloodthirst (Bloodthirst)
            [81378] = true, -- Bloodthirst (Bloodthirst)
            [81380] = true, -- Bloodthirst (Bloodthirst)
            [81379] = true, -- Bloodthirst (Bloodthirst)
            [38853] = true, -- Bloodthirst (Bloodthirst)
            [81381] = true, -- Bloodthirst (Bloodthirst)

            [28379] = true, -- Twin Slashes (Twin Slashes)
            [35312] = true, -- Twin Slashes (Twin Slashes)
            [29293] = true, -- Twin Slashes Bleed (Twin Slashes)

            [38839] = true, -- Rending Slashes (Rending Slashes)
            [38840] = true, -- Rending Slashes (Rending Slashes)
            [38841] = true, -- Rending Slashes Bleed (Rending Slashes)
            [38842] = true, -- Rending Slashes (Rending Slashes)

            [38845] = true, -- Blood Craze (Blood Craze)
            [38847] = true, -- Blood Craze (Blood Craze)
            [38848] = true, -- Blood Craze Bleed (Blood Craze)
            [38852] = true, -- Blood Craze (Blood Craze)

            [28591] = true, -- Whirlwind (Whirlwind)
            [39620] = true, -- Whirlwind (Whirlwind)

            [38891] = true, -- Whirling Blades (Whirling Blades)
            [68801] = true, -- Major Endurance (Whirling Blades)
            [39666] = true, -- Whirlwind (Whirling Blades)

            [38861] = true, -- Steel Tornado (Steel Tornado)
            [39665] = true, -- Whirlwind (Steel Tornado)

            [64746] = true, -- Blade Cloak AoE Fx (Blade Cloak)
            [28613] = true, -- Blade Cloak (Blade Cloak)
            [62522] = true, -- Blade Cloak (Blade Cloak)

            [38901] = true, -- Quick Cloak (Quick Cloak)
            [62531] = true, -- Major Expedition (Quick Cloak)
            [62529] = true, -- Blade Cloak (Quick Cloak)

            [38906] = true, -- Deadly Cloak (Deadly Cloak)
            [62547] = true, -- Blade Cloak (Deadly Cloak)

            [21157] = true, -- Hidden Blade (Hidden Blade)
            [68807] = true, -- Major Brutality (Hidden Blade)
            [28378] = true, -- Hidden Blade (Hidden Blade)

            [38914] = true, -- Shrouded Daggers (Shrouded Daggers)
            [68859] = true, -- Major Brutality (Shrouded Daggers)
            [68858] = true, -- Hit Dummy (Shrouded Daggers)
            [68861] = true, -- Shrouded Daggers (Shrouded Daggers)
            [68860] = true, -- Bounce 1 (Shrouded Daggers)
            [68862] = true, -- Shrouded Daggers (Shrouded Daggers)
            [68863] = true, -- Bounce 2 (Shrouded Daggers)
            [68864] = true, -- Shrouded Daggers (Shrouded Daggers)

            [38910] = true, -- Flying Blade (Flying Blade)
            [68814] = true, -- Major Brutality (Flying Blade)
            [38912] = true, -- Flying Blade (Flying Blade)

            [83600] = true, -- Lacerate (Lacerate)
            [85156] = true, -- Lacerate (Lacerate)
            [85159] = true, -- Lacerate (Lacerate)
            [85170] = true, -- Lacerate (Lacerate)
            [85171] = true, -- Lacerate (Lacerate)

            [85187] = true, -- Rend (Rend)
            [85192] = true, -- Rend (Rend)
            [85193] = true, -- Rend (Rend)
            [85191] = true, -- Rend (Rend)
            [85190] = true, -- Rend (Rend)

            [85179] = true, -- Thrive in Chaos (Thrive in Chaos)
            [85182] = true, -- Thrive in Chaos (Thrive in Chaos)
            [85183] = true, -- Thrive in Chaos (Thrive in Chaos)
            [85184] = true, -- Thrive in Chaos (Thrive in Chaos)
            [85181] = true, -- Thrive in Chaos (Thrive in Chaos)
            [85180] = true, -- Thrive in Chaos (Thrive in Chaos)

            --------------------------
            -- BOW PASSIVES
            --------------------------

            [16688] = true, -- Light Attack
            [16691] = true, -- Heavy Attack (Bow)
            [17174] = true, -- Heavy Attack
            [17701] = true, -- Heavy Attack Damage Bonus
            [17173] = true, -- Heavy Attack
            [60761] = true, -- Heavy Attack (Bow)

            [30937] = true, -- Long Shots (Rank 1)
            [45494] = true, -- Long Shots (Rank 2)

            [30930] = true, -- Accuracy (Rank 1)
            [45492] = true, -- Accuracy (Rank 2)

            [30942] = true, -- Ranger (Rank 1)
            [45493] = true, -- Ranger (Rank 2)

            [30936] = true, -- Hawk Eye (Rank 1)
            [78854] = true, -- Hawk Eye
            [45497] = true, -- Hawk Eye (Rank 2)
            [78855] = true, -- Hawk Eye

            [30923] = true, -- Hasty Retreat (Rank 1)
            [98489] = true, -- Major Expedition
            [45498] = true, -- Hasty Retreat (Rank 2)
            [98490] = true, -- Major Expedition

            --------------------------
            -- BOW ACTIVES
            --------------------------

            [28882] = true, -- Snipe (Snipe)

            [38685] = true, -- Lethal Arrow (Lethal Arrow)
            [38686] = true, -- Major Defile (Lethal Arrow)

            [38687] = true, -- Focused Aim (Focused Aim)
            [38699] = true, -- Focused Aim (Focused Aim)
            [38698] = true, -- Focused Aim (Focused Aim)
            [38688] = true, -- Minor Fracture (Focused Aim)

            [28876] = true, -- Volley (Volley)
            [38424] = true, -- Summon Shade (Volley)
            [28877] = true, -- Volley (Volley)

            [38689] = true, -- Endless Hail (Endless Hail)
            [38691] = true, -- Summon Shade (Endless Hail)
            [38690] = true, -- Endless Hail (Endless Hail)

            [38695] = true, -- Arrow Barrage (Arrow Barrage)
            [38697] = true, -- Summon Shade (Arrow Barrage)
            [38696] = true, -- Arrow Barrage (Arrow Barrage)

            [28879] = true, -- Scatter Shot (Scatter Shot)
            [28888] = true, -- Scatter Shot (Scatter Shot)
            [28887] = true, -- Scatter Shot (Scatter Shot)

            [38672] = true, -- Magnum Shot (Magnum Shot)
            [38676] = true, -- Scatter Shot (Magnum Shot)
            [38675] = true, -- Scatter Shot (Magnum Shot)
            [38674] = true, -- Scatter Shot (Magnum Shot)

            [38669] = true, -- Draining Shot (Draining Shot)
            [38671] = true, -- Draining Shot (Draining Shot)
            [38670] = true, -- Draining Shot (Draining Shot)
            [80767] = true, -- Draining Shot (Draining Shot)
            [80764] = true, -- Draining Shot Heal (Draining Shot)

            [31271] = true, -- Arrow Spray (Arrow Spray)
            [38722] = true, -- Arrow Spray (Arrow Spray)
            [31272] = true, -- Arrow Spray (Arrow Spray)

            [38705] = true, -- Bombard (Bombard)
            [38723] = true, -- Bombard (Bombard)
            [38707] = true, -- Bombard (Bombard)
            [38706] = true, -- Bombard (Bombard)

            [38701] = true, -- Acid Spray (Acid Spray)
            [38724] = true, -- Acid Spray (Acid Spray)
            [38702] = true, -- Acid Spray (Acid Spray)
            [38703] = true, -- Acid Spray (Acid Spray)

            [28869] = true, -- Poison Arrow (Poison Arrow)
            [44540] = true, -- Poison Arrow (Poison Arrow)

            [38645] = true, -- Venom Arrow (Venom Arrow)
            [44545] = true, -- Venom Arrow (Venom Arrow)
            [38648] = true, -- Poison Arrow (Venom Arrow)
            [38649] = true, -- Poison Arrow (Venom Arrow)
            [38650] = true, -- Poison Arrow (Venom Arrow)

            [38660] = true, -- Poison Injection (Poison Injection)
            [44549] = true, -- Poison Injection (Poison Injection)

            [55131] = true, -- Rapid Fire (Rapid Fire - All Morphs)
            [83465] = true, -- Rapid Fire (Rapid Fire)
            [86563] = true, -- Rapid Fire (Rapid Fire)

            [85257] = true, -- Toxic Barrage (Toxic Barrage)
            [85260] = true, -- Toxic Barrage (Toxic Barrage)
            [85261] = true, -- Toxic Barrage (Toxic Barrage)

            [85451] = true, -- Ballista (Ballista)
            [85458] = true, -- Ballista (Ballista)
            [85462] = true, -- Ballista (Ballista)

            --------------------------
            -- DESTRUCTION STAFF PASSIVES
            --------------------------

            [16277] = true, -- Light Attack
            [16261] = true, -- Heavy Attack (Frost)
            [18405] = true, -- Heavy Attack
            [18404] = true, -- Heavy Attack Damage Bonus
            [18406] = true, -- Heavy Attack
            [60762] = true, -- Heavy Attack (Frost)

            [16165] = true, -- Light Attack
            [15383] = true, -- Heavy Attack (Flame)
            [15385] = true, -- Heavy Attack
            [23429] = true, -- Heavy Attack Damage Bonus
            [16321] = true, -- Heavy Attack
            [60763] = true, -- Heavy Attack (Fire)

            [18350] = true, -- Light Attack
            [18396] = true, -- Heavy Attack (Shock)
            [19277] = true, -- Shock Pulse
            [60764] = true, -- Heavy Attack (Shock)
            --[67107] = true, -- Partial Heavy Attack (Shock)

            [30948] = true, -- Tri Focus -- Rank 1
            [69774] = true, -- Tri Focus
            [34498] = true, -- Tri Focus
            [30951] = true, -- Tri Focus
            [45500] = true, -- Tri Focus -- Rank 2
            [69773] = true, -- Tri Focus
            [45502] = true, -- Tri Focus
            [45505] = true, -- Tri Focus

            [30957] = true, -- Penetrating Magic -- Rank 1
            [45509] = true, -- Penetrating Magic -- Rank 2

            [30962] = true, -- Elemental Force -- Rank 1
            [45512] = true, -- Elemental Force -- Rank 2

            [30959] = true, -- Ancient Knowledge -- Rank 1
            [45513] = true, -- Ancient Knowledge -- Rank 2

            [30965] = true, -- Destruction Expert -- Rank 1
            [30966] = true, -- Destruction Expert
            [45514] = true, -- Destruction Expert -- Rank 1
            [45515] = true, -- Magicka Restore

            --------------------------
            -- DESTRUCTION STAFF ACTIVES
            --------------------------

            [46340] = true, -- Force Shock (Force Shock - Rank 1)
            [46341] = true, -- Force Shock (Force Shock - Rank 1)
            [46343] = true, -- Force Shock (Force Shock - Rank 1)

            [46348] = true, -- Crushing Shock (Crushing Shock - Rank 1)
            [46350] = true, -- Crushing Shock (Crushing Shock - Rank 1)
            [46351] = true, -- Crushing Shock (Crushing Shock - Rank 1)
            [48010] = true, -- Force Shock (Destruction) (Crushing Shock - Rank 1)
            [48009] = true, -- Stagger(Crushing Shock - Rank 1)
            [48011] = true, -- Uber Attack (Crushing Shock - Rank 1)

            [46356] = true, -- Force Pulse (Force Pulse - Rank 1)
            [46357] = true, -- Force Pulse (Force Pulse - Rank 1)
            [46358] = true, -- Force Pulse (Force Pulse - Rank 1)
            [48019] = true, -- Hit Dummy (Force Pulse - Rank 1)
            [48017] = true, -- Bounce 1 (Force Pulse - Rank 1)
            [48023] = true, -- Bounce 2 (Force Pulse - Rank 1)
            [48016] = true, -- Force Pulse (Force Pulse - Rank 1)
            [48022] = true, -- Force Pulse (Force Pulse - Rank 1)

            [68719] = true, -- Frozen (Wall of Elements - All Ranks) -- Frost
            [43192] = true, -- Fire Wall Damage Bonus (Wall of Elements - All Morphs) -- Fire

            [28858] = true, -- Wall of Elements (Wall of Elements - Rank 1)
            [28807] = true, -- Wall of Fire (Wall of Elements - Rank 1) -- Fire
            [62898] = true, -- Unstable Wall of Fire (Wall of Elements - Rank 1) -- Fire
            [62897] = true, -- Unstable Wall of Fire (Wall of Elements - Rank 1) -- Fire
            [62895] = true, -- Unstable Wall of Fire (Wall of Elements - Rank 1) -- Fire
            [62896] = true, -- Wall of Fire (Wall of Elements - Rank 1) -- Fire
            [28854] = true, -- Wall of Storms (Wall of Elements - Rank 1) -- Storm
            [62969] = true, -- Wall of Storms (Wall of Elements - Rank 1) -- Storm
            [62970] = true, -- Wall of Storms (Wall of Elements - Rank 1) -- Storm
            [62967] = true, -- Wall of Storms (Wall of Elements - Rank 1) -- Storm
            [62971] = true, -- Wall of Storms (Wall of Elements - Rank 1) -- Storm
            [62968] = true, -- Off Balance (Wall of Elements - Rank 1) -- Storm
            [28849] = true, -- Wall of Frost (Wall of Elements - Rank 1) -- Frost
            [62930] = true, -- Unstable Wall of Fire (Wall of Elements - Rank 1) -- Frost
            [62929] = true, -- Unstable Wall of Frost (Wall of Elements - Rank 1) -- Frost
            [62927] = true, -- Unstable Wall of Frost (Wall of Elements - Rank 1) -- Frost
            [62931] = true, -- Wall of Frost (Wall of Elements - Rank 1) -- Frost
            [62928] = true, -- Wall of Frost (Wall of Elements - Rank 1) -- Frost

            [39052] = true, -- Unstable Wall of Elements (Unstable Wall of Elements - Rank 1)
            [39053] = true, -- Unstable Wall of Fire (Unstable Wall of Elements - Rank 1) -- Fire
            [62813] = true, -- Unstable Wall of Fire (Unstable Wall of Elements - Rank 1) -- Fire
            [39057] = true, -- Unstable Wall of Fire (Unstable Wall of Elements - Rank 1) -- Fire
            [39055] = true, -- Unstable Wall of Fire (Unstable Wall of Elements - Rank 1) -- Fire
            [45694] = true, -- Unstable Wall (Unstable Wall of Elements - Rank 1) -- Fire
            [39054] = true, -- Unstable Wall of Fire (Unstable Wall of Elements - Rank 1) -- Fire
            [39056] = true, -- Unstable Wall of Fire (Unstable Wall of Elements - Rank 1) -- Fire
            [39073] = true, -- Unstable Wall of Storms (Unstable Wall of Elements - Rank 1) -- Shock
            [62868] = true, -- Unstable Wall of Fire (Unstable Wall of Elements - Rank 1) -- Shock
            [39081] = true, -- Unstable Wall of Storms (Unstable Wall of Elements - Rank 1) -- Shock
            [39078] = true, -- Unstable Wall of Storms (Unstable Wall of Elements - Rank 1) -- Shock
            [62866] = true, -- Unstable Wall (Unstable Wall of Elements - Rank 1) -- Shock
            [39079] = true, -- Unstable Wall of Storms (Unstable Wall of Elements - Rank 1) -- Shock
            [39080] = true, -- Unstable Wall of Storms (Unstable Wall of Elements - Rank 1) -- Shock
            [39077] = true, -- Off Balance (Unstable Wall of Elements - Rank 1) -- Shock
            [39067] = true, -- Unstable Wall of Frost (Unstable Wall of Elements - Rank 1) -- Frost
            [62840] = true, -- Unstable Wall of Fire (Unstable Wall of Elements - Rank 1) -- Frost
            [39069] = true, -- Unstable Wall of Frost (Unstable Wall of Elements - Rank 1) -- Frost
            [39070] = true, -- Unstable Wall of Frost (Unstable Wall of Elements - Rank 1) -- Frost
            [62838] = true, -- Unstable Wall (Unstable Wall of Elements - Rank 1) -- Frost
            [39071] = true, -- Unstable Wall of Frost (Unstable Wall of Elements - Rank 1) -- Frost
            [39072] = true, -- Unstable Wall of Frost (Unstable Wall of Elements - Rank 1) -- Frost
            [39068] = true, -- Unstable Wall of Frost (Unstable Wall of Elements - Rank 1) -- Frost

            [39011] = true, -- Elemental Blockade (Elemental Blockade - Rank 1)
            [39012] = true, -- Blockade of Fire (Elemental Blockade - Rank 1) -- Fire
            [62914] = true, -- Unstable Wall of Fire (Elemental Blockade - Rank 1) -- Fire
            [62913] = true, -- Unstable Wall of Fire (Elemental Blockade - Rank 1) -- Fire
            [62911] = true, -- Unstable Wall of Fire (Elemental Blockade - Rank 1) -- Fire
            [62912] = true, -- Blockade of Fire (Elemental Blockade - Rank 1) -- Fire
            [39018] = true, -- Blockade of Storms (Elemental Blockade - Rank 1) -- Storm
            [62991] = true, -- Blockade of Storms (Elemental Blockade - Rank 1) -- Storm
            [62989] = true, -- Blockade of Storms (Elemental Blockade - Rank 1) -- Storm
            [62987] = true, -- Blockade of Storms (Elemental Blockade - Rank 1) -- Storm
            [62990] = true, -- Blockade of Storms (Elemental Blockade - Rank 1) -- Storm
            [62988] = true, -- Blockade of Storms (Elemental Blockade - Rank 1) -- Storm
            [39028] = true, -- Blockade of Frost (Elemental Blockade - Rank 1) -- Frost
            [62950] = true, -- Unstable Wall of Fire (Elemental Blockade - Rank 1) -- Frost
            [62949] = true, -- Unstable Wall of Frost (Elemental Blockade - Rank 1) -- Frost
            [62947] = true, -- Unstable Wall of Frost (Elemental Blockade - Rank 1) -- Frost
            [62951] = true, -- Blockade of Frost (Elemental Blockade - Rank 1) -- Frost
            [62948] = true, -- Blockade of Frost (Elemental Blockade - Rank 1) -- Frost

            [29091] = true, -- Destructive Touch (Destructive Touch - Rank 1)
            [29073] = true, -- Flame Touch (Destructive Touch - Rank 1) -- Fire
            [62648] = true, -- Fire Touch (Destructive Touch - Rank 1) -- Fire
            [38172] = true, -- Stun After Knockback Movement (Destructive Touch - Rank 1) -- Fire
            [29075] = true, -- Fire Touch (destruction) (Destructive Touch - Rank 1) -- Fire
            [29089] = true, -- Shock Touch (Destructive Touch - Rank 1) -- Shock
            [62722] = true, -- Shock Touch (Destructive Touch - Rank 1) -- Shock
            [68536] = true, -- Shock Touch (Destructive Touch - Rank 1) -- Shock
            [29078] = true, -- Frost Touch (Destructive Touch - Rank 1) -- Frost
            [62692] = true, -- Frost Touch (Destructive Touch - Rank 1) -- Frost
            [30450] = true, -- Deep Freeze (Destructive Touch - Rank 1) -- Frost

            [38984] = true, -- Destructive Clench (Destructive Clench - Rank 1)
            [38985] = true, -- Flame Clench (Destructive Clench - Rank 1) -- Fire
            [62668] = true, -- Fire Clench (Destructive Clench - Rank 1) -- Fire
            [38987] = true, -- Stun After Knockback Movement (Destructive Clench - Rank 1) -- Fire
            [38986] = true, -- Fire Touch (destruction) (Destructive Clench - Rank 1) -- Fire
            [38993] = true, -- Shock Clench (Destructive Clench - Rank 1) -- Shock
            [62733] = true, -- Shock Clench (Destructive Clench - Rank 1) -- Shock
            [68635] = true, -- Shock Touch (Destructive Clench - Rank 1) -- Shock
            [62734] = true, -- Shock Clench Explosion (Destructive Clench - Rank 1) -- Shock
            [38989] = true, -- Frost Clench (Destructive Clench - Rank 1) -- Frost
            [62702] = true, -- Frost Clench (Destructive Clench - Rank 1) -- Frost
            [38990] = true, -- Deep Freeze (Destructive Clench - Rank 1) -- Frost

            [38937] = true, -- Destructive Reach (Destructive Reach - Rank 1)
            [38944] = true, -- Flame Reach (Destructive Reach - Rank 1) -- Fire
            [62682] = true, -- Flame Reach (Destructive Reach - Rank 1) -- Fire
            [38946] = true, -- Stun After Knockback Movement (Destructive Reach - Rank 1) -- Fire
            [38945] = true, -- Flame Reach (destruction) (Destructive Reach - Rank 1) -- Fire
            [38978] = true, -- Shock Reach (Destructive Reach - Rank 1) -- Shock
            [62745] = true, -- Shock Reach (Destructive Reach - Rank 1) -- Shock
            [68574] = true, -- Shock Touch (Destructive Reach - Rank 1) -- Shock
            [38970] = true, -- Frost Reach (Destructive Reach - Rank 1) -- Frost
            [62712] = true, -- Frost Reach (Destructive Reach - Rank 1) -- Frost
            [38971] = true, -- Frost Grip (Destructive Reach - Rank 1) -- Frost

            [29173] = true, -- Weakness to Elements (Weakness to Elements - Rank 1)
            [53881] = true, -- Major Spell Shatter (Weakness to Elements - Rank 1)

            [39089] = true, -- Elemental Susceptibility (Elemental Susceptibility - Rank 1)
            [62775] = true, -- Major Breach (Elemental Susceptibility - Rank 1)

            [39095] = true, -- Elemental Drain (Elemental Drain - Rank 1)
            [39100] = true, -- Minor Magickasteal (Elemental Drain - Rank 1)
            [62787] = true, -- Major Breach (Elemental Drain - Rank 1)
            [39099] = true, -- Minor Magickasteal (Elemental Drain - Rank 1)

            [28800] = true, -- Impulse (Impulse - Rank 1)
            [28794] = true, -- Fire Impulse (Impulse - Rank 1)
            [28799] = true, -- Shock Impulse (Impulse - Rank 1)
            [28798] = true, -- Frost Impulse (Impulse - Rank 1)

            [39143] = true, -- Elemental Ring (Elemental Ring - Rank 1)
            [39145] = true, -- Elemental Ring (Fire Ring - Rank 1)
            [39149] = true, -- Elemental Ring (Fire Ring - Rank 1)
            [39147] = true, -- Elemental Ring (Shock Ring - Rank 1)
            [39153] = true, -- Elemental Ring (Shock Ring - Rank 1)
            [39146] = true, -- Elemental Ring (Frost Ring - Rank 1)
            [39151] = true, -- Elemental Ring (Frost Ring - Rank 1)

            [39161] = true, -- Pulsar (Pulsar - Rank 1)
            [39162] = true, -- Flame Pulsar (Pulsar - Rank 1)
            [39168] = true, -- Minor Mangle (Pulsar - Rank 1)
            [39167] = true, -- Storm Pulsar (Pulsar - Rank 1)
            [39181] = true, -- Minor Mangle (Pulsar - Rank 1)
            [39163] = true, -- Frost Pulsar (Pulsar - Rank 1)
            [39180] = true, -- Minor Mangle (Pulsar - Rank 1)

            [83619] = true, -- Elemental Storm (Elemental Storm - Rank 1)
            [83625] = true, -- Fire Storm (Elemental Storm - Rank 1)
            [83626] = true, -- Fire Storm (Elemental Storm - Rank 1)
            [83630] = true, -- Thunder Storm (Elemental Storm - Rank 1)
            [83631] = true, -- Thunder Storm (Elemental Storm - Rank 1)
            [83628] = true, -- Ice Storm (Elemental Storm - Rank 1)
            [83629] = true, -- Ice Storm (Elemental Storm - Rank 1)

            [84434] = true, -- Elemental Rage (Elemental Rage - Rank 1)
            [85126] = true, -- Fiery Rage (Elemental Rage - Rank 1)
            [85127] = true, -- Fiery Rage (Elemental Rage - Rank 1)
            [85130] = true, -- Thunderous Rage (Elemental Rage - Rank 1)
            [85131] = true, -- Thunderous Rage (Elemental Rage - Rank 1)
            [85128] = true, -- Icy Rage (Elemental Rage - Rank 1)
            [85129] = true, -- Icy Rage (Elemental Rage - Rank 1)
            [104825] = true, -- Icy Rage (Elemental Rage - Rank 1)

            [83642] = true, -- Eye of the Storm (Eye of the Storm - Rank 1)
            [83682] = true, -- Eye of Flame (Eye of the Storm - Rank 1)
            [83683] = true, -- Eye of Flame (Eye of the Storm - Rank 1)
            [83686] = true, -- Eye of Lightning (Eye of the Storm - Rank 1)
            [83687] = true, -- Eye of Lightning (Eye of the Storm - Rank 1)
            [83684] = true, -- Eye of Frost (Eye of the Storm - Rank 1)
            [83685] = true, -- Eye of Frost (Eye of the Storm - Rank 1)

            --------------------------
            -- RESTORATION STAFF PASSIVES
            --------------------------

            [16145] = true, -- Light Attack
            [16212] = true, -- Heavy Attack
            [32760] = true, -- Heavy Attack (Restoration)
            --[67106] = true, -- Partial Heavy Attack (Resto)

            [30973] = true, -- Essence Drain (Rank 1)
            [77918] = true, -- Major Mending
            [30978] = true, -- Essence Drain
            [45517] = true, -- Essence Drain (Rank 2)
            [77922] = true, -- Major Mending
            [45518] = true, -- Essence Drain

            [30980] = true, -- Restoration Expert (Rank 1)
            [45519] = true, -- Restoration Expert (Rank 2)

            [30972] = true, -- Cycle of Life (Rank 1)
            [45520] = true, -- Cycle of Life (Rank 2)

            [30869] = true, -- Absorb (Rank 1)
            [30971] = true, -- Absorb
            [45521] = true, -- Absorb (Rank 2)
            [45522] = true, -- Absorb

            [30981] = true, -- Restoration Master (Rank 1)
            [45524] = true, -- Restoration Master (Rank 2)

            --------------------------
            -- RESTORATION STAFF ACTIVES
            --------------------------

            [52515] = true, -- Grand Healing Fx (Grand Healing - All Morphs)
            [28385] = true, -- Grand Healing (Grand Healing - Rank 1)
            [28386] = true, -- Grand Healing (Grand Healing - Rank 1)

            [40058] = true, -- Illustrious Healing (Illustrious Healing - Rank 1)
            [40059] = true, -- Illustrious Healing (Illustrious Healing - Rank 1)

            [40060] = true, -- Healing Springs (Healing Springs - Rank 1)
            [40061] = true, -- Healing Springs (Healing Springs - Rank 1)
            [40062] = true, -- Healing Springs (Healing Springs - Rank 1)

            [46257] = true, -- Regeneration (Regeneration - Rank 1)
            [28536] = true, -- Regeneration (Regeneration - Rank 1)
            [57452] = true, -- Regeneration Dummy (Regeneration - Rank 1)

            [46262] = true, -- Regeneration (Rapid Regeneration - Rank 1)
            [40076] = true, -- Rapid Regeneration (Rapid Regeneration - Rank 1)
            [57466] = true, -- Rapid Regeneration Dummy (Rapid Regeneration - Rank 1)

            [46266] = true, -- Mutagen (Mutagen - Rank 1)
            [40079] = true, -- Mutagen (Mutagen - Rank 1)
            [40081] = true, -- Mutagen (Mutagen - Rank 1)
            [57468] = true, -- Mutagen Dummy (Mutagen - Rank 1)

            [37243] = true, -- Blessing of Protection (Blessing of Protection - Rank 1)
            [37247] = true, -- Minor Resolve (Blessing of Protection - Rank 1)
            [62619] = true, -- Minor Ward (Blessing of Protection - Rank 1)
            [38300] = true, -- Blessing of Protection (Blessing of Protection - Rank 1)
            [38299] = true, -- Blessing of Protection (Blessing of Protection - Rank 1)
            [38298] = true, -- Blessing of Protection (Blessing of Protection - Rank 1)

            [40103] = true, -- Blessing of Restoration (Blessing of Restoration - Rank 1)
            [62626] = true, -- Minor Resolve (Blessing of Restoration - Rank 1)
            [62627] = true, -- Minor Ward (Blessing of Restoration - Rank 1)
            [40106] = true, -- Blessing of Restoration (Blessing of Restoration - Rank 1)
            [40108] = true, -- Blessing of Restoration (Blessing of Restoration - Rank 1)
            [40105] = true, -- Blessing of Restoration (Blessing of Restoration - Rank 1)

            [40094] = true, -- Combat Prayer (Combat Prayer - Rank 1)
            [62634] = true, -- Minor Resolve (Combat Prayer - Rank 1)
            [62635] = true, -- Minor Ward (Combat Prayer - Rank 1)
            [62636] = true, -- Minor Berserk (Combat Prayer - Rank 1)
            [40097] = true, -- Combat Prayer (Combat Prayer - Rank 1)
            [40096] = true, -- Combat Prayer (Combat Prayer - Rank 1)
            [40099] = true, -- Combat Prayer (Combat Prayer - Rank 1)

            [37232] = true, -- Steadfast Ward (Steadfast Ward - Rank 1)

            [40130] = true, -- Ward Ally (Ward Ally - Rank 1)
            [40132] = true, -- Ward Ally (Ward Ally - Rank 1)

            [40126] = true, -- Healing Ward (Healing Ward - Rank 1)
            [49068] = true, -- Healing Ward (Healing Ward - Rank 1)
            [40128] = true, -- Healing Ward (Healing Ward - Rank 1)

            [31531] = true, -- Force Siphon (Force Siphon - Rank 1)
            [88565] = true, -- Minor Lifesteal (Force Siphon - Rank 1)
            [33541] = true, -- Minor Lifesteal (Force Siphon - Rank 1)

            [40109] = true, -- Siphon Spirit (Siphon Spirit - Rank 1)
            [88575] = true, -- Minor Lifesteal (Siphon Spirit - Rank 1)
            [88576] = true, -- Minor Lifesteal (Siphon Spirit - Rank 1)
            [40110] = true, -- Minor Lifesteal (Siphon Spirit - Rank 1)
            [40114] = true, -- Minor Magickasteal (Siphon Spirit - Rank 1)

            [40116] = true, -- Quick Siphon (Quick Siphon - Rank 1)
            [88606] = true, -- Minor Lifesteal (Quick Siphon - Rank 1)
            [40117] = true, -- Minor Lifesteal (Quick Siphon - Rank 1)

            [83552] = true, -- Panacea (Panacea - Rank 1)
            [83844] = true, -- Panacea (Panacea - Rank 1)

            [83850] = true, -- Life Giver (Life Giver - Rank 1)
            [83851] = true, -- Life Giver (Life Giver - Rank 1)
            [83867] = true, -- Life Giver (Life Giver - Rank 1)
            [83876] = true, -- Life Giver (Life Giver - Rank 1)

            [85132] = true, -- Light's Champion (Light's Champion - Rank 1)
            [85133] = true, -- Light's Champion (Light's Champion - Rank 1)
            [85154] = true, -- Major Force (Light's Champion - Rank 1)
            [85155] = true, -- Major Protection (Light's Champion - Rank 1)

            --------------------------
            -- ARMOR PASSIVES
            --------------------------

            -- LIGHT ARMOR
            [29639] = true, -- Evocation (Rank 1)
            [45548] = true, -- Evocation (Rank 2)
            [45549] = true, -- Evocation (Rank 3)
            [29665] = true, -- Recovery (Rank 1)
            [45557] = true, -- Recovery (Rank 2)
            [29663] = true, -- Spell Warding (Rank 1)
            [45559] = true, -- Spell Warding (Rank 2)
            [29668] = true, -- Prodigy (Rank 1)
            [45561] = true, -- Prodigy (Rank 2)
            [29667] = true, -- Concentration (Rank 1)
            [45562] = true, -- Concentration (Rank 2)

            -- MEDIUM ARMOR
            [29743] = true, -- Dexterity (Rank 1)
            [45563] = true, -- Dexterity (Rank 2)
            [45564] = true, -- Dexterity (Rank 3)
            [29687] = true, -- Wind Walker (Rank 1)
            [45565] = true, -- Wind Walker (Rank 2)
            [29738] = true, -- Improved Sneak (Rank 1)
            [45567] = true, -- Improved Sneak (Rank 2)
            [29686] = true, -- Agility (Rank 1)
            [45572] = true, -- Agility (Rank 2)
            [29742] = true, -- Athletics (Rank 1)
            [45574] = true, -- Athletics (Rank 2)

            -- HEAVY ARMOR
            [29825] = true, -- Resolve (Rank 1)
            [45531] = true, -- Resolve (Rank 2)
            [45533] = true, -- Resolve (Rank 3)
            [29769] = true, -- Constitution (Rank 1)
            [58428] = true, -- Constitution
            [58503] = true, -- Constitution
            [45526] = true, -- Constitution (Rank 2)
            [58430] = true, -- Constitution
            [58431] = true, -- Constitution
            [29804] = true, -- Juggernaught (Rank 1)
            [45546] = true, -- Juggernaught (Rank 2)
            [29773] = true, -- Revitalize (Rank 1)
            [45528] = true, -- Revitalize (Rank 2)
            [29791] = true, -- Rapid Mending (Rank 1)
            [45529] = true, -- Rapid Mending (Rank 2)

            --------------------------
            -- ARMOR ACTIVES
            --------------------------

            -- LIGHT ARMOR
            [29338] = true, -- Annulment (Annulment)

            [39188] = true, -- Dampen Magic (Dampen Magic)
            [39186] = true, -- Dampen Magic (Dampen Magic)

            [66881] = true, -- Harness Magicka Bonus (Harness Magicka)
            [39182] = true, -- Harness Magicka (Harness Magicka)
            [39184] = true, -- Harness Magicka (Harness Magicka)
            [60968] = true, -- Harness Magicka Counter (Harness Magicka)

            -- MEDIUM ARMOR
            [29556] = true, -- Evasion (Evasion - Rank 1)
            [63015] = true, -- Major Evasion (Evasion - Rank 1)

            [39195] = true, -- Shuffle (Shuffle - Rank 1)
            [63019] = true, -- Major Evasion (Shuffle - Rank 1)
            [39196] = true, -- Shuffle (Shuffle - Rank 1)

            [39192] = true, -- Elude (Elude - Rank 1)
            [63030] = true, -- Major Evasion (Elude - Rank 1)

            -- HEAVY ARMOR
            [29552] = true, -- Immovable (Immovable)
            [29553] = true, -- Immovable (Immovable)
            [63084] = true, -- Major Resolve (Immovable)
            [63085] = true, -- Major Ward (Immovable)

            [63080] = true, -- Immovable Brute (Immovable Brute)
            [39205] = true, -- Immovable Brute (Immovable Brute)
            [63133] = true, -- Immovable Brute (Immovable Brute)
            [63134] = true, -- Major Resolve (Immovable Brute)
            [63135] = true, -- Major Ward (Immovable Brute)

            [39197] = true, -- Unstoppable (Unstoppable)
            [63118] = true, -- Unstoppable (Unstoppable)
            [63119] = true, -- Major Resolve (Unstoppable)
            [63120] = true, -- Major Ward (Unstoppable)


            ------------------------------
            -- DARK BROTHERHOOD PASSIVES
            -------------------------------

            [78219] = true, -- Blade of Woe (Rank 1)
            [76325] = true, -- Blade of Woe
            [77101] = true, -- Blade of Woe
            [77102] = true, -- Blade of Woe Snare
            [81101] = true, -- Assassins League Style Item Gi
            [81118] = true, -- Assassins League Style Item FX
            [81604] = true, -- Self Reveal

            [77392] = true, -- Scales of Pitiless Justice (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [77394] = true, -- Scales of Pitiless Justice II (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [77395] = true, -- Scales of Pitiless Justice III (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [79865] = true, -- Scales of Pitiless Justice IV (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion

            [77397] = true, -- Padomaic Sprint (Rank 1)
            [79623] = true, -- Major Expedition (Blade of Woe Kill)
            [80392] = true, -- Major Expedition (Normal Kill)
            [77398] = true, -- Padomaic Sprint II (Rank 2)
            [79624] = true, -- Major Expedition (Blade of Woe Kill)
            [80394] = true, -- Major Expedition (Normal Kill)
            [77399] = true, -- Padomaic Sprint III (Rank 3)
            [79625] = true, -- Major Expedition (Blade of Woe Kill)
            [80396] = true, -- Major Expedition (Normal Kill)
            [79868] = true, -- Padomaic Sprint IV (Rank 4)
            [79877] = true, -- Major Expedition (Blade of Woe Kill)
            [80398] = true, -- Major Expedition (Normal Kill)

            [77396] = true, -- Shadowy Supplier (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion

            [77400] = true, -- Shadow Rider (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion

            [77401] = true, -- Spectral Assassin (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [80636] = true, -- Spectral Assassin

            ------------------------------
            -- FIGHTERS GUILD PASSIVES
            ------------------------------

            [29062] = true, -- Intimidating Presence (Rank 1)

            [35803] = true, -- Slayer (Rank 1)
            [45595] = true, -- Slayer (Rank 2)
            [45596] = true, -- Slayer (Rank 3)

            [35800] = true, -- Banish the Wicked (Rank 1)
            [35801] = true, -- Banish the Wicked
            [45597] = true, -- Banish the Wicked (Rank 2)
            [45598] = true, -- Banish the Wicked
            [45599] = true, -- Banish the Wicked (Rank 3)
            [45600] = true, -- Banish the Wicked

            [40393] = true, -- Skilled Tracker (Rank 1)

            [35804] = true, -- Bounty Hunter (Rank 1)

            -------------------------------
            -- FIGHTERS GUILD ACTIVES
            -------------------------------

            [35721] = true, -- Silver Bolts (Silver Bolts - Rank 1)
            [35736] = true, -- Silver Bolts (Silver Bolts - Rank 1)

            [40300] = true, -- Silver Shards (Silver Shards - Rank 1)
            [40302] = true, -- Silver Shards (Silver Shards - Rank 1)
            [40327] = true, -- Silver Shards (Silver Shards - Rank 1)

            [40336] = true, -- Silver Leash (Silver Leash - Rank 1)
            [40340] = true, -- Silver Bolts (Silver Leash - Rank 1)
            [109354] = true, -- Silver Leash (Silver Leash - Rank 1)
            [42102] = true, -- Silver Leash (Silver Leash - Rank 1)

            [35737] = true, -- Circle of Protection (Circle of Protection - Rank 1)
            [80271] = true, -- Minor Endurance (Circle of Protection - Rank 1)
            [35739] = true, -- Minor Protection (Circle of Protection - Rank 1)
            [35738] = true, -- Circle of Protection (Circle of Protection - Rank 1)
            [101696] = true, -- Circle of Protection (Circle of Protection - Rank 1)

            [40181] = true, -- Turn Undead (Turn Undead - Rank 1)
            [80276] = true, -- Minor Endurance (Turn Undead - Rank 1)
            [40185] = true, -- Minor Protection (Turn Undead - Rank 1)
            [40184] = true, -- Turn Undead (Turn Undead - Rank 1)
            [41947] = true, -- Turn Undead (Turn Undead - Rank 1)
            [40187] = true, -- Turn Undead (Turn Undead - Rank 1)
            [101697] = true, -- Turn Undead (Turn Undead - Rank 1)

            [40169] = true, -- Ring of Preservation (Ring of Preservation - Rank 1)
            [80284] = true, -- Minor Endurance (Ring of Preservation - Rank 1)
            [40171] = true, -- Minor Protection (Ring of Preservation - Rank 1)
            [80293] = true, -- Ring of Preservation (Ring of Preservation - Rank 1)
            [101699] = true, -- Ring of Protection (Ring of Preservation - Rank 1)
            [40170] = true, -- Ring of Preservation (Ring of Preservation - Rank 1)

            [35765] = true, -- Sense Evil (Expert Hunter - All Ranks)
            [64509] = true, -- Major Savagery (Expert Hunter - All Ranks)
            [35762] = true, -- Expert Hunter (Expert Hunter - Rank 1)
            [80307] = true, -- Expert Hunter (Expert Hunter - Rank 1)

            [40194] = true, -- Evil Hunter (Evil Hunter - Rank 1)
            [80381] = true, -- Evil Hunter (Evil Hunter - Rank 1)

            [80469] = true, -- Sense Evil 1 (Camouflaged Hunter - Rank 1)
            [40195] = true, -- Camouflaged Hunter (Camouflaged Hunter - Rank 1)
            [80338] = true, -- Camouflaged Hunter (Camouflaged Hunter - Rank 1)
            [80471] = true, -- Minor Berserk (Camouflaged Hunter - Rank 1)

            [35750] = true, -- Trap Beast (Trap Beast - Rank 1)
            [35757] = true, -- Trap Beast (Trap Beast - Rank 1)
            [35754] = true, -- Trap Beast (Trap Beast - Rank 1)
            [35756] = true, -- Trap Beast (Trap Beast - Rank 1)
            [35753] = true, -- Trap Beast (Trap Beast - Rank 1)
            [68595] = true, -- Minor Force (Trap Beast - Rank 1)

            [40382] = true, -- Rearming Trap (Rearming Trap - Rank 1)
            [40386] = true, -- Rearming Trap (Rearming Trap - Rank 1)
            [40389] = true, -- Rearming Trap (Rearming Trap - Rank 1)
            [40385] = true, -- Rearming Trap (Rearming Trap - Rank 1)
            [40384] = true, -- Rearming Trap (Rearming Trap - Rank 1)
            [68632] = true, -- Minor Force (Rearming Trap - Rank 1)
            [40388] = true, -- Rearming Trap (Rearming Trap - Rank 1)
            [40392] = true, -- Rearming Trap (Rearming Trap - Rank 1)
            [40391] = true, -- Rearming Trap (Rearming Trap - Rank 1)

            [40372] = true, -- Lightweight Beast Trap (Lightweight Beast Trap - Rank 1)
            [40378] = true, -- Daedric Mines (Lightweight Beast Trap - Rank 1)
            [40377] = true, -- Summon Shade (Lightweight Beast Trap - Rank 1)
            [40376] = true, -- Lightweight Beast Trap (Lightweight Beast Trap - Rank 1)
            [40375] = true, -- Lightweight Beast Trap (Lightweight Beast Trap - Rank 1)
            [40374] = true, -- Lightweight Beast Trap (Lightweight Beast Trap - Rank 1)
            [68628] = true, -- Minor Force (Lightweight Beast Trap - Rank 1)

            [35713] = true, -- Dawnbreaker (Dawnbreaker - Rank 1)
            [62305] = true, -- Dawnbreaker (Dawnbreaker - Rank 1)

            [40163] = true, -- Flawless Dawnbreaker Passive (Flawless Dawnbreaker - Rank 1)
            [42498] = true, -- Flawless Dawnbreaker Passive (Flawless Dawnbreaker - Rank 1)
            [40161] = true, -- Flawless Dawnbreaker (Flawless Dawnbreaker - Rank 1)
            [62310] = true, -- Flawless Dawnbreaker (Flawless Dawnbreaker - Rank 1)

            [40158] = true, -- Dawnbreaker of Smiting (Dawnbreaker of Smiting - Rank 1)
            [40160] = true, -- Dawnbreaker of Smiting (Dawnbreaker of Smiting - Rank 1)
            [62314] = true, -- Dawnbreaker of Smiting (Dawnbreaker of Smiting - Rank 1)

            ------------------------------
            -- MAGES GUILD PASSIVES
            ------------------------------

            [29061] = true, -- Persuasive Will (Rank 1)

            [40436] = true, -- Mage Adept (Rank 1)
            [45601] = true, -- Mage Adept (Rank 2)

            [40437] = true, -- Everlasting Magic (Rank 1)
            [45602] = true, -- Everlasting Magic (Rank 2)

            [40438] = true, -- Magicka Controller (Rank 1)
            [45603] = true, -- Magicka Controller (Rank 2)

            [43561] = true, -- Might of the Guild (Rank 1)
            [65507] = true, -- Empower
            [45607] = true, -- Might of the Guild (Rank 2)
            [65541] = true, -- Empower

            ------------------------------
            -- MAGES GUILD ACTIVES
            ------------------------------

            [77928] = true, -- Major Prophecy (Magelight)
            [30920] = true, -- Magelight (Magelight)
            [31079] = true, -- Magelight (Magelight)

            [77945] = true, -- Major Prophecy (Inner Light)
            [40478] = true, -- Inner Light (Inner Light)
            [40480] = true, -- Inner Light (Inner Light)

            [77958] = true, -- Major Prophecy (Radiant Magelight)
            [77960] = true, -- Radiant Magelight (Radiant Magelight)
            [40483] = true, -- Radiant Magelight (Radiant Magelight)
            [40484] = true, -- Radiant Magelight (Radiant Magelight)

            [28567] = true, -- Entropy (Entropy)
            [28569] = true, -- Entropy (Entropy)
            [63223] = true, -- Major Sorcery (Entropy)
            [40451] = true, -- Entropy (Entropy)

            [40457] = true, -- Degeneration (Degeneration)
            [40460] = true, -- Degeneration (Degeneration)
            [63227] = true, -- Major Sorcery (Degeneration)
            [40458] = true, -- Degeneration (Degeneration)
            [40464] = true, -- Degeneration (Degeneration)

            [40453] = true, -- Structured Entropy Passive (Structured Entropy)
            [40452] = true, -- Structured Entropy (Structured Entropy)
            [40456] = true, -- Structured Entropy (Structured Entropy)
            [63231] = true, -- Major Sorcery (Structured Entropy)
            [40454] = true, -- Structured Entropy (Structured Entropy)

            [31637] = true, -- Only 1 Fire Rune (Fire Rune - All Ranks)
            [31632] = true, -- Fire Rune (Fire Rune)
            [40648] = true, -- Fire Rune (Fire Rune)
            [40974] = true, -- Fire Rune (Fire Rune)
            [31635] = true, -- Fire Rune (Fire Rune)
            [31633] = true, -- Fire Rune (Fire Rune)

            [40470] = true, -- Volcanic Rune (Volcanic Rune)
            [40693] = true, -- Volcanic Rune (Volcanic Rune)
            [41008] = true, -- Volcanic Rune (Volcanic Rune)
            [40473] = true, -- Volcanic Rune (Volcanic Rune)
            [40477] = true, -- Volcanic Rune (Volcanic Rune)
            [40476] = true, -- Volcanic Rune (Volcanic Rune)
            [40472] = true, -- Volcanic Rune (Volcanic Rune)

            [40465] = true, -- Scalding Rune (Scalding Rune)
            [40692] = true, -- Scalding Rune (Scalding Rune)
            [40994] = true, -- Scalding Rune (Scalding Rune)
            [40469] = true, -- Scalding Rune (Scalding Rune)
            [40468] = true, -- Scalding Rune (Scalding Rune)
            [40467] = true, -- Scalding Rune (Scalding Rune)

            [31642] = true, -- Equilibrium (Equilibrium)
            [31644] = true, -- Equilibrium (Equilibrium)
            [48131] = true, -- Equilibrium (Equilibrium)
            [97279] = true, -- Equilibrium (Equilibrium)

            [40445] = true, -- Spell Symmetry (Spell Symmetry)
            [40446] = true, -- Spell Symmetry (Spell Symmetry)
            [40449] = true, -- Spell Symmetry (Spell Symmetry)
            [48136] = true, -- Spell Symmetry (Spell Symmetry)
            [97293] = true, -- Equilibrium (Equilibrium)

            [40441] = true, -- Balance (Balance)
            [40442] = true, -- Balance (Balance)
            [40443] = true, -- Major Ward (Balance)
            [80160] = true, -- Major Resolve (Balance)
            [48141] = true, -- Balance (Balance)
            [97297] = true, -- Equilibrium (Equilibrium)

            [16536] = true, -- Meteor (Meteor)
            [63430] = true, -- Meteor (Meteor)
            [17912] = true, -- Meteor (Meteor)
            [16538] = true, -- Meteor Knockback (Meteor)
            [63429] = true, -- Meteor (Meteor)

            [40489] = true, -- Ice Comet (Ice Comet)
            [63456] = true, -- Ice Comet (Ice Comet)
            [63457] = true, -- Ice Comet (Ice Comet)
            [40492] = true, -- Ice Comet (Ice Comet)
            [63455] = true, -- Ice Comet Knockback (Ice Comet)
            [63454] = true, -- Ice Comet (Ice Comet)

            [40493] = true, -- Shooting Star (Shooting Star)
            [63474] = true, -- Shooting Star (Shooting Star)
            [63472] = true, -- Shooting Star (Shooting Star)
            [40495] = true, -- Shooting Star (Shooting Star)
            [63473] = true, -- Shooting Star (Shooting Star)
            [63471] = true, -- Shooting Star (Shooting Star)

            ------------------------------
            -- PSIJIC ORDER PASSIVES
            ------------------------------

            [103793] = true, -- See the Unseen (See the Unseen - Rank 1)

            [103809] = true, -- Clairvoyance (Clairvoyance - Rank 1)
            [103811] = true, -- Clairvoyance (Clairvoyance - Rank 2)

            [103819] = true, -- Spell Orb (Spell Orb - Rank 1)
            [103820] = true, -- Spell Orb
            [103827] = true, -- Spell Orb
            [103828] = true, -- Spell Orb
            [103878] = true, -- Spell Orb (Spell Orb - Rank 2)
            [103879] = true, -- Spell Orb
            [103880] = true, -- Spell Orb
            [103881] = true, -- Spell Orb

            [103888] = true, -- Concentrated Barrier (Concentrated Barrier - Rank 1)
            [103923] = true, -- Concentrated Barrier
            [103942] = true, -- Concentrated Barrier
            [104313] = true, -- Concentrated Barrier

            [103964] = true, -- Concentrated Barrier (Concentrated Barrier - Rank 2)
            [103966] = true, -- Concentrated Barrier
            [103968] = true, -- Concentrated Barrier
            [104338] = true, -- Concentrated Barrier

            [103972] = true, -- Deliberation (Deliberation - Rank 1)

            ------------------------------
            -- PSIJIC ORDER ACTIVE ABILITIES
            ------------------------------

            [103488] = true, -- Time Stop (Time Stop)
            [109176] = true, -- Time Stop (Time Stop)
            [103538] = true, -- Time Stop (Time Stop)
            [104007] = true, -- Time Stop (Time Stop)
            [104009] = true, -- Time Stop (Time Stop)
            [104050] = true, -- Time Stop (Time Stop)

            [104059] = true, -- Borrowed Time (Borrowed Time)
            [109178] = true, -- Borrowed Time (Borrowed Time)
            [104071] = true, -- Borrowed Time (Borrowed Time)
            [104072] = true, -- Borrowed Time (Borrowed Time)
            [104073] = true, -- Borrowed Time (Borrowed Time)
            [104075] = true, -- Borrowed Time (Borrowed Time)
            [104078] = true, -- Borrowed Time (Borrowed Time)

            [103483] = true, -- Imbue Weapon (Imbue Weapon)
            [103485] = true, -- Imbue Weapon (Imbue Weapon)

            [103571] = true, -- Elemental Weapon (Elemental Weapon)
            [103572] = true, -- Elemental Weapon (Elemental Weapon)

            [103503] = true, -- Accelerate (Accelerate)
            [103520] = true, -- Major Expedition (Accelerate)
            [103521] = true, -- Minor Force (Accelerate)

            [103706] = true, -- Channeled Acceleration (Channeled Acceleration)
            [103707] = true, -- Major Expedition (Channeled Acceleration)
            [103708] = true, -- Minor Force (Channeled Acceleration)

            [103543] = true, -- Mend Wounds (Mend Wounds)
            [107583] = true, -- Mend Wounds (Mend Wounds)
            [107579] = true, -- Mend Wounds (Mend Wounds)

            [103747] = true, -- Mend Spirit (Mend Spirit)

            [107632] = true, -- Major Resolve (Mend Spirit)
            [107631] = true, -- Major Ward (Mend Spirit)

            [103752] = true, -- Major Resolve (Mend Spirit)
            [103751] = true, -- Major Ward (Mend Spirit)

            -- LEGERDEMAIN
            [63799] = true, -- Improved Hiding (Rank 1)
            [63800] = true, -- Improved Hiding (Rank 2)
            [63801] = true, -- Improved Hiding (Rank 3)
            [63802] = true, -- Improved Hiding (Rank 4)

            [63803] = true, -- Light Fingers (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [63804] = true, -- Light Fingers (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [63805] = true, -- Light Fingers (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [63806] = true, -- Light Fingers (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion

            [63807] = true, -- Trafficker (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [63808] = true, -- Trafficker (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [63809] = true, -- Trafficker (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [63810] = true, -- Trafficker (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion

            [63811] = true, -- Locksmith (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [63812] = true, -- Locksmith (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [63813] = true, -- Locksmith (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [63814] = true, -- Locksmith (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion

            [63815] = true, -- Kickback (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [63816] = true, -- Kickback (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [63817] = true, -- Kickback (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [63818] = true, -- Kickback (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion

            -- SOUL MAGIC
            [39266] = true, -- Soul Shatter (Rank 1)
            [39267] = true, -- Soul Shatter
            [39268] = true, -- Soul Shatter
            [45583] = true, -- Soul Shatter (Rank 2)
            [45584] = true, -- Soul Shatter
            [45585] = true, -- Soul Shatter

            [39269] = true, -- Soul Summons (Rank 1)
            [45590] = true, -- Soul Summons (Rank 2)
            [43752] = true, -- Soul Summons

            [39263] = true, -- Soul Lock (Rank 1)
            [39264] = true, -- Soul Trap
            [45580] = true, -- Soul Lock (Rank 2)
            [45582] = true, -- Soul Trap

            -- VAMPIRE
            [35770] = true, -- Vampirism Base
            [44767] = true, -- Sense Fed Upon
            [80225] = true, -- Timer Reducer
            [35771] = true, -- Stage 1 Vampirism
            [38414] = true, -- Stage 1 Vampirism
            [35776] = true, -- Stage 2 Vampirism
            [35774] = true, -- Stage 2 Vampirism
            [38415] = true, -- Stage 2 Vampirism
            [35783] = true, -- Stage 3 Vampirism
            [35784] = true, -- Stage 3 Vampirism
            [35785] = true, -- Stage 3 Vampirism
            [38416] = true, -- Stage 3 Vampirism
            [35792] = true, -- Stage 4 Vampirism
            [35790] = true, -- Stage 4 Vampirism
            [35791] = true, -- Stage 4 Vampirism
            [38417] = true, -- Stage 4 Vampirism

            [33152] = true, -- Feed
            [33177] = true, -- Feed
            [33175] = true, -- Feed
            [32901] = true, -- Essenece Drained

            [42054] = true, -- Savage Feeding (Rank 1)
            [33182] = true, -- Uber Attack
            [33183] = true, -- Off-Balance Self
            [46045] = true, -- Savage Feeding (Rank 2)
            [46047] = true, -- Uber Attack
            [46046] = true, -- Off-Balance Self

            [33095] = true, -- Supernatural Recovery (Rank 1)
            [46041] = true, -- Supernatural Recovery (Rank 2)


            [33091] = true, -- Blood Ritual (Rank 1)
            -- ================================================================================= THESE NEED CHECKED LATER
            [40349] = true, -- Feed
            [40351] = true, -- Feed
            [40350] = true, -- Feed
            [40353] = true, -- Uber Attack
            [40359] = true, -- Fed on ally
            --[40355] = true, -- Ally Feed
            [40360] = true, -- Vampirism
            -- ================================================================================= THESE NEED CHECKED LATER

            [33096] = true, -- Undeath (Rank 1)
            [46040] = true, -- Undeath (Rank 2)

            [33093] = true, -- Unnatural Resistance (Rank 1)

            [33090] = true, -- Dark Stalker (Rank 1)


            -- WEREWOLF
            [35658] = true, -- Lycanthrophy
            -- ROOM HERE FOR LUPINUS
            [39033] = true, -- Begin Werewolf
            [39035] = true, -- Werewolf
            [39023] = true, -- Charge Werewolf
            [39025] = true, -- Charge Werewolf
            [39038] = true, -- Werewolf Effects
            [39043] = true, -- TransformBonus Movement
            [39051] = true, -- Kill Trigger
            [48497] = true, -- Sense Fed Upon

            [39477] = true, -- De-Werewolf
            [39478] = true, -- Remove Sprint
            [80194] = true, -- Remove Pets

            [32464] = true, -- Light Attack
            [89146] = true, -- Werewolf Bleed
            [32477] = true, -- Heavy Attack (Were)
            [32479] = true, -- Heavy Attack
            [32478] = true, -- Heavy Attack Damage Bonus
            [32480] = true, -- Heavy Attack Werewolf
            [32494] = true, -- Heavy Attack
            [60773] = true, -- Stamina Return
            [40544] = true, -- Keep Corpse
            [40545] = true, -- Keep Corpse

            [32636] = true, -- Pursuit (Rank 1)
            [46142] = true, -- Pursuit (Rank 2)

            [32634] = true, -- Devour (Rank 1)
            [39050] = true, -- Devour Passive
            [33208] = true, -- Devour
            [33209] = true, -- Devour
            [37233] = true, -- Devour
            [48496] = true, -- Devour

            [32637] = true, -- Blood Rage (Rank 1)
            [33470] = true, -- Blood Rage
            [46135] = true, -- Blood Rage (Rank 2)
            [46136] = true, -- Blood Rage

            [32639] = true, -- Bloodmoon (Rank 1)

            [32638] = true, -- Savage Strength (Rank 1)
            [46139] = true, -- Savage Strength (Rank 2)

            [32641] = true, -- Call of the Pack (Rank 1)
            [80283] = true, -- Call of the Pack
            [46137] = true, -- Call of the Pack (Rank 2)
            [80282] = true, -- Call of the Pack

            -- THIEVES GUILD
            [74580] = true, -- Finders Keepers (Rank 1)

            [76454] = true, -- Swiftly Forgotten (Rank 1)
            [76455] = true, -- Swiftly Forgotten II (Rank 2)
            [76456] = true, -- Swiftly Forgotten III (Rank 3)
            [76457] = true, -- Swiftly Forgotten IV (Rank 4)

            [76458] = true, -- Haggling (Rank 1)
            [76459] = true, -- Haggling II (Rank 2)
            [76460] = true, -- Haggling III (Rank 3)
            [76461] = true, -- Haggling IV (Rank 4)

            [76451] = true, -- Clemency (Rank 1)

            [76452] = true, -- Timely Escape (Rank 1)
            [77962] = true, -- Timely Escape Achievement
            [77963] = true, -- Timely Escape Achievement

            [76453] = true, -- Veil of Shadows (Rank 1)

            -- UNDAUNTED
            [55584] = true, -- Undaunted Command (Rank 1)
            [55606] = true, -- Undaunted Command
            [55607] = true, -- Undaunted Command Magicka Rest
            [55608] = true, -- Undaunted Command Stamina Rest
            [55676] = true, -- Undaunted Command (Rank 2)
            [55677] = true, -- Undaunted Command
            [55678] = true, -- Undaunted Command Magicka Rest
            [55679] = true, -- Undaunted Command Stamina Rest

            [55366] = true, -- Undaunted Mettle (Rank 1)
            [55386] = true, -- Undaunted Mettle (Rank 2)


            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --

            ---------------------------------------------
            -- AVA PASSIVES  ----------------------------
            ---------------------------------------------

            -- Assault
            [39248] = true, -- Continuous Attack (Rank 1)
            [39249] = true, -- Continuous Attack
            [45614] = true, -- Continuous Attack (Rank 2)
            [45617] = true, -- Continuous Attack
            [39254] = true, -- Reach (Rank 1)
            [45621] = true, -- Reach (Rank 2)
            [39252] = true, -- Combat Frenzy (Rank 1)
            [39253] = true, -- Combat Frenzy
            [45619] = true, -- Combat Frenzy (Rank 2)
            [45620] = true, -- Combat Frenzy

            -- Support
            [39255] = true, -- Magicka Aid (Rank 1)
            [45622] = true, -- Magicka Aid (Rank 2)
            [39259] = true, -- Combat Medic (Rank 1)
            [45624] = true, -- Combat Medic (Rank 2)
            [39261] = true, -- Battle Resurrection (Rank 1)
            [45625] = true, -- Battle Resurrection (Rank 2)

            ---------------------------------------------
            -- RACIALS  ---------------------------------
            ---------------------------------------------

            -- BRETON
            [36247] = true, -- Opportunist (Rank 1)
            [35995] = true, -- Gift of Magnus (Rank 1)
            [45259] = true, -- Gift of Magnus (Rank 2)
            [45260] = true, -- Gift of Magnus (Rank 3)
            [36266] = true, -- Spell Resistance (Rank 1)
            [45261] = true, -- Spell Resistance (Rank 2)
            [45262] = true, -- Spell Resistance (Rank 3)
            [36303] = true, -- Magicka Mastery (Rank 1)
            [45263] = true, -- Magicka Mastery (Rank 2)
            [45264] = true, -- Magicka Mastery (Rank 3)

            -- ORC
            [33293] = true, -- Craftsman (Rank 1)
            [33301] = true, -- Brawny (Rank 1)
            [45307] = true, -- Brawny (Rank 2)
            [45309] = true, -- Brawny (Rank 3)
            [84668] = true, -- Unflinching (Rank 1)
            [84670] = true, -- Unflinching (Rank 2)
            [84672] = true, -- Unflinching (Rank 3)
            [33304] = true, -- Swift Warrior (Rank 1)
            [45311] = true, -- Swift Warrior (Rank 2)
            [45312] = true, -- Swift Warrior (Rank 3)

            -- REDGUARD
            [84680] = true, -- Wayfarer (Rank 1)
            [36009] = true, -- Exhilaration (Rank 1)
            [45277] = true, -- Exhilaration (Rank 2)
            [45278] = true, -- Exhilaration (Rank 3)
            [36153] = true, -- Conditioning (Rank 1)
            [45279] = true, -- Conditioning (Rank 2)
            [45280] = true, -- Conditioning (Rank 3)
            [36546] = true, -- Adrenaline Rush (Rank 1)
            [36548] = true, -- Adrenaline Rush
            [45313] = true, -- Adrenaline Rush (Rank 2)
            [45314] = true, -- Adrenaline Rush
            [45315] = true, -- Adrenaline Rush (Rank 3)
            [45316] = true, -- Adrenaline Rush

            -- ALTMER
            [35965] = true, -- Highborn (Rank 1)
            [35993] = true, -- Spellcharge (Rank 1)
            [45273] = true, -- Spellcharge (Rank 2)
            [45274] = true, -- Spellcharge (Rank 3)
            [35998] = true, -- Elemental Talent (Rank 1)
            [45275] = true, -- Elemental Talent (Rank 2)
            [45276] = true, -- Elemental Talent (Rank 3)

            -- BOSMER
            [36008] = true, -- Acrobat (Rank 1)
            [64279] = true, -- Y'ffre's Endurance (Rank 1)
            [64280] = true, -- Y'ffre's Endurance (Rank 2)
            [64281] = true, -- Y'ffre's Endurance (Rank 3)
            [36011] = true, -- Resist Affliction (Rank 1)
            [45317] = true, -- Resist Affliction (Rank 2)
            [45319] = true, -- Resist Affliction (Rank 3)
            [36022] = true, -- Stealthy (Rank 1)
            [45295] = true, -- Stealthy (Rank 2)
            [45296] = true, -- Stealthy (Rank 3)

            -- KHAJIIT
            [36063] = true, -- Cutpurse (Rank 1)
            [70386] = true, -- Nimble (Rank 1)
            [70388] = true, -- Nimble (Rank 2)
            [70390] = true, -- Nimble (Rank 3)
            [36067] = true, -- Carnage (Rank 1)
            [45299] = true, -- Carnage (Rank 2)
            [45301] = true, -- Carnage (Rank 3)

            -- ARGONIAN
            [36582] = true, -- Amphibian (Rank 1)
            [36568] = true, -- Resourceful (Rank 1)
            [49151] = true, -- Resourceful (Rank 1)
            [63694] = true, -- Resourceful
            [63695] = true, -- Resourceful
            [63696] = true, -- Resourceful
            [45243] = true, -- Resourceful (Rank 2)
            [63700] = true, -- Resourceful (Rank 2)
            [63697] = true, -- Resourceful
            [63698] = true, -- Resourceful
            [63699] = true, -- Resourceful
            [45247] = true, -- Resourceful (Rank 3)
            [63704] = true, -- Resourceful (Rank 3)
            [63701] = true, -- Resourceful
            [63702] = true, -- Resourceful
            [63703] = true, -- Resourceful
            [36583] = true, -- Argonian Resistance (Rank 1)
            [45253] = true, -- Argonian Resistance (Rank 2)
            [45255] = true, -- Argonian Resistance (Rank 3)
            [36585] = true, -- Quick Mend (Rank 1)
            [45257] = true, -- Quick Mend (Rank 2)
            [45258] = true, -- Quick Mend (Rank 3)

            -- DUNMER
            [36588] = true, -- Ashlander (Rank 1)
            [36591] = true, -- Dynamic (Rank 1)
            [45265] = true, -- Dynamic (Rank 2)
            [45267] = true, -- Dynamic (Rank 3)
            [36593] = true, -- Resist Flame (Rank 1)
            [45269] = true, -- Resist Flame (Rank 2)
            [45270] = true, -- Resist Flame (Rank 3)
            [36598] = true, -- Destructive Ancestry (Rank 1)
            [45271] = true, -- Destructive Ancestry (Rank 2)
            [45272] = true, -- Destructive Ancestry (Rank 3)

            -- NORD
            [36626] = true, -- Reveler (Rank 1)
            [36064] = true, -- Stalwart (Rank 1)
            [45297] = true, -- Stalwart (Rank 2)
            [45298] = true, -- Stalwart (Rank 3)
            [36627] = true, -- Resist Frost (Rank 1)
            [45303] = true, -- Resist Frost (Rank 2)
            [45304] = true, -- Resist Frost (Rank 3)
            [36628] = true, -- Rugged (Rank 1)
            [45305] = true, -- Rugged (Rank 2)
            [45306] = true, -- Rugged (Rank 3)

            -- IMPERIAL
            [36312] = true, -- Diplomat (Rank 1)
            [50903] = true, -- Tough (Rank 1)
            [50906] = true, -- Tough (Rank 2)
            [50907] = true, -- Tough (Rank 3)
            [36155] = true, -- Red Diamond (Rank 1)
            [36214] = true, -- Red Diamond
            [45291] = true, -- Red Diamond (Rank 2)
            [45292] = true, -- Red Diamond
            [45293] = true, -- Red Diamond (Rank 3)
            [45294] = true, -- Red Diamond


            ---------------------------------------------
            -- CRAFTING  --------------------------------
            ---------------------------------------------

            -- ALCHEMY
            [45542] = true, -- Solvent Proficiency (Rank 0/1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [45543] = true, -- Solvent Proficiency (Rank 0/1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [45547] = true, -- Solvent Proficiency (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [45550] = true, -- Solvent Proficiency (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [45551] = true, -- Solvent Proficiency (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion
            [45552] = true, -- Solvent Proficiency (Rank 5) -- NOTE: No actual aura or event displayed for this, listed for completion
            [49163] = true, -- Solvent Proficiency (Rank 6) -- NOTE: No actual aura or event displayed for this, listed for completion
            [70042] = true, -- Solvent Proficiency (Rank 7) -- NOTE: No actual aura or event displayed for this, listed for completion
            [70043] = true, -- Solvent Proficiency (Rank 8) -- NOTE: No actual aura or event displayed for this, listed for completion

            [47480] = true, -- Keen Eye: Reagents (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47841] = true, -- Keen Eye: Reagents (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47842] = true, -- Keen Eye: Reagents (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [45569] = true, -- Medicinal Use (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [45571] = true, -- Medicinal Use (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [45573] = true, -- Medicinal Use (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [45577] = true, -- Chemistry (Rank 1)
            [45578] = true, -- Chemistry (Rank 2)
            [45579] = true, -- Chemistry (Rank 3)

            [45555] = true, -- Laboratory Use (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion

            [47831] = true, -- Snakeblood (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47832] = true, -- Snakeblood (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47834] = true, -- Snakeblood (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            -- BLACKSMITHING
            [47276] = true, -- Metalworking (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47277] = true, -- Metalworking (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47278] = true, -- Metalworking (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47279] = true, -- Metalworking (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47280] = true, -- Metalworking (Rank 5) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47281] = true, -- Metalworking (Rank 6) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48157] = true, -- Metalworking (Rank 7) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48158] = true, -- Metalworking (Rank 8) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48159] = true, -- Metalworking (Rank 9) -- NOTE: No actual aura or event displayed for this, listed for completion
            [70041] = true, -- Metalworking (Rank 10) -- NOTE: No actual aura or event displayed for this, listed for completion

            [47854] = true, -- Keen Eye: Ore (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47855] = true, -- Keen Eye: Ore (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47856] = true, -- Keen Eye: Ore (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [48169] = true, -- Miner Hireling (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48170] = true, -- Miner Hireling (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48171] = true, -- Miner Hireling (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [48163] = true, -- Metal Extraction (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48164] = true, -- Metal Extraction (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48165] = true, -- Metal Extraction (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [48160] = true, -- Metallurgy (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48161] = true, -- Metallurgy (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48162] = true, -- Metallurgy (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [58784] = true, -- Metallurgy (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion

            [48166] = true, -- Temper Expertise (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48167] = true, -- Temper Expertise (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48168] = true, -- Temper Expertise (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            -- CLOTHING
            [47288] = true, -- Tailoring (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47289] = true, -- Tailoring (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47290] = true, -- Tailoring (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47291] = true, -- Tailoring (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47292] = true, -- Tailoring (Rank 5) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47293] = true, -- Tailoring (Rank 6) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48187] = true, -- Tailoring (Rank 7) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48188] = true, -- Tailoring (Rank 8) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48189] = true, -- Tailoring (Rank 9) -- NOTE: No actual aura or event displayed for this, listed for completion
            [70044] = true, -- Tailoring (Rank 10) -- NOTE: No actual aura or event displayed for this, listed for completion

            [47860] = true, -- Keen Eye: Cloth (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47861] = true, -- Keen Eye: Cloth (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47862] = true, -- Keen Eye: Cloth (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [48199] = true, -- Outfitter Hireling (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48200] = true, -- Outfitter Hireling (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48201] = true, -- Outfitter Hireling (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [48193] = true, -- Unraveling (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48194] = true, -- Unraveling (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48195] = true, -- Unraveling (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [48190] = true, -- Stitching (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48191] = true, -- Stitching (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48192] = true, -- Stitching (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [58782] = true, -- Stitching (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion

            [48196] = true, -- Tannin Expertise (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48197] = true, -- Tannin Expertise (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48198] = true, -- Tannin Expertise (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            -- ENCHANTING
            [46758] = true, -- Aspect Improvement (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [46759] = true, -- Aspect Improvement (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [46760] = true, -- Aspect Improvement (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [46763] = true, -- Aspect Improvement (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion

            [46727] = true, -- Potency Improvement (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [46729] = true, -- Potency Improvement (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [46731] = true, -- Potency Improvement (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [46735] = true, -- Potency Improvement (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion
            [46736] = true, -- Potency Improvement (Rank 5) -- NOTE: No actual aura or event displayed for this, listed for completion
            [46740] = true, -- Potency Improvement (Rank 6) -- NOTE: No actual aura or event displayed for this, listed for completion
            [49112] = true, -- Potency Improvement (Rank 7) -- NOTE: No actual aura or event displayed for this, listed for completion
            [49113] = true, -- Potency Improvement (Rank 8) -- NOTE: No actual aura or event displayed for this, listed for completion
            [49114] = true, -- Potency Improvement (Rank 9) -- NOTE: No actual aura or event displayed for this, listed for completion
            [70045] = true, -- Potency Improvement (Rank 10) -- NOTE: No actual aura or event displayed for this, listed for completion

            [47851] = true, -- Keen Eye: Rune Stones -- Keen Eye: Rune Stones (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47852] = true, -- Keen Eye: Rune Stones -- Keen Eye: Rune Stones (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47853] = true, -- Keen Eye: Rune Stones -- Keen Eye: Rune Stones (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [46770] = true, -- Hireling (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [46771] = true, -- Hireling (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [46772] = true, -- Hireling (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [46767] = true, -- Runestone Extraction (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [46768] = true, -- Runestone Extraction (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [46769] = true, -- Runestone Extraction (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            -- PROVISIONING
            [44625] = true, -- Recipe Quality (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44630] = true, -- Recipe Quality (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44631] = true, -- Recipe Quality (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [69953] = true, -- Recipe Quality (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion

            [44590] = true, -- Recipe Improvement (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44595] = true, -- Recipe Improvement (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44597] = true, -- Recipe Improvement (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44598] = true, -- Recipe Improvement (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44599] = true, -- Recipe Improvement (Rank 5) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44650] = true, -- Recipe Improvement (Rank 6) -- NOTE: No actual aura or event displayed for this, listed for completion

            [44602] = true, -- Gourmand (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44609] = true, -- Gourmand (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44610] = true, -- Gourmand (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [44612] = true, -- Connoisseur (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44614] = true, -- Connoisseur (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44615] = true, -- Connoisseur (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [44616] = true, -- Chef (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44617] = true, -- Chef (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44619] = true, -- Chef (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [44620] = true, -- Brewer (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44621] = true, -- Brewer (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44624] = true, -- Brewer (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [44634] = true, -- Hireling (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44640] = true, -- Hireling (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [44641] = true, -- Hireling (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            -- WOODWORKING
            [47282] = true, -- Woodworking (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47283] = true, -- Woodworking (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47284] = true, -- Woodworking (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47285] = true, -- Woodworking (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47286] = true, -- Woodworking (Rank 5) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47287] = true, -- Woodworking (Rank 6) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48172] = true, -- Woodworking (Rank 7) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48173] = true, -- Woodworking (Rank 8) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48174] = true, -- Woodworking (Rank 9) -- NOTE: No actual aura or event displayed for this, listed for completion
            [70046] = true, -- Woodworking (Rank 10) -- NOTE: No actual aura or event displayed for this, listed for completion

            [47857] = true, -- Keen Eye: Wood (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47858] = true, -- Keen Eye: Wood (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [47859] = true, -- Keen Eye: Wood (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [48184] = true, -- Lumberjack Hireling (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48185] = true, -- Lumberjack Hireling (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48186] = true, -- Lumberjack Hireling (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [48178] = true, -- Wood Extraction (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48179] = true, -- Wood Extraction (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48180] = true, -- Wood Extraction (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            [48181] = true, -- Carpentry (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48182] = true, -- Carpentry (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48183] = true, -- Carpentry (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion
            [58783] = true, -- Carpentry (Rank 4) -- NOTE: No actual aura or event displayed for this, listed for completion

            [48175] = true, -- Resin Expertise (Rank 1) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48176] = true, -- Resin Expertise (Rank 2) -- NOTE: No actual aura or event displayed for this, listed for completion
            [48177] = true, -- Resin Expertise (Rank 3) -- NOTE: No actual aura or event displayed for this, listed for completion

            ---------------------------------------------

            -- GENERIC NPC COMBAT EVENTS
            [20542] = true, -- Prioritize Hit
            [38433] = true, -- Prioritize Hit
            [20546] = true, -- Prioritize Hit
            [94793] = true, -- Prioritize Hit
            [37360] = true, -- No Light Attacks
            [15160] = true, -- Monster Heavy Attack
            [31373] = true, -- Modify Shared CD Ability
            [46858] = true, -- Second Wind

            -- SHARED NPC PASSIVES
            [67950] = true, -- CC Immunity Plus -- Various NPC's
            [33097] = true, -- Scary Immunities -- Various NPC's
            [44176] = true, -- Flying Immunities -- Various NPC's
            [13739] = true, -- Backstabber -- Various NPC's
            [71904] = true, -- Increased Speed -- Dire Wolf + Sentinel
            [73768] = true, -- GEN 5 Hits -- Various NPC's
            [73769] = true, -- GEN 5 Hits -- Various NPC's
            [73772] = true, -- GEN 5 Hits -- Various NPC's
            [79147] = true, -- GEN 3 Hits -- Various NPC's
            [79148] = true, -- GEN 3 Hits -- Various NPC's
            [79149] = true, -- GEN 3 Hits -- Various NPC's
            [73916] = true, -- GEN 2 Hits -- Various NPC's
            [73917] = true, -- GEN 2 Hits -- Various NPC's
            [73919] = true, -- GEN 2 Hits -- Various NPC's
            [88283] = true, -- No Call Ally (is Ally) -- Summoner NPCs
            [88289] = true, -- No Call Ally (Failed) -- Summoner NPCs
            [89175] = true, -- No Call Ally 1:1 Ally Tracker -- Summoner NPCs
            [89176] = true, -- No Call Ally -- Summoner NPCs
            [89177] = true, -- No Call Ally -- Summoner NPCs

            -- SHARED NPC ACTIVE EVENTS
            [8239] = true, -- Hamstrung -- Various NPC's
            [10845] = true, -- Run Away! -- Humanoid NPC's
            [31813] = true, -- Run Away! -- Humanoid NPC's
            --[82703] = true, -- Run Away! -- Humanoid NPC's
            [18386] = true, -- Run Away! -- NPC (Mostly Creatures)
            [14249] = true, -- Surround -- NPC (Mostly Animals)

            -- CRITTER EVENTS
            [28890] = true, -- OnDeathFear -- Critter
            [2581] = true, -- Flee -- Critter
            [79544] = true, -- Mischievous Dodge -- Nixad
            [79600] = true, -- Mischievous Dodge -- Nixad
            [79555] = true, -- Mischievous Dodge -- Nixad
            [79601] = true, -- Mischievous Dodge -- Nixad
            [79602] = true, -- Mischievous Dodge -- Nixad

            -- MONSTER FIGHT ABILITIES
            [9363] = true, -- Generic 1 Dmg Monster No Push -- Monster Fight
            [9364] = true, -- Monster Fight Immunities -- Monster Fight
            [40165] = true, -- Scene Choreo Brace -- Monster Fight
            [40190] = true, -- Roll Dodge -- Monster Fight
            [40193] = true, -- Roll Dodge -- Monster Fight
            [45611] = true, -- On Me -- Monster Fight
            [40120] = true, -- Quick Strike -- Monster Fight
            [40203] = true, -- Heavy Attack -- Monster Fight
            [44364] = true, -- Off-Balance Exploit -- Monster Fight

            ---------------------------------
            -- FRIENDLY NPC EVENTS
            ---------------------------------

            [42905] = true, -- Recover
            [42937] = true, -- TargetPriorityException

            [48296] = true, -- Flare
            [48298] = true, -- Heat Wave
            [48299] = true, -- Heat Wave

            [48279] = true, -- Quick Strike
            [48278] = true, -- Heavy Attack

            ---------------------------------
            -- JUSTICE NPCS
            ---------------------------------

            [63424] = true, -- JUST Guard Awarness (Guard)
            [63903] = true, -- Guard Hit by CC
            [63153] = true, -- Guard Immunities
            [63154] = true, -- Guard Immunities
            [63163] = true, -- Guard Speed Boost
            [63174] = true, -- Guard Speed Boost
            [63168] = true, -- Cage Talons
            [63180] = true, -- JUST Used Talons Speed Boost
            [63182] = true, -- Talons Boost 1
            [63186] = true, -- JUST Guard Used Talons Speed B
            [63157] = true, -- Heavy Blow
            [63268] = true, -- Uppercut
            [63160] = true, -- Heavy Blow Knockdown
            [63261] = true, -- Heavy Blow
            [63265] = true, -- Uppercut
            [63263] = true, -- Heavy Blow Knockdown
            [64060] = true, -- Block Guard CC
            [63145] = true, -- Criminal's Bane
            [63148] = true, -- Major Defile
            [63149] = true, -- Criminal's Bane
            [63202] = true, -- Criminal's Bane
            [63926] = true, -- Pre-stack check
            [63095] = true, -- Focused Strike
            [63093] = true, -- Charge
            [63094] = true, -- Shield Charge
            [63198] = true, -- Fiery Chain
            [63200] = true, -- Firey Chain
            [63911] = true, -- Guard Stacking Damage
            [64134] = true, -- JUST Guard Evade
            [64150] = true, -- JUST Death Timer

            --[64152] = true, -- JUST Unlock Death Bolts

            --[63086] = true, -- Guard Charge
            --[63258] = true, -- Guard Charge

            [64139] = true, -- Piercing Bolt
            [64267] = true, -- Focused Shot

            [63259] = true, -- Charge
            [63260] = true, -- Shield Charge

            [63179] = true, -- Flame Shard
            [63194] = true, -- Flame Shard
            [63197] = true, -- Magma Prison

            [63905] = true, -- Guard CC Break Timer
            [63906] = true, -- Guard CC Break Anim
            [63904] = true, -- Guard CC Immunity

            [78790] = true, -- Seek
            [78793] = true, -- Seek LOS
            [78802] = true, -- Seek
            [78803] = true, -- Seek
            [78804] = true, -- Seek
            [78760] = true, -- Confusion
            [78761] = true, -- LOS Tar
            [78762] = true, -- LOS Check
            [78764] = true, -- Confusion
            [78775] = true, -- Confusion
            [78767] = true, -- Confusion
            [78768] = true, -- Confusion
            [78769] = true, -- Confusion
            [78770] = true, -- Confusion
            [78766] = true, -- Confusion
            [78772] = true, -- Confusion
            [78771] = true, -- Confusion
            --[78765] = true, -- Confusion

            --[78743] = true, -- Flare
            --[78789] = true, -- Flare
            --[78750] = true, -- Revealed
            --[78746] = true, -- Flare
            --[78744] = true, -- Flare

            [75613] = true, -- Shadowcloak Immunity (Mage Guard)
            --[77921] = true, -- Clairvoyance Tutorial (Mage Guard)
            [77919] = true, -- Clairvoyance Tutorial (Mage Guard)
            [77937] = true, -- Clairvoyance (Mage Guard)
            [77941] = true, -- Revealed
            [77943] = true, -- Clairvoyance (Mage Guard)
            [77917] = true, -- Empower Weapon: Flame (Mage Guard)
            [74502] = true, -- Focused Strike (Mage Guard)
            [74503] = true, -- Focused Strike (Mage Guard)
            [74504] = true, -- Focused Strike (Mage Guard)
            [74862] = true, -- Teleport Trap (Mage Guard)
            [74870] = true, -- Teleport Trap (Mage Guard)
            [74867] = true, -- Teleport Trap (Mage Guard)
            [74884] = true, -- Teleport Trap (Mage Guard)
            [74885] = true, -- Teleport Trap (Mage Guard)
            [74864] = true, -- Teleport Trap (Mage Guard)
            [74863] = true, -- Teleport Trap (Mage Guard)
            [74506] = true, -- Encase (Mage Guard)
            [74522] = true, -- Encase (Mage Guard)
            [74533] = true, -- Encase (Mage Guard)
            [74534] = true, -- Encase (Mage Guard)
            [74535] = true, -- Encase (Mage Guard)
            [74536] = true, -- Encase (Mage Guard)
            [74510] = true, -- Encase (Mage Guard)
            [74996] = true, -- Streak (Mage Guard)

            [77450] = true, -- Clairvoyance Tutorial (Mage Guard - Instanced)
            [77449] = true, -- Clairvoyance Tutorial (Mage Guard - Instanced)
            [72694] = true, -- Clairvoyance (Mage Guard - Instanced)
            [72695] = true, -- Revealed (Mage Guard - Instanced)
            [77444] = true, -- Clairvoyance (Mage Guard - Instanced)
            [78060] = true, -- Revealed (Mage Guard - Instanced)
            [75808] = true, -- Guard Speed Boost (Mage Guard - Instanced)
            [75809] = true, -- Guard Speed Boost (Mage Guard - Instanced)

            [54363] = true, -- Halt (Guard)
            [63625] = true, -- Arrest Stun (Guard)
            [64647] = true, -- Remove Effects (Guard)

            [77452] = true, -- Shadow Cloak Immunity (Basic Justice NPC)
            [78012] = true, -- Quick Strike (Basic Justice NPC)
            [48321] = true, -- CON_Bamf Out (Basic Justice NPC)
            [62472] = true, -- Stab (Justice Rogue)
            [62506] = true, -- Thrown Dagger (Justice Rogue)
            [78013] = true, -- Quick Shot (Justice Archer)
            [62408] = true, -- Bound Weapon (Justice Mage)
            [62409] = true, -- Fiery Wind (Justice Mage)
            [62502] = true, -- Fiery Wind (Justice Mage)
            [62407] = true, -- Fiery Touch (Justice Mage)
            [63828] = true, -- Fiery Touch (Justice Mage)
            [61984] = true, -- Invisibility Potion (Justice Mage)

            [78265] = true, -- Alarm (Estate Marshal - DB)
            [80539] = true, -- Alarm (Estate Marshal - DB)
            [67567] = true, -- Generic Self Stun (Estate Marshal - DB)
            [78266] = true, -- Alarm (Estate Marshal - DB)

            [52471] = true, -- Nullify (Estate Spellbreaker - DB)
            [52473] = true, -- Nullify (Estate Spellbreaker - DB)
            [52474] = true, -- Nullify (Estate Spellbreaker - DB)
            [66669] = true, -- Nullify (Estate Spellbreaker - DB)

            [73226] = true, -- Hurried Ward (Mage Guard - DB)
            [73230] = true, -- Hurried Ward (Mage Guard - DB)
            [73229] = true, -- Hurried Ward (Mage Guard - DB)

            -- Traps & Interactables
            [62230] = true, -- Coldharbour Flames
            [62771] = true, -- Coldharbour Flames
            [62769] = true, -- Coldharbour Flames
            [62770] = true, -- Coldharbour Flames

            [72711] = true, -- Hidden (Hiding Spot)
            [72712] = true, -- Hiding Spot (Hiding Spot)
            [80262] = true, -- Hiding Spot (Hiding Spot)
            [77335] = true, -- Threat Drop (Hiding Spot)
            [77336] = true, -- Threat Drop (Hiding Spot)
            [77337] = true, -- Threat Drop (Hiding Spot)
            [77338] = true, -- Threat Drop (Hiding Spot)
            [77339] = true, -- Threat Drop (Hiding Spot)
            [75747] = true, -- Hiding Spot (Hiding Spot)

            -- HUMANOID NPCS
            [10618] = true, -- Quick Strike -- Shared
            [12437] = true, -- Quick Shot -- Shared
            [12456] = true, -- Ice Arrow -- Shared
            [10639] = true, -- Flare -- Shared
            [11604] = true, -- Is Fire Ranged -- Shared
            [43768] = true, -- Health Potion -- Shared
            [44471] = true, -- Roll Dodge -- Shared
            [44477] = true, -- Roll Dodge -- Shared
            [44480] = true, -- Roll Dodge -- Shared
            [44479] = true, -- Roll Left -- Shared
            [44482] = true, -- Roll Right -- Shared
            [39058] = true, -- Bear Trap -- Shared
            [39060] = true, -- Bear Trap -- Shared
            [39065] = true, -- Bear Trap -- Shared
            [40070] = true, -- Bear Trap -- Shared
            [64750] = true, -- Briarheart Set Resurrectable -- Shared

            [10648] = true, -- Throw Oil -- Synergies (Footsoldier)
            [11039] = true, -- Spread Out Sound -- Synergies (Footsoldier)
            [10824] = true, -- Oil Up -- Synergies (Footsoldier)
            [11016] = true, -- Throw Oil -- Synergies (Footsoldier)
            [10650] = true, -- Oil Drenched -- Synergies (Footsoldier)
            [12439] = true, -- Burning Arrow -- Synergies (Archer)
            --[70413] = true, -- Burning Arrow (STILL TESTING)
            [14068] = true, -- Ignite -- Synergies (Archer)
            [14070] = true, -- Ignite -- Synergies (Archer)
            [10805] = true, -- Ignite -- Synergies (Fire Mage)
            [10814] = true, -- Ignite -- Synergies (Fire Mage)
            [10809] = true, -- Ignite -- Synergies (Fire Mage)
            [10825] = true, -- Ignite -- Synergies (Fire Mage)
            [10813] = true, -- Ignite -- Synergies (Fire Mage)
            [38261] = true, -- Ignite -- Synergies (Fire Mage)
            [38262] = true, -- Ignite -- Synergies (Fire Mage)
            [38260] = true, -- Ignite -- Synergies (Fire Mage)

            [31385] = true, -- Necromancer Synergy Move Back (Cultist)
            [31390] = true, -- Necromancer Synergy Move Back (Cultist)
            [31387] = true, -- Necromancer Synergy Kill Self (Cultist)
            [43756] = true, -- Necromancer Synergy Kill Self (Cultist)
            [43757] = true, -- Cultist Synergy Cast (Cultist)

            [14096] = true, -- Heavy Attack -- Footsoldier
            [27683] = true, -- Step Back -- Footsoldier
            [28499] = true, -- Throw Dagger -- Footsoldier
            [28502] = true, -- Throw Dagger -- Footsoldier
            [28504] = true, -- Throw Dagger -- Footsoldier

            [29400] = true, -- Power Bash -- Guard
            [29401] = true, -- Power Bash -- Guard
            [29402] = true, -- Power Bash -- Guard
            [29761] = true, -- Brace -- Guard
            [29759] = true, -- Brace Snare -- Guard
            [29762] = true, -- Blocked Stack -- Guard
            [29757] = true, -- Remove block -- Guard
            [29766] = true, -- Blocked Stack -- Guard
            [29765] = true, -- Uber Attack -- Guard
            [84346] = true, -- Uber Attack -- Guard

            [34917] = true, -- Low Slash -- Brute
            [34919] = true, -- Low Slash -- Brute
            [13705] = true, -- ready for rush -- Brute
            [42832] = true, -- ready for rush -- Brute
            [13701] = true, -- Focused Charge -- Brute
            [14924] = true, -- Focused Charge -- Brute
            [66623] = true, -- charge stun cleanup -- Brute
            [48542] = true, -- Focused Charge -- Brute
            [14935] = true, -- Charge -- Brute
            [14925] = true, -- Charge -- Brute
            [14926] = true, -- Charge -- Brute
            [14921] = true, -- Charge -- Brute
            [14930] = true, -- Charge -- Brute
            [14922] = true, -- Charge -- Brute
            [14923] = true, -- Charge -- Brute

            [26308] = true, -- Cleave -- Ravager
            [29378] = true, -- Uppercut -- Ravager
            [29379] = true, -- Uppercut -- Ravager
            [29380] = true, -- Uppercut -- Ravager

            [29035] = true, -- Quick Strike -- Rogue/Skirmisher
            [12381] = true, -- Assassinate -- Rogue/Skirmisher
            [28408] = true, -- Whirlwind -- Rogue/Skirmisher
            [85339] = true, -- Whirlwind -- Rogue/Skirmisher
            [45508] = true, -- Passing Through -- Rogue/Skirmisher
            [67928] = true, -- Passing Through Immunity -- Rogue/Skirmisher
            [67938] = true, -- Kill Me -- Rogue/Skirmisher
            [67939] = true, -- Damage Self -- Rogue/Skirmisher
            [67930] = true, -- Passing Through Cleanup -- Rogue/Skirmisher
            [45511] = true, -- Spread Out Sound -- Rogue/Skirmisher

            [35164] = true, -- Agony -- Berserker
            [76328] = true, -- Agony -- Berserker
            [35165] = true, -- Agony -- Berserker
            [76330] = true, -- Agony -- Berserker
            [10735] = true, -- Blood Craze -- Berserker
            [49252] = true, -- Blood Craze -- Berserker
            [49253] = true, -- Blood Craze -- Berserker
            [49254] = true, -- Blood Craze -- Berserker
            [44206] = true, -- Minor Maim -- Berserker
            [44208] = true, -- Heated Blades -- Berserker

            [34742] = true, -- Fiery Breath -- Dragonknight
            [34797] = true, -- Fiery Breath -- Dragonknight
            [34646] = true, -- Lava Whip -- Dragonknight
            [34647] = true, -- Lava Whip -- Dragonknight
            [34704] = true, -- Dark Talons -- Dragonknight
            [74472] = true, -- Dark Talons -- Dragonknight
            [34706] = true, -- Dark Talons -- Dragonknight
            [44227] = true, -- Dragonknight Standard -- Dragonknight
            [44228] = true, -- Dragonknight Standard -- Dragonknight
            [44229] = true, -- Dragonknight Standard -- Dragonknight
            [52041] = true, -- Blink Strike -- Dragonknight
            [52045] = true, -- Blink Strike -- Dragonknight
            [52051] = true, -- Blink Strike -- Dragonknight

            [29510] = true, -- Thunder Hammer -- Thundermaul
            [29511] = true, -- Thunder Hammer -- Thundermaul
            [17867] = true, -- Shock Aura -- Thundermaul
            [44407] = true, -- Lightning Form -- Thundermaul
            [44408] = true, -- Lightning Form -- Thundermaul

            [81219] = true, -- Shock -- Thundermaul
            [81215] = true, -- Shock Aura -- Thundermaul
            --[77905] = true, -- Knockback -- Thundermaul
            --[77906] = true, -- Stun -- Thundermaul
            --[57832] = true, -- CC Immunity Knock Back -- Thundermaul
            [81193] = true, -- Agonizing Strike -- Thundermaul
            [81195] = true, -- Agonizing Fury -- Thundermaul
            [81206] = true, -- Agonizing Bolts -- Thundermaul
            [81207] = true, -- Agonizing Bolts -- Thundermaul
            [81196] = true, -- Agonizing Fury -- Thundermaul
            [81197] = true, -- Agonizing Fury -- Thundermaul
            [81217] = true, -- Thunder Hammer -- Thundermaul
            [81218] = true, -- Thunder Hammer -- Thundermaul

            [73712] = true, -- Shadow Cloak -- Nightblade
            [73713] = true, -- Shadow Cloak -- Nightblade
            [36470] = true, -- Veiled Strike -- Nightblade
            [36471] = true, -- Veiled Strike -- Nightblade
            [36460] = true, -- Teleport Strike -- Nightblade
            [63821] = true, -- Teleport Strike -- Nightblade
            [63822] = true, -- Teleport Strike -- Nightblade
            [44345] = true, -- Soul Tether -- Nightblade
            [44349] = true, -- Soul Tether -- Nightblade
            [44352] = true, -- Soul Tether -- Nightblade
            [44350] = true, -- Soul Tether -- Nightblade
            [44346] = true, -- Soul Tether -- Nightblade
            [53462] = true, -- Siphoning Strikes
            [53469] = true, -- Leeching Strikes

            [37108] = true, -- Arrow Spray -- Archer
            [37109] = true, -- Arrow Spray -- Archer
            [37116] = true, -- Arrow Spray -- Archer
            [28628] = true, -- Volley -- Archer
            [28629] = true, -- Volley -- Archer
            [74978] = true, -- Taking Aim -- Archer
            [74980] = true, -- Taking Aim -- Archer

            [89460] = true, -- Set Area -- Pet Ranger
            [16571] = true, -- Set Area -- Pet Ranger
            [36609] = true, -- Set Area -- Pet Ranger
            [36499] = true, -- Roll Dodge -- Pet Ranger
            [88226] = true, -- Call Ally -- Pet Ranger
            [88227] = true, -- Call Ally -- Pet Ranger
            [88252] = true, -- Call Ally -- Pet Ranger
            [88251] = true, -- Call Ally -- Pet Ranger
            [89425] = true, -- Call Ally -- Pet Ranger
            [88281] = true, -- Call Ally -- Pet Ranger
            [88278] = true, -- Call Ally -- Pet Ranger
            [89233] = true, -- Call Ally -- Pet Ranger
            [44301] = true, -- Trap Beast -- Pet Ranger
            [44305] = true, -- Trap Beast -- Pet Ranger
            [44307] = true, -- Trap Beast -- Pet Ranger

            [15164] = true, -- Heat Wave -- Fire Mage
            [16588] = true, -- Heat Wave -- Fire Mage
            [47095] = true, -- Fire Rune -- Fire Mage
            [47096] = true, -- Fire Rune -- Fire Mage
            [47102] = true, -- Fire Rune -- Fire Mage
            [47101] = true, -- Fire Rune -- Fire Mage
            [47103] = true, -- Fire Rune -- Fire Mage

            [14524] = true, -- Shock -- Storm Mage
            [58693] = true, -- Thunder Thrall Check -- Storm Mage
            [29469] = true, -- Thunder Thrall -- Storm Mage
            [29471] = true, -- Thunder Thrall -- Storm Mage
            [29472] = true, -- Thunder Thrall -- Storm Mage
            [29470] = true, -- Thunder Thrall -- Storm Mage

            [12459] = true, -- Winter's Reach -- Frost Mage
            [12460] = true, -- Winter's Reach -- Frost Mage
            [14550] = true, -- Winter's Reach -- Frost Mage
            [14178] = true, -- Ice Barrier -- Frost Mage
            [49902] = true, -- Ice Barrier Immunity -- Frost Mage
            [60898] = true, -- Ice Barrier -- Frost Mage
            [14194] = true, -- Ice Barrier -- Frost Mage
            [29331] = true, -- Ice Barrier -- Frost Mage
            [7145] = true, -- Chilled -- Frost Mage

            [35151] = true, -- Spell Absorption -- Spirit Mage
            [14472] = true, -- Burdening Eye -- Spirit Mage
            [35149] = true, -- Burdening Eye -- Spirit Mage
            [89057] = true, -- Burdening Eye -- Spirit Mage
            [89042] = true, -- Burdening Eye -- Spirit Mage
            [14477] = true, -- Burden -- Spirit Mage
            [89063] = true, -- Burden -- Spirit Mage
            [37200] = true, -- Burden -- Spirit Mage
            [35141] = true, -- Burden -- Spirit Mage
            [35142] = true, -- Burden -- Spirit Mage
            [89041] = true, -- Burdening Eye -- Spirit Mage

            [37150] = true, -- Flare -- Battlemage
            [37028] = true, -- Quick Strike -- Battlemage
            [37029] = true, -- Quick Strike -- Battlemage
            [37030] = true, -- Quick Strike -- Battlemage
            [37021] = true, -- Empower Weapon: Flame -- Battlemage
            [37087] = true, -- Lightning Onslaught -- Battlemage
            [37156] = true, -- Lightning Onslaught -- Battlemage
            [37137] = true, -- Lightning Onslaught -- Battlemage
            [37129] = true, -- Ice Cage -- Battlemage
            [37131] = true, -- Ice Cage -- Battlemage
            [37132] = true, -- Ice Cage -- Battlemage
            [44216] = true, -- Negate Magic -- Battlemage
            [50108] = true, -- Negate Magic -- Battlemage

            [37126] = true, -- Entropic Flare -- Time Bomb Mage
            [36985] = true, -- Void -- Time Bomb Mage
            [36986] = true, -- Void -- Time Bomb Mage
            [14370] = true, -- Void -- Time Bomb Mage
            [36988] = true, -- Void -- Time Bomb Mage
            [36989] = true, -- Void -- Time Bomb Mage
            [36990] = true, -- Void -- Time Bomb Mage

            [56828] = true, -- Fright Force -- Fear Mage
            [14350] = true, -- Aspect of Terror -- Fear Mage
            [37084] = true, -- Aspect of Terror -- Fear Mage
            [35849] = true, -- Shadow Cloak -- Fear Mage
            [35865] = true, -- Shadow Cloak -- Fear Mage
            [35850] = true, -- Shadow Cloak -- Fear Mage

            [44247] = true, -- Dark Shade -- Dreadweaver
            --[89005] = true, -- Dark Shade -- Dreadweaver
            [89006] = true, -- Dark Shade -- Dreadweaver
            [89008] = true, -- Dark Shade -- Dreadweaver
            [39729] = true, -- TargetPriorityException -- Dreadweaver
            [44250] = true, -- Dark Shade -- Dreadweaver
            [89017] = true, -- Dark Shade -- Dreadweaver
            [89010] = true, -- Corrode -- Dreadweaver - Dark Shade
            [89012] = true, -- Minor Maim -- Dreadweaver - Dark Shade
            [89016] = true, -- Dark Shade -- Dreadweaver
            [89455] = true, -- Dark Shade -- Dreadweaver

            [44323] = true, -- Dampen Magic -- Soulbrander
            [44258] = true, -- Radiant Magelight -- Soulbrander
            [44263] = true, -- Radiant Magelight -- Soulbrander
            [44259] = true, -- Magelight -- Soulbrander

            [29372] = true, -- Necrotic Spear -- Necromancer
            [5605] = true, -- Summon the Dead -- Necromancer
            [31848] = true, -- Summon the Dead -- Necromancer
            [88582] = true, -- Summon the Dead -- Necromancer
            [88583] = true, -- Summon the Dead -- Necromancer
            --[88586] = true, -- Summon the Dead -- Necromancer
            [88589] = true, -- Summon the Dead -- Necromancer
            --[88600] = true, -- Summon the Dead -- Necromancer
            --[88602] = true, -- Summon the Dead -- Necromancer
            --[88618] = true, -- Summon the Dead -- Necromancer
            --[88611] = true, -- Summon the Dead -- Necromancer
            [88613] = true, -- Summon the Dead -- Necromancer
            [88621] = true, -- Summon the Dead -- Necromancer
            [88622] = true, -- Summon the Dead -- Necromancer
            [88626] = true, -- Summon the Dead -- Necromancer
            [88627] = true, -- Summon the Dead -- Necromancer
            --[88601] = true, -- Summon the Dead -- Necromancer
            --[88593] = true, -- Summon the Dead -- Necromancer
            --[88617] = true, -- Summon the Dead -- Necromancer
            --[88596] = true, -- Summon the Dead -- Necromancer
            [88597] = true, -- Summon the Dead -- Necromancer
            [88598] = true, -- Summon the Dead -- Necromancer
            [88566] = true, -- Summon the Dead -- Necromancer
            [88554] = true, -- Summon the Dead -- Necromancer
            [88555] = true, -- Summon the Dead -- Necromancer
            [88561] = true, -- Summon the Dead -- Necromancer
            [13397] = true, -- Empower Undead -- Necromancer
            [88560] = true, -- Summon the Dead -- Necromancer
            [89230] = true, -- Summon the Dead -- Necromancer

            [7590] = true, -- Entropic Bolt -- Bonelord
            [35387] = true, -- Bone Cage -- Bonelord
            [88322] = true, -- Bone Cage -- Bonelord
            [35391] = true, -- Defiled Grave -- Bonelord
            [35383] = true, -- Summon Abomination -- Bonelord
            [35384] = true, -- Summon Abomination -- Bonelord
            [88522] = true, -- Summon Abomination -- Bonelord
            [88526] = true, -- Summon Abomination -- Bonelord
            [88507] = true, -- Summon Abomination -- Bonelord
            [88504] = true, -- Summon Abomination -- Bonelord
            [88503] = true, -- Summon Abomination -- Bonelord
            [89231] = true, -- Summon Abomination -- Bonelord
            [44339] = true, -- Bone Surge -- Bonelord

            [79803] = true, -- Covetous Return -- Healer
            [10601] = true, -- Minor Wound -- Healer
            [57534] = true, -- Focused Healing -- Healer
            [57536] = true, -- Spread Out Sound -- Healer
            [57537] = true, -- Focused Healing -- Healer
            [57538] = true, -- Focused Healing -- Healer
            [50931] = true, -- Healer Immune -- Healer
            [50975] = true, -- Healer Immune -- Healer
            [50966] = true, -- Healer Immune -- Healer
            [50998] = true, -- Rite of Passage -- Healer
            [44328] = true, -- Rite of Passage -- Healer
            [44329] = true, -- Rite of Passage -- Healer
            [44330] = true, -- Rite of Passage -- Healer
            [44331] = true, -- Rite of Passage Self Snare -- Healer

            [29669] = true, -- Coiled Lash -- Shaman
            [29520] = true, -- Aura of Protection -- Shaman
            [65314] = true, -- Aura of Protection -- Shaman
            [65432] = true, -- Aura of Protection -- Shaman
            [29521] = true, -- Aura of Protection -- Shaman
            [29595] = true, -- Aura of Protection -- Shaman
            [83073] = true, -- Summon Died -- Shaman
            [29597] = true, -- Combustion -- Shaman
            [29598] = true, -- Off Balance -- Shaman

            [68866] = true, -- War Horn -- Faction NPC
            [68867] = true, -- War Horn Battlecry -- Faction NPC
            [68868] = true, -- War Horn Battlecry -- Faction NPC
            [68869] = true, -- War Horn Battlecry -- Faction NPC
            [43644] = true, -- Barrier [monster synergy] -- Faction NPC
            [41793] = true, -- Anti-Cavalry Caltrops -- Faction NPC
            [38118] = true, -- Caltrops -- Faction NPC
            [38119] = true, -- Caltrops -- Faction NPC
            [38125] = true, -- Caltrops -- Faction NPC

            [65033] = true, -- Retaliation -- Winterborn Warrior (DLC)
            [69158] = true, -- Retaliation -- Winterborn Warrior (DLC)
            [69154] = true, -- Retaliation -- Winterborn Warrior (DLC)
            [67114] = true, -- Retaliation -- Winterborn Warrior (DLC)
            [69157] = true, -- Retaliation -- Winterborn Warrior (DLC)
            [69153] = true, -- Retaliation -- Winterborn Warrior (DLC)
            [69167] = true, -- Retaliation -- Winterborn Warrior (DLC)
            [1347] = true, -- Off-Balance -- Winterborn Warrior (DLC)
            [14883] = true, -- Off-Balance -- Winterborn Warrior (DLC)
            [4508] = true, -- Off-Balance -- Winterborn Warrior (DLC)
            [70070] = true, -- Heavy Strike -- Winterborn Warrior (DLC)
            [64980] = true, -- Javelin -- Winterborn Warrior (DLC)
            [69282] = true, -- Roll Dodge Back -- Winterborn Warrior (DLC)
            [69278] = true, -- Roll Dodge Back -- Winterborn Warrior (DLC)

            [54593] = true, -- Flare -- Winterborn Mage (DLC)
            [55909] = true, -- Grasping Vines -- Winterborn Mage (DLC)
            [55911] = true, -- Grasping Vines -- Winterborn Mage (DLC)
            [55917] = true, -- Grasping Vines -- Winterborn Mage (DLC)
            [55918] = true, -- Grasping Vines -- Winterborn Mage (DLC)
            [55916] = true, -- Grasping Vineburst -- Winterborn Mage (DLC)

            [64704] = true, -- Flames -- Winterborn Mage (DLC)
            [64711] = true, -- Flames -- Winterborn Mage (DLC)
            [64706] = true, -- Flames -- Winterborn Mage (DLC)
            [64707] = true, -- Flames -- Winterborn Mage (DLC)
            [64708] = true, -- Flames -- Winterborn Mage (DLC)
            [64709] = true, -- Flames -- Winterborn Mage (DLC)
            [64710] = true, -- Flames -- Winterborn Mage (DLC)
            [64712] = true, -- Flames -- Winterborn Mage (DLC)
            [64713] = true, -- Flames -- Winterborn Mage (DLC)
            [64714] = true, -- Flames -- Winterborn Mage (DLC)
            [64715] = true, -- Flames -- Winterborn Mage (DLC)
            [64716] = true, -- Flames -- Winterborn Mage (DLC)
            [64717] = true, -- Flames -- Winterborn Mage (DLC)
            [64718] = true, -- Flames -- Winterborn Mage (DLC)
            [64719] = true, -- Flames -- Winterborn Mage (DLC)
            [64720] = true, -- Flames -- Winterborn Mage (DLC)
            [64721] = true, -- Flames -- Winterborn Mage (DLC)
            [64722] = true, -- Flames -- Winterborn Mage (DLC)
            [64723] = true, -- Flames -- Winterborn Mage (DLC)
            [64724] = true, -- Flames -- Winterborn Mage (DLC)
            [64725] = true, -- Flames -- Winterborn Mage (DLC)
            [64726] = true, -- Flames -- Winterborn Mage (DLC)
            [64727] = true, -- Flames -- Winterborn Mage (DLC)

            [54184] = true, -- Revenge 2 -- Vosh Rakh Devoted (DLC)
            [53987] = true, -- Rally -- Vosh Rakh Devoted (DLC)
            [54397] = true, -- Rally -- Vosh Rakh Devoted (DLC)
            [65235] = true, -- Enrage -- Vosh Rakh Devoted (DLC)
            [65237] = true, -- Scary -- Vosh Rakh Devoted (DLC)
            [54027] = true, -- Divine Leap -- Vosh Rakh Devoted (DLC)
            [65183] = true, -- Divine Leap Target -- Vosh Rakh Devoted (DLC)
            [67272] = true, -- Invisible No Target -- Vosh Rakh Devoted (DLC)
            [67273] = true, -- End No Target -- Vosh Rakh Devoted (DLC)
            [54028] = true, -- Divine Leap -- Vosh Rakh Devoted (DLC)
            [82752] = true, -- Divine Leap -- Vosh Rakh Devoted (DLC)
            [67593] = true, -- Divine Leap Stagger -- Vosh Rakh Devoted (DLC)
            [54050] = true, -- Divine Leap Stun -- Vosh Rakh Devoted (DLC)

            [51000] = true, -- Cleave Stance -- Dremora Caitiff (DLC)
            [50927] = true, -- Enter Combat -- Dremora Caitiff (DLC)
            [51921] = true, -- Cleave Stance -- Dremora Caitiff (DLC)
            [51923] = true, -- Cleave Stance -- Dremora Caitiff (DLC)
            [51939] = true, -- Cleave Stance -- Dremora Caitiff (DLC)
            [51940] = true, -- Cleave Stance -- Dremora Caitiff (DLC)
            [51941] = true, -- Cleave Stance -- Dremora Caitiff (DLC)
            [51942] = true, -- Cleave Stance -- Dremora Caitiff (DLC)

            [72723] = true, -- Fool Me Once -- Sentinel (TG DLC)
            [74486] = true, -- Low Slash -- Sentinel (TG DLC)
            [74487] = true, -- Low Slash -- Sentinel (TG DLC)
            [74480] = true, -- Fiery Grip -- Sentinel (TG DLC)
            [74483] = true, -- Fiery Grip -- Sentinel (TG DLC)
            [72748] = true, -- Fool Me Once HOLD -- Sentinel (TG DLC)
            [72725] = true, -- Fool Me Once -- Sentinel (TG DLC)
            [77468] = true, -- Fool Me Once -- Sentinel (TG DLC)

            [74630] = true, -- Flare Trap Proxy -- Archer (TG DLC)
            [72716] = true, -- Uncanny Dodge -- Archer (TG DLC)
            [72717] = true, -- Uncanny Dodge SCU REM -- Archer (TG DLC)
            [72719] = true, -- Uncanny Dodge SCU REM -- Archer (TG DLC)
            [72214] = true, -- Poisoned Arrow -- Archer (TG DLC)
            [72217] = true, -- Poisoned Arrow -- Archer (TG DLC)
            [76089] = true, -- Snipe -- Archer (TG DLC)
            [72221] = true, -- Shadow Cloak -- Archer (TG DLC)
            [72222] = true, -- Shadow Cloak -- Archer (TG DLC)
            [72220] = true, -- Snipe -- Archer (TG DLC)
            [74628] = true, -- Flare Trap -- Archer (TG DLC)
            [74618] = true, -- Flare Trap -- Archer (TG DLC)
            [74627] = true, -- Flare Trap -- Archer (TG DLC)
            [77446] = true, -- Flare Trap -- Archer (TG DLC)
            [74619] = true, -- Flare Trap -- Archer (TG DLC)
            [74621] = true, -- Revealed -- Archer (TG DLC)
            [74620] = true, -- Flare Trap REM -- Archer (TG DLC)

            [77474] = true, -- Dutiful Fury -- Bodyguard (DB DLC)
            [77475] = true, -- Dutiful Fury -- Bodyguard (DB DLC)
            [77477] = true, -- Dutiful Fury -- Bodyguard (DB DLC)
            [77476] = true, -- Dutiful Fury -- Bodyguard (DB DLC)
            [77489] = true, -- Dutiful Fury -- Bodyguard (DB DLC)
            [81360] = true, -- 'Til Death -- Bodyguard (DB DLC)
            [77472] = true, -- 'Til Death -- Bodyguard (DB DLC)
            [79523] = true, -- 'Til Death -- Bodyguard (DB DLC)
            [81366] = true, -- 'Til Death -- Bodyguard (DB DLC)
            [77672] = true, -- 'Til Death -- Bodyguard (DB DLC)
            [77748] = true, -- 'Til Death -- Bodyguard (DB DLC)
            [77742] = true, -- 'Til Death -- Bodyguard (DB DLC)
            [77778] = true, -- 'Til Death -- Bodyguard (DB DLC)
            [77765] = true, -- 'Til Death -- Bodyguard (DB DLC)
            [77750] = true, -- 'Til Death -- Bodyguard (DB DLC)
            [77697] = true, -- 'Til Death -- Bodyguard (DB DLC)
            [77738] = true, -- 'Til Death -- Bodyguard (DB DLC)
            [77554] = true, -- Shard Shield -- Bodyguard (DB DLC)
            [77555] = true, -- Shard Shield -- Bodyguard (DB DLC)
            [79534] = true, -- Shard Shield -- Bodyguard (DB DLC)
            [83620] = true, -- Shard Shield -- Bodyguard (DB DLC)
            [83624] = true, -- Shard Shield -- Bodyguard (DB DLC)
            [77562] = true, -- Shard Shield -- Bodyguard (DB DLC)
            [77609] = true, -- Shard Shield -- Bodyguard (DB DLC)
            [77602] = true, -- Shard Shield -- Bodyguard (DB DLC)
            [77473] = true, -- Shield Charge -- Bodyguard (DB DLC)
            [77838] = true, -- Shield Charge -- Bodyguard (DB DLC)
            [77815] = true, -- Shield Charge -- Bodyguard (DB DLC)
            [77927] = true, -- Staggered -- Bodyguard (DB DLC)

            [77020] = true, -- Basilisk Powder (Tracker)
            [77089] = true, -- Basilisk Powder (Tracker)
            [77087] = true, -- Basilisk Powder (Tracker)
            [77086] = true, -- Basilisk Powder (Tracker)
            [79954] = true, -- Basilisk Powder (Tracker)
            [77019] = true, -- Pin (Tracker)
            [77030] = true, -- Pin (Tracker)
            [78432] = true, -- Lunge (Tracker)
            [79993] = true, -- Lunge (Tracker)
            [79955] = true, -- Lunge (Tracker)
            [78435] = true, -- Lunge (Tracker)
            [79930] = true, -- Lunge (Tracker)
            [79929] = true, -- Lunge (Tracker)
            [78664] = true, -- Lunge (Tracker)

            [88481] = true, -- Spectral Claw (Beastcaller)
            [88478] = true, -- Swarm (Beastcaller)
            [88371] = true, -- Dive (Beastcaller)
            [88393] = true, -- Dive (Beastcaller)
            [88394] = true, -- Gore (Beastcaller)
            [88395] = true, -- Gore (Beastcaller)
            [88400] = true, -- Gore (Beastcaller)
            [88409] = true, -- Raise the Earth (Beastcaller)
            [88657] = true, -- Feral Guardian (Beastcaller)
            [92303] = true, -- Despawn Override (Beastcaller)
            [92158] = true, -- Raise the Earth (Beastcaller)
            [92157] = true, -- Raise the Earth (Beastcaller)
            [92159] = true, -- Raise the Earth (Beastcaller)
            --[92156] = true, -- Summon the Dead (Beastcaller)

            [87854] = true, -- Quick Shot (Arbalest)
            [87855] = true, -- Arrow Stab (Arbalest)
            [87901] = true, -- Bombard (Arbalest)
            [90399] = true, -- Bombard (Arbalest)
            [87904] = true, -- Bombard (Arbalest)
            [87902] = true, -- Bombard (Arbalest)
            [87713] = true, -- Quakeshot (Arbalest)
            [87715] = true, -- Quakeshot (Arbalest)
            [87834] = true, -- Quakeshot (Arbalest)
            [87835] = true, -- Quakeshot (Arbalest)
            [87837] = true, -- Quakeshot (Arbalest)
            [87852] = true, -- Quakeshot (Arbalest)
            [87422] = true, -- Chilled Ground (Arbalest)
            [87491] = true, -- Chilled Ground (Arbalest)

            [86881] = true, -- Hack
            [86882] = true, -- Hack
            [86883] = true, -- Slash
            [86884] = true, -- Slash
            [85342] = true, -- Twin Slashes
            [85343] = true, -- Twin Slashes
            [85368] = true, -- Twin Slashes Bleed
            [86879] = true, -- Chop
            [86880] = true, -- Hack
            [85359] = true, -- Reverse Slash
            [85365] = true, -- Assassinate Bonus
            [86704] = true, -- Chop (Hleran Noble)
            [86705] = true, -- Lop (Hleran Noble)
            [85361] = true, -- Puncture (Hleran Noble)
            [85362] = true, -- Major Fracture (Hleran Noble)

            [87064] = true, -- Volcanic Debris (Fire-Binder)
            [87067] = true, -- Volcanic Debris (Fire-Binder)
            [87065] = true, -- Volcanic Debris (Fire-Binder)
            [92647] = true, -- Volcanic Debris (Fire-Binder)
            [87069] = true, -- Volcanic Debris (Fire-Binder)
            [87068] = true, -- Volcanic Debris (Fire-Binder)
            [87066] = true, -- Volcanic Debris (Fire-Binder)
            [88845] = true, -- Empower Atronach (Fire-Binder)
            --[92646] = true, -- Volcanic Debris (Fire-Binder)

            [81545] = true, -- Fright Force (Voidbringer)
            [76621] = true, -- Shadeway (Voidbringer)
            [76760] = true, -- Shadeway (Voidbringer)
            [76762] = true, -- Shadeway (Voidbringer)
            [76784] = true, -- Shadeway (Voidbringer)
            [76843] = true, -- Shadeway (Voidbringer)
            [76619] = true, -- Pool of Shadow (Voidbringer)
            [76623] = true, -- Pool of Shadow (Voidbringer)
            [76730] = true, -- Pool of Shadow (Voidbringer)
            [76624] = true, -- Pool of Shadow (Voidbringer)
            [76668] = true, -- Pool of Shadow (Voidbringer)
            [76669] = true, -- Pool of Shadow (Voidbringer)
            [76653] = true, -- Pool of Shadow (Voidbringer)
            [76729] = true, -- Pool of Shadow (Voidbringer)
            [76728] = true, -- Pool of Shadow (Voidbringer)
            [76821] = true, -- SHA Deepest Shadow BON (Voidbringer)
            [76620] = true, -- Shadowy Duplicate (Voidbringer)
            [77005] = true, -- Shadowy Duplicate (Voidbringer)
            [80211] = true, -- Shadowy Duplicate (Voidbringer)
            [76967] = true, -- Shadowy Duplicate (Voidbringer)
            [76979] = true, -- Shadowy Duplicate (Voidbringer)
            [76995] = true, -- Shadowy Duplicate (Voidbringer)
            [76969] = true, -- Shadowy Duplicate (Voidbringer)
            [76955] = true, -- Shadowy Duplicate (Voidbringer)
            [76957] = true, -- Shadowy Duplicate (Voidbringer)
            [81079] = true, -- Shadowy Duplicate (Voidbringer)
            [76998] = true, -- Shadowy Duplicate (Voidbringer)
            [76996] = true, -- Shadowy Duplicate (Voidbringer)
            [76985] = true, -- Shadowy Duplicate (Voidbringer)
            [77009] = true, -- Shadowy Duplicate (Voidbringer)

            [88361] = true, -- Vile Flare (Skaafin Masquer)
            [88327] = true, -- Shadeway (Skaafin Masquer)
            [88337] = true, -- Shadeway (Skaafin Masquer)
            [88338] = true, -- Shadeway (Skaafin Masquer)
            [88339] = true, -- Shadeway (Skaafin Masquer)
            [88341] = true, -- Shadeway (Skaafin Masquer)
            [88325] = true, -- Pool of Shadow (Skaafin Masquer)
            [88329] = true, -- Pool of Shadow (Skaafin Masquer)
            [88336] = true, -- Pool of Shadow (Skaafin Masquer)
            [88330] = true, -- Pool of Shadow (Skaafin Masquer)
            [88332] = true, -- Pool of Shadow (Skaafin Masquer)
            [88333] = true, -- Pool of Shadow (Skaafin Masquer)
            [88331] = true, -- Pool of Shadow (Skaafin Masquer)
            [88335] = true, -- Pool of Shadow (Skaafin Masquer)
            [88334] = true, -- Pool of Shadow (Skaafin Masquer)
            [88340] = true, -- Deep Denial (Skaafin Masquer)
            [88326] = true, -- Create Masque (Skaafin Masquer)
            [88353] = true, -- Create Masque (Skaafin Masquer)
            [88358] = true, -- Shadowy Duplicate (Skaafin Masquer)
            [88345] = true, -- Shadowy Duplicate (Skaafin Masquer)
            [88348] = true, -- Shadowy Duplicate (Skaafin Masquer)
            [88350] = true, -- Shadowy Duplicate (Skaafin Masquer)
            [88346] = true, -- Shadowy Duplicate (Skaafin Masquer)
            [88342] = true, -- Create Masque (Skaafin Masquer)
            [88383] = true, -- Create Masque (Skaafin Masquer)
            [88343] = true, -- Create Masque (Skaafin Masquer)
            [88360] = true, -- Create Masque (Skaafin Masquer)
            [88352] = true, -- Create Masque (Skaafin Masquer)
            [88351] = true, -- Shadowy Duplicate (Skaafin Masquer)
            [88349] = true, -- Shadowy Duplicate (Skaafin Masquer)
            [88354] = true, -- Shadowy Duplicate (Skaafin Masquer)

            [84817] = true, -- Skaafin Flare (Skaafin Witchling)
            [84815] = true, -- Skaafin Flare (Skaafin Witchling)
            [84818] = true, -- Fiendish Healing (Skaafin Witchling)
            [84831] = true, -- Fiendish Healing (Skaafin Witchling)
            [84829] = true, -- Fiendish Healing (Skaafin Witchling)
            [84833] = true, -- Fiendish Healing (Skaafin Witchling)
            [84820] = true, -- Fiendish Healing (Skaafin Witchling)
            [84821] = true, -- Fiendish Healing (Skaafin Witchling)

            --[84835] = true, -- Broken Pact (Skaafin)
            --[84851] = true, -- Broken Pact (Skaafin)
            --[84850] = true, -- Broken Pact (Skaafin)
            --[84838] = true, -- Broken Pact (Skaafin)
            --[84836] = true, -- Broken Pact (Skaafin)
            --[84837] = true, -- Broken Pact (Skaafin)

            -- CYRODIIL GUARDS
            [47717] = true, -- Quick Strike (Guard T1)
            [46220] = true, -- Puncture (Guard T1 + T2)
            [46221] = true, -- Puncture (Guard T1 + T2)
            [46830] = true, -- Bleeding Strike (Guard T2)
            [46832] = true, -- Bleeding (Guard T2)
            [46831] = true, -- Bleeding (Guard T2)
            [46834] = true, -- Power Bash (Guard T2)
            [72639] = true, -- Power Bash (Guard T2)
            [72641] = true, -- Power Bash (Guard T2)
            [74087] = true, -- Power Bash (Guard T2)
            [36304] = true, -- Razor Armor (Guard T2)
            [36306] = true, -- Razor Armor (Guard T2)
            [36305] = true, -- Spike Armor Damage Return (Guard T2)

            [7880] = true, -- Light Attack (Mage T1)
            [7881] = true, -- Guardian Storm (Mage T1)
            [7883] = true, --  Guardian Storm (Mage T1)
            [21629] = true, -- Mage's Lifesteal (Mage T1)
            [21632] = true, -- Lifesteal (Mage T1)
            [21631] = true, -- Lifesteal (Mage T1)
            [46335] = true, -- Crystal Shard (Mage T1)
            [46336] = true, -- Crystal Shard Stun (Mage T1)

            [46711] = true, -- Bound Aegis (Mage T2)
            [46726] = true, -- Shock Torrent (Mage T2)
            [46730] = true, -- Shock Torrent (Mage T2)
            [46818] = true, -- Lasting Storm (Mage T2)
            [46819] = true, -- Storm Damage (Mage T2)
            [46716] = true, -- Stolen Essence (Mage T2)
            [46719] = true, -- Stolen Essence (Mage T2)
            [46718] = true, -- Lifesteal (Mage T2)
            [46717] = true, -- Lifesteal (Mage T2)
            [46704] = true, -- Crystal Blast (Mage T2)
            [46706] = true, -- Crystal Shard Stun (Mage T2)
            [52806] = true, -- Unstable Core (Mage T2)
            [52808] = true, -- Unstable Core  (Mage T2)
            [75397] = true, -- Unstable Core (Mage T2)
            [75395] = true, -- Reflected FX (Mage T2)

            [57962] = true, -- Minor Wound (Mender T1)
            [46236] = true, -- Rune Focus (Mender T1)
            [46270] = true, -- Summon Shade (Mender T1)
            [46272] = true, -- Rune Focus (Mender T1)
            [21636] = true, -- Telekinetic Prison (Mender T1)
            [21638] = true, -- Telekinetic Disorient (Mender T1)
            [46839] = true, -- Major Wound (Mender T2)
            [46902] = true, -- Rune Power (Mender T2)
            [46903] = true, -- Summon Shade (Mender T2)
            [46904] = true, -- Rune Focus (Mender T2)
            [46905] = true, -- Shattering Prison (Mender T2)
            [46906] = true, -- Telekinetic Disorient (Mender T2)
            [46910] = true, -- Shattering Prison (Mender T2)
            [46847] = true, -- Potent Healing (Mender T2)
            [52862] = true, -- Health Boon (Mender T2)
            [22469] = true, -- Siege Shield (Mender T2)
            [22489] = true, -- Siege Bubble (Mender T2)
            [32423] = true, -- Siege heal (Mender T2)
            [51891] = true, -- Negate Magic (Mender T2)
            [51893] = true, -- Negate Magic (Mender T2)
            [51894] = true, -- Negate Magic (Mender T2)

            [52864] = true, -- Quick Shot (Archer T1)
            --[54257] = true, -- Upgraded Volley (Archer T2)
            --[54258] = true, -- Upgraded Volley (Archer T2)
            [54264] = true, -- Lethal Arrow (Archer T2)
            [54265] = true, -- Lethal Arrow (Archer T2)
            [54259] = true, -- Draining Shot (Archer T2)
            [54261] = true, -- Draining Shot (Archer T2)

            [16510] = true, -- Fire Salvo (Honor Guard T1)
            [15780] = true, -- Honor Guard Rage (Honor Guard T1)
            [32446] = true, -- Guardian Heal (Honor Guard T1)
            [32447] = true, -- Dragon Blood (Honor Guard T1)
            [35113] = true, -- Extended Chains (Honor Guard T1)
            [35115] = true, -- Pull (Honor Guard T1)
            [46990] = true, -- Improved Fire Torrent (Honor Guard T1)
            [46991] = true, -- Fire Torrent Burning (Honor Guard T1)
            [46992] = true, -- Crippling Rage (Honor Guard T1)
            [47001] = true, -- Crippling Rage (Honor Guard T1)
            [47004] = true, -- Guardian Heal (Honor Guard T1)
            [47005] = true, -- Dragon Blood (Honor Guard T1)
            [47019] = true, -- Puncturing Chains (Honor Guard T1)
            [47023] = true, -- Puncture (Honor Guard T1)
            [47020] = true, -- Pull (Honor Guard T1)
            [15781] = true, -- Triple Strike (Honor Guard T1 + T2)
            [15783] = true, -- Triple Strike (Honor Guard T1 + T2)
            [15782] = true, -- Triple Strike (Honor Guard T1 + T2)

            -- ANIMALS

            [5451] = true, -- Bite -- Alit
            [5452] = true, -- Lacerate -- Alit
            [84356] = true, -- Lacerate -- Alit
            [56984] = true, -- Laceration -- Alit
            [56983] = true, -- Laceration -- Alit

            [4413] = true, -- Swipe -- Bear
            [4415] = true, -- Crushing Swipe -- Bear
            [38772] = true, -- Crushing Swipe -- Bear
            [18273] = true, -- Crushing Swipe -- Bear
            [4416] = true, -- Savage Blows -- Bear
            [12380] = true, -- Savage Blows -- Bear
            [61594] = true, -- Savage Blows Bleeding -- Bear
            [4419] = true, -- Daunting Roar -- Bear

            [70355] = true, -- Bite -- Great Bear
            [70357] = true, -- Lunge -- Great Bear
            [70359] = true, -- Lunge -- Great Bear
            [70366] = true, -- Slam -- Great Bear
            [89189] = true, -- Slam -- Great Bear
            [69073] = true, -- Knockdown -- Great Bear
            [70372] = true, -- Ferocity -- Great Bear
            [70375] = true, -- Ferocity -- Great Bear
            [70376] = true, -- Ferocity -- Great Bear
            [70374] = true, -- Ferocity -- Great Bear

            [4583] = true, -- Bite -- Crocodile
            [9642] = true, -- Bite -- Crocodile
            [4587] = true, -- Crushing Chomp -- Crocodile
            [4591] = true, -- Sweep -- Crocodile
            [32051] = true, -- Sweep -- Crocodile
            [4594] = true, -- Ancient Skin -- Crocodile

            [8971] = true, -- Bite -- Duneripper
            [9643] = true, -- Bite -- Duneripper
            [8972] = true, -- Crushing Chomp -- Duneripper
            [8977] = true, -- Sweep -- Duneripper
            [32461] = true, -- Sweep -- Duneripper
            [8974] = true, -- Burrow -- Duneripper
            [42866] = true, -- Burrow -- Duneripper
            [82269] = true, -- DuneRipper Birth -- Duneripper

            [7214] = true, -- Bite -- Durzog
            [7221] = true, -- Rend -- Durzog
            [7227] = true, -- Rotbone -- Durzog
            [16878] = true, -- Rotbone -- Durzog

            [6304] = true, -- Swipe -- Dreugh
            [18002] = true, -- Slash -- Dreugh
            [18003] = true, -- Slash -- Dreugh
            [18005] = true, -- Slash -- Dreugh
            [6308] = true, -- Shocking Touch -- Dreugh
            [6328] = true, -- Shocking Rake -- Dreugh
            [27100] = true, -- Shocking Rake -- Dreugh

            [54374] = true, -- Tusks -- Echatere
            [54375] = true, -- Shockwave -- Echatere
            [54378] = true, -- Shockwave -- Echatere
            [68971] = true, -- Staggered -- Echatere
            [54380] = true, -- Headbutt -- Echatere
            [54382] = true, -- Headbutt -- Echatere
            [54381] = true, -- Headbutt -- Echatere

            [4628] = true, -- Scrape -- Giant Bat
            [60920] = true, -- Scrape -- Giant Bat
            [4632] = true, -- Screech -- Giant Bat
            [47321] = true, -- Screech -- Giant Bat
            [18319] = true, -- Screech -- Giant Bat
            [4630] = true, -- Draining Bite -- Giant Bat
            [18320] = true, -- Draining Bite -- Giant Bat

            [8540] = true, -- Strike -- Giant Snake
            [5240] = true, -- Lash -- Giant Snake
            [30214] = true, -- Lash -- Giant Snake
            [5242] = true, -- Kiss of Poison -- Giant Snake
            [21826] = true, -- Kiss of Poison -- Giant Snake
            [5244] = true, -- Shed Skin -- Giant Snake
            [21993] = true, -- Shed Skin -- Giant Snake

            [5440] = true, -- Bite -- Guar
            [5443] = true, -- Headbutt -- Guar
            [5441] = true, -- Dive -- Guar
            [84359] = true, -- Dive -- Guar

            [72803] = true, -- Hardened Shell - Haj Mota
            [74123] = true, -- Claw -- Haj Mota
            [72786] = true, -- Horn Strike -- Haj Mota
            [72787] = true, -- Horn Strike -- Haj Mota
            [73479] = true, -- Horn Strike -- Haj Mota
            [73481] = true, -- Horn Strike -- Haj Mota
            [74272] = true, -- Bite -- Haj Mota
            [76578] = true, -- Bite -- Haj Mota
            [72793] = true, -- Toxic Mucus -- Haj Mota
            [76577] = true, -- Toxic Mucous -- Haj Mota
            [72815] = true, -- Toxic Mucous -- Haj Mota
            [72794] = true, -- Toxic Pool -- Haj Mota
            [72795] = true, -- Toxic Pool -- Haj Mota
            [72796] = true, -- Bog Burst -- Haj Mota
            [72799] = true, -- Bog Burst -- Haj Mota
            [76183] = true, -- Bog Burst -- Haj Mota
            [72800] = true, -- Bog Burst -- Haj Mota
            [74336] = true, -- Bog Burst -- Haj Mota
            [74337] = true, -- Bog Burst -- Haj Mota
            [76184] = true, -- Bog Burst -- Haj Mota
            [72789] = true, -- Shockwave -- Haj Mota
            [75828] = true, -- Shockwave -- Haj Mota
            [73494] = true, -- Shockwave -- Haj Mota
            [73495] = true, -- Shockwave -- Haj Mota
            [73496] = true, -- Shockwave -- Haj Mota
            [73497] = true, -- Shockwave -- Haj Mota
            [73498] = true, -- Shockwave -- Haj Mota
            [73499] = true, -- Shockwave -- Haj Mota

            [5362] = true, -- Slam -- Kagouti
            [5363] = true, -- Chomp -- Kagouti
            [5926] = true, -- Toss -- Kagouti
            [42889] = true, -- Toss -- Kagouti
            [42888] = true, -- Toss -- Kagouti
            [18198] = true, -- Toss -- Kagouti
            [14202] = true, -- Charge
            [14196] = true, -- Charge
            [14819] = true, -- Charge
            [48544] = true, -- Charge
            [14825] = true, -- Charge
            [14828] = true, -- Charge
            [14829] = true, -- Charge
            [18751] = true, -- Charge

            [7170] = true, -- Rend -- Lion
            [60630] = true, -- Rend -- Lion
            [60641] = true, -- Claw -- Lion
            [7158] = true, -- Bite -- Lion
            [7161] = true, -- Double Strike -- Lion
            [7176] = true, -- Daunting Roar -- Lion
            [8705] = true, -- Weakness -- Lion

            [8596] = true, -- Swipe -- Mammoth
            [8601] = true, -- Vigorous Swipe -- Mammoth
            [8604] = true, -- Vigorous Swipe -- Mammoth
            [75633] = true, -- Vigorous Swipe -- Mammoth
            [75634] = true, -- Vigorous Swipes -- Mammoth
            [8600] = true, -- Stomp -- Mammoth
            [23164] = true, -- Stomp -- Mammoth
            [23230] = true, -- Charge -- Mammoth
            [48551] = true, -- Focused Charge -- Mammoth
            [23223] = true, -- Focused Charge -- Mammoth
            [23226] = true, -- Charge -- Mammoth
            [23221] = true, -- Charge -- Mammoth
            [23222] = true, -- Charge -- Mammoth
            [23225] = true, -- Charge -- Mammoth
            [23227] = true, -- Charge -- Mammoth
            [23224] = true, -- Charge -- Mammoth

            [4192] = true, -- Pincer -- Mudcrab
            [4224] = true, -- Double Claw Strike -- Mudcrab
            [4226] = true, -- Double Claw Strike -- Mudcrab
            [4200] = true, -- Unforgiving Claws -- Mudcrab
            [85082] = true, -- Unforgiving Claws -- Mudcrab
            [28825] = true, -- Scuttle -- Mudcrab
            [42841] = true, -- Scuttle -- Mudcrab

            [16667] = true, -- Slap -- Netch
            [16690] = true, -- Thrust -- Netch
            [16697] = true, -- Poisonbloom -- Netch
            [16698] = true, -- Poisonbloom -- Netch

            [7266] = true, -- Strike -- Nix-Hound
            [13416] = true, -- Strike -- Nix-Hound
            [7268] = true, -- Leech -- Nix-Hound
            [12303] = true, -- Leech -- Nix-Hound
            [18344] = true, -- Leech -- Nix-Hound
            [7273] = true, -- Dampworm -- Nix-Hound
            [38635] = true, -- Dampworm -- Nix-Hound
            [38640] = true, -- Dampworm -- Nix-Hound
            [7271] = true, -- Ambush -- Nix-Hound
            [18190] = true, -- Shadowstep -- Nix-Hound

            [5362] = true, -- Slam -- Skeever
            [21904] = true, -- Rend -- Skeever

            [21947] = true, -- Bite -- Wamasu
            [21949] = true, -- Sweep -- Wamasu
            [46833] = true, -- Sweep -- Wamasu
            [37178] = true, -- Sweep -- Wamasu
            [21951] = true, -- Repulsion Shock -- Wamasu
            [21952] = true, -- Repulsion Shock -- Wamasu
            [22045] = true, -- Static -- Wamasu
            [21956] = true, -- Charge -- Wamasu
            [21957] = true, -- Charge -- Wamasu
            [48556] = true, -- Focused Charge -- Wamasu
            [21960] = true, -- Focused Charge -- Wamasu
            [21964] = true, -- Charge -- Wamasu
            [21963] = true, -- Charge -- Wamasu
            [21961] = true, -- Charge -- Wamasu
            [21967] = true, -- Charge -- Wamasu
            [21962] = true, -- Charge -- Wamasu
            [21959] = true, -- Charge -- Wamasu

            [44781] = true, -- Swipe -- Welwa
            [45937] = true, -- Cleave -- Welwa
            [44791] = true, -- Rear Kick -- Welwa
            [44792] = true, -- Rear Kick -- Welwa
            [47942] = true, -- Charge -- Welwa
            [50714] = true, -- Focused Charge -- Welwa
            [52417] = true, -- Charge -- Welwa
            [45987] = true, -- Focused Charge -- Welwa
            [45990] = true, -- Charge -- Welwa
            [45986] = true, -- Charge -- Welwa
            [45991] = true, -- Charge -- Welwa
            [52828] = true, -- Charge -- Welwa
            [45984] = true, -- Charge -- Welwa
            [52829] = true, -- Charge -- Welwa
            [51842] = true, -- Snare Weakness -- Welwa
            [51843] = true, -- CON_Knockback&Knockdown -- Welwa
            [44782] = true, -- Roll Dodge -- Welwa
            [48697] = true, -- Roll Dodge -- Welwa
            [48698] = true, -- Roll Dodge -- Welwa

            [4022] = true, -- Bite -- Wolf
            [42844] = true, -- Rotbone -- Wolf
            [14523] = true, -- Helljoint -- Wolf
            [75818] = true, -- Helljoint -- Wolf
            [13808] = true, -- Call of the Pack -- Wolf
            [45720] = true, -- Call of the Pack -- Wolf
            [45721] = true, -- Call of the Pack -- Wolf
            [14272] = true, -- Call of the Pack -- Wolf
            [14273] = true, -- Call of the Pack -- Wolf
            [45751] = true, -- Call of the Pack -- Jackal
            [45753] = true, -- Call of the Pack -- Jackal
            [26658] = true, -- Call of the Pack -- Jackal
            --[26659] = true, -- Call of the Pack -- Jackal
            [4114] = true, -- Howl -- Wolf

            [76319] = true, -- Backstab -- Dire Wolf
            [80382] = true, -- Bite -- Dire Wolf
            [80383] = true, -- Bite -- Dire Wolf
            [76307] = true, -- Lunge -- Dire Wolf
            [76308] = true, -- Lunge -- Dire Wolf
            [76303] = true, -- Nip -- Dire Wolf
            [76304] = true, -- Nip -- Dire Wolf
            [76305] = true, -- Gnash -- Dire Wolf
            [76306] = true, -- Gnash -- Dire Wolf
            [76311] = true, -- Harry -- Dire Wolf
            [85656] = true, -- Harry -- Dire Wolf
            [76312] = true, -- Harry -- Dire Wolf
            [76313] = true, -- Harry -- Dire Wolf
            [80568] = true, -- Harry -- Dire Wolf
            [80569] = true, -- Harry -- Dire Wolf
            [80570] = true, -- Harry -- Dire Wolf
            [80571] = true, -- Harry -- Dire Wolf
            [76317] = true, -- Harry -- Dire Wolf
            [80576] = true, -- Harry Finder -- Dire Wolf
            [76324] = true, -- Baleful Call -- Dire Wolf
            [76322] = true, -- Baleful Call -- Dire Wolf

            -- DAEDRA
            [51256] = true, -- Siphon (Shared Daedra)

            [48092] = true, -- Swipe -- Air Atronach
            [48093] = true, -- Swipe -- Air Atronach
            [48096] = true, -- Flare -- Air Atronach
            [48121] = true, -- Heavy Attack -- Air Atronach
            [48137] = true, -- Tornado -- Air Atronach
            [81912] = true, -- CL-SS Flame Atronach spawn in -- Air Atronach
            [51261] = true, -- Combustion -- Air Atronach
            [51262] = true, -- Air Atronach Flame -- Air Atronach
            [51265] = true, -- Air Atronach Flame -- Air Atronach
            [51281] = true, -- Flame Tornado -- Air Atronach
            [51282] = true, -- Flame Tornado -- Air Atronach
            [49565] = true, -- CL-SS Storm Atronach spawn in -- Air Atronach
            [51272] = true, -- Combustion -- Air Atronach
            [51271] = true, -- Air Atronach Flame -- Air Atronach
            [51270] = true, -- Air Atronach Flame -- Air Atronach
            [50023] = true, -- Lightning Rod -- Air Atronach
            [88902] = true, -- Lightning Rod -- Air Atronach
            [50026] = true, -- Lightning Rod -- Air Atronach
            [81936] = true, -- CL-SS Frost Atronach spawn in -- Air Atronach
            [51268] = true, -- Combustion -- Air Atronach
            [51269] = true, -- Air Atronach Flame -- Air Atronach
            [51267] = true, -- Air Atronach Flame -- Air Atronach
            [50021] = true, -- Ice Vortex -- Air Atronach
            [50022] = true, -- Ice Vortex -- Air Atronach

            [9743] = true, -- Entropic Touch -- Banekin
            [9747] = true, -- Dire Wound -- Banekin
            [9748] = true, -- Envelop -- Banekin
            [9749] = true, -- Envelop -- Banekin

            [4798] = true, -- Headbutt -- Clannfear
            [4799] = true, -- Tail Spike -- Clannfear
            [84443] = true, -- Tail Spike -- Clannfear
            [93745] = true, -- Rending Leap -- Clannfear
            [93746] = true, -- Rending Leap -- Clannfear
            [94899] = true, -- Rending Leap -- Clannfear
            [93750] = true, -- Rending Leap -- Clannfear
            [93748] = true, -- Rending Leap Ranged -- Clannfear
            [91395] = true, -- Devour -- Clannfear
            [91398] = true, -- Devour -- Clannfear
            [91396] = true, -- Devour -- Clannfear

            [26551] = true, -- Strike -- Daedric Titan
            [32852] = true, -- Scourge Bolt -- Daedric Titan
            [26641] = true, -- Soul Flame -- Daedric Titan
            [32696] = true, -- Soul Flame -- Daedric Titan
            [35280] = true, -- Soul Flame -- Daedric Titan
            [35277] = true, -- Soul Flame -- Daedric Titan
            [73437] = true, -- Soul Flame -- Daedric Titan
            [35278] = true, -- Soul Flame -- Daedric Titan
            [26554] = true, -- Wing Gust -- Daedric Titan
            [33085] = true, -- Wing Gust -- Daedric Titan
            [33086] = true, -- Wing Gust -- Daedric Titan

            [4750] = true, -- Jagged Claw -- Daedroth
            [4778] = true, -- Fiery Jaws -- Daedroth
            [4771] = true, -- Fiery Breath -- Daedroth
            [4772] = true, -- Fiery Breath -- Daedroth
            [91946] = true, -- Ground Tremor -- Daedroth
            [91947] = true, -- Ground Tremor -- Daedroth
            [91952] = true, -- Ground Tremor -- Daedroth
            [91950] = true, -- Ground Tremor -- Daedroth
            [91955] = true, -- Ground Tremor -- Daedroth
            [91956] = true, -- Ground Tremor -- Daedroth
            [91953] = true, -- Ground Tremor -- Daedroth
            [91949] = true, -- Ground Tremor -- Daedroth
            [91937] = true, -- Burst of Embers -- Daedroth
            [91939] = true, -- Burst of Embers -- Daedroth
            [91941] = true, -- Burst of Embers -- Daedroth
            [91940] = true, -- Burst of Embers -- Daedroth
            [91943] = true, -- Burst of Embers -- Daedroth
            [91942] = true, -- Burst of Embers -- Daedroth
            [91938] = true, -- Burst of Embers -- Daedroth

            [18471] = true, -- Flare -- Flame Atronach
            [18472] = true, -- Flare -- Flame Atronach
            [15157] = true, -- Flare -- Flame Atronach
            [12254] = true, -- Flare -- Flame Atronach
            [26324] = true, -- Lava Geyser -- Flame Atronach
            [26325] = true, -- Lava Geyser -- Flame Atronach
            [4891] = true, -- Radiance -- Flame Atronach
            [4491] = true, -- Radiance -- Flame Atronach
            [26319] = true, -- Combustion -- Flame Atronach
            [50216] = true, -- Combustion -- Flame Atronach
            [50215] = true, -- Combustion -- Flame Atronach

            [4813] = true, -- Claw -- Flesh Atronach
            [63275] = true, -- Claw -- Flesh Atronach
            [16524] = true, -- Stomp -- Flesh Atronach
            [63276] = true, -- Stomp -- Flesh Atronach
            [4829] = true, -- Fire Brand -- Flesh Atronach
            [35413] = true, -- Fire Brand -- Flesh Atronach
            [4817] = true, -- Unyielding Mace -- Flesh Atronach
            [65234] = true, -- Snare Atronach -- Flesh Atronach
            [20226] = true, -- Stun -- Flesh Atronach
            [27326] = true, -- Unyielding Mace -- Flesh Atronach
            [23077] = true, -- Bleeding -- Flesh Atronach

            [67870] = true, -- Tremor AOE -- Flesh Colossus
            [67123] = true, -- Tremor -- Flesh Colossus
            [67637] = true, -- Falling Debris Projectile -- Flesh Colossus
            [67636] = true, -- Falling Debris -- Flesh Colossus
            [67626] = true, -- Debris Target 1 -- Flesh Colossus
            [67627] = true, -- Debris Target 2 -- Flesh Colossus
            [67628] = true, -- Debris Target 3 -- Flesh Colossus
            [67629] = true, -- Debris Target 4 -- Flesh Colossus
            [66869] = true, -- Pin -- Flesh Colossus
            [67076] = true, -- Self Snare -- Flesh Colossus
            [65709] = true, -- Pin -- Flesh Colossus
            [49820] = true, -- Stunned -- Flesh Colossus
            [65735] = true, -- Maisma Channel -- Flesh Colossus
            [50341] = true, -- Miasma Pool -- Flesh Colossus
            [65746] = true, -- Miasma Pool -- Flesh Colossus
            [53233] = true, -- Miasma Pool -- Flesh Colossus
            [67872] = true, -- Sweep -- Flesh Colossus
            [68824] = true, -- Sweep -- Flesh Colossus
            [68813] = true, -- Sweep Knockbavck -- Flesh Colossus
            [67829] = true, -- Sweep Line Origin -- Flesh Colossus
            [67831] = true, -- Sweep Line 1 -- Flesh Colossus
            [67834] = true, -- Sweep Line 2 -- Flesh Colossus
            [67835] = true, -- Sweep Line 3 -- Flesh Colossus
            [67842] = true, -- Sweep Shockwave -- Flesh Colossus
            [76128] = true, -- Stumble Forward -- Flesh Colossus
            [76139] = true, -- Stumble Forward -- Flesh Colossus
            [76140] = true, -- Stumble Forward -- Flesh Colossus
            [76130] = true, -- Stumble Forward -- Flesh Colossus
            [76131] = true, -- Stumble Forward -- Flesh Colossus
            [76143] = true, -- Stumble Forward -- Flesh Colossus
            [79001] = true, -- Stumble Forward -- Flesh Colossus
            [76145] = true, -- Stumble Forward -- Flesh Colossus
            [76146] = true, -- Stumble Forward -- Flesh Colossus
            [76129] = true, -- Stumble Forward -- Flesh Colossus
            [76134] = true, -- Stumble Forward -- Flesh Colossus
            [65755] = true, -- Staggered -- Flesh Colossus
            [76133] = true, -- Stumble Forward -- Flesh Colossus
            [68826] = true, -- Staggered -- Flesh Colossus
            [67766] = true, -- Ghastly Bellow -- Flesh Colossus
            [67772] = true, -- Enraged -- Flesh Colossus
            [49430] = true, -- Smash -- Flesh Colossus
            [49429] = true, -- Claw -- Flesh Colossus
            --[65744] = true, -- Staggered -- Flesh Colossus

            [17069] = true, -- Ice Spear -- Frost Atronach
            [5009] = true, -- Ice Shards -- Frost Atronach
            [33549] = true, -- Chilling Aura -- Frost Atronach
            [33551] = true, -- Chilling Aura -- Frost Atronach
            [5017] = true, -- Hoarfrost Fist -- Frost Atronach
            [44906] = true, -- Hoarfrost Fist -- Frost Atronach
            [44907] = true, -- Hoarfrost Fist -- Frost Atronach
            [44908] = true, -- Hoarfrost Fist -- Frost Atronach
            [33502] = true, -- Frozen Ground -- Frost Atronach
            [33506] = true, -- Frozen Ground -- Frost Atronach
            [33508] = true, -- Frozen Ground -- Frost Atronach
            [33509] = true, -- Frozen Ground -- Frost Atronach
            [33510] = true, -- Frozen Ground -- Frost Atronach
            [55476] = true, -- Fire Runes -- Frost Atronach
            [51644] = true, -- Fire Runes -- Frost Atronach
            [51645] = true, -- Frozen Ground -- Frost Atronach
            [51646] = true, -- Frozen Ground -- Frost Atronach

            [65926] = true, -- Slash -- Grievous Twilight
            [65845] = true, -- Rend -- Grievous Twilight
            [66643] = true, -- Rend -- Grievous Twilight
            [50596] = true, -- Shadow Bolt -- Grievous Twilight
            [50626] = true, -- Shadow Strike -- Grievous Twilight
            [60792] = true, -- Grevious Root Immune -- Grievous Twilight
            [50628] = true, -- Shadow Strike -- Grievous Twilight
            [50635] = true, -- Shadow Strike -- Grievous Twilight
            [65889] = true, -- Shadow Strike -- Grievous Twilight
            [65893] = true, -- Grevious Root Immune -- Grievous Twilight
            [65891] = true, -- Shadow Strike -- Grievous Twilight
            [65896] = true, -- Shadow Strike -- Grievous Twilight
            [65895] = true, -- Shadow Strike -- Grievous Twilight
            [50609] = true, -- Blend into Shadows -- Grievous Twilight

            [11076] = true, -- Chasten -- Harvester
            [11079] = true, -- Black Winter -- Harvester
            [26006] = true, -- Black Winter -- Harvester
            [26007] = true, -- Black Winter -- Harvester
            [26009] = true, -- Black Winter -- Harvester
            [26008] = true, -- Black Winter -- Harvester
            [74794] = true, -- Staggered -- Harvester
            [11083] = true, -- The Feast -- Harvester
            [26110] = true, -- The Feast -- Harvester
            [67206] = true, -- Summon Target
            [67200] = true, -- Summon Projectile
            [67212] = true, -- Summon Target
            [67213] = true, -- Summon Projectile
            [67220] = true, -- Summon Target
            [67221] = true, -- Summon Projectile
            [67230] = true, -- Summon Target
            [67231] = true, -- Summon Projectile
            [26017] = true, -- Creeping Doom -- Harvester
            [26018] = true, -- Creeping Doom -- Harvester
            [88070] = true, -- Creeping Doom -- Harvester
            [26069] = true, -- The Feast Registered Trigger -- Harvester
            [25987] = true, -- The Feast -- Harvester
            [25988] = true, -- The Feast -- Harvester
            [25989] = true, -- The Feast -- Harvester
            [25990] = true, -- The Feast -- Harvester
            [26085] = true, -- The Feast Tick -- Harvester
            [26084] = true, -- The Feast -- Harvester

            [8204] = true, -- Strike -- Ogrim
            [8205] = true, -- Regeneration -- Ogrim
            [70581] = true, -- Regeneration -- Ogrim
            [24689] = true, -- Body Slam -- Ogrim
            [24690] = true, -- Body Slam -- Ogrim
            [48553] = true, -- Focused Charge -- Ogrim
            [24694] = true, -- Body Slam -- Ogrim
            [24691] = true, -- Body Slam -- Ogrim
            [24699] = true, -- Body Slam -- Ogrim
            [24693] = true, -- Body Slam -- Ogrim
            [24700] = true, -- Body Slam -- Ogrim
            [24695] = true, -- Body Slam -- Ogrim
            [73380] = true, -- Been Blocked -- Ogrim
            [24692] = true, -- Body Slam -- Ogrim
            [91848] = true, -- Stomp -- Ogrim
            [91850] = true, -- Stomp -- Ogrim
            [91851] = true, -- Stomp -- Ogrim
            [91855] = true, -- Boulder Toss -- Ogrim
            [91870] = true, -- Boulder Toss -- Ogrim
            [91874] = true, -- Boulder Toss -- Ogrim
            [91871] = true, -- Boulder Toss -- Ogrim

            [6158] = true, -- Flare -- Scamp
            [6166] = true, -- Heat Wave -- Scamp
            [6167] = true, -- Heat Wave -- Scamp
            [6160] = true, -- Rain of Fire -- Scamp
            [6162] = true, -- Rain of Fire -- Scamp

            [8778] = true, -- Strike -- Spider Daedra
            [8808] = true, -- Spit -- Spider Daedra
            [8779] = true, -- Lightning Onslaught -- Spider Daedra
            [91901] = true, -- Lightning Onslaught -- Spider Daedra
            [91903] = true, -- Lightning Onslaught -- Spider Daedra
            [91904] = true, -- Lightning Onslaught -- Spider Daedra
            [38658] = true, -- Lightning Onslaught -- Spider Daedra
            [8782] = true, -- Lightning Storm -- Spider Daedra
            [20530] = true, -- Lightning Storm -- Spider Daedra
            [8773] = true, -- Summon Spiderling -- Spider Daedra
            [89303] = true, -- Summon Spiderling -- Spider Daedra
            [89301] = true, -- Summon Spiderling -- Spider Daedra
            [89302] = true, -- Summon Spiderling -- Spider Daedra
            [89300] = true, -- Summon Spiderling -- Spider Daedra
            [89306] = true, -- Web -- Spider Daedra
            [89307] = true, -- Web -- Spider Daedra

            [4858] = true, -- Bash -- Storm Atronach
            [13898] = true, -- Strike -- Storm Atronach
            [35220] = true, -- Impending Storm -- Storm Atronach
            [35222] = true, -- Impending Storm -- Storm Atronach
            [35228] = true, -- Impending Storm -- Storm Atronach
            [35229] = true, -- Impending Storm -- Storm Atronach
            [35230] = true, -- Impending Storm -- Storm Atronach
            [35231] = true, -- Impending Storm -- Storm Atronach
            [35234] = true, -- Impending Storm -- Storm Atronach
            [35247] = true, -- Impending Storm -- Storm Atronach
            [4864] = true, -- Storm Bound -- Storm Atronach
            [35240] = true, -- Storm Bound -- Storm Atronach
            [12287] = true, -- Storm Bound -- Storm Atronach
            [12288] = true, -- Storm Bound -- Storm Atronach
            [12286] = true, -- Storm Bound -- Storm Atronach

            [7095] = true, -- Heavy Attack -- Xivilai
            [44904] = true, -- Empower Weapon: Frost -- Xivilai
            [83072] = true, -- Frozen Edge -- Xivilai
            [49203] = true, -- Frozen Weapon -- Xivilai
            [88947] = true, -- Lightning Grasp -- Xivilai
            [88952] = true, -- Lightning Grasp -- Xivilai
            [88951] = true, -- Lightning Grasp -- Xivilai
            [88949] = true, -- Lightning Grasp -- Xivilai
            [7100] = true, -- Hand of Flame -- Xivilai
            [25747] = true, -- Hand of Flame -- Xivilai
            [25749] = true, -- Hand of Flame -- Xivilai
            [88968] = true, -- Hand of Flame -- Xivilai
            [88969] = true, -- Hand of Flame -- Xivilai
            [25728] = true, -- Hand of Flame -- Xivilai
            [7101] = true, -- Summon Daedra -- Xivilai
            [88976] = true, -- Summon Daedra -- Xivilai
            [25726] = true, -- Summon Daedra -- Xivilai
            [88974] = true, -- Summon Daedra -- Xivilai
            [88973] = true, -- Summon Daedra -- Xivilai
            [89232] = true, -- Summon Daedra -- Xivilai

            [4652] = true, -- Gaze -- Watcher
            [4653] = true, -- Shockwave -- Watcher
            [43817] = true, -- Shockwave Snare -- Watcher
            [95855] = true, -- Shockwave -- Watcher
            [95856] = true, -- Shockwave -- Watcher
            [53880] = true, -- Shockwave -- Watcher

            [9219] = true, -- Doom-Truth's Gaze -- Watcher
            [95915] = true, -- Doom-Truth's Gaze -- Watcher
            [95916] = true, -- Doom-Truth's Gaze -- Watcher
            [95917] = true, -- Doom-Truth's Gaze -- Watcher
            [95918] = true, -- Doom-Truth's Gaze -- Watcher
            [95890] = true, -- Doom-Truth's Gaze -- Watcher
            [9220] = true, -- Doom-Truth's Gaze -- Watcher
            [14518] = true, -- Doom-Truth's Gaze -- Watcher
            [14425] = true, -- Doom-Truth's Gaze -- Watcher
            [14462] = true, -- Doom-Truth's Gaze -- Watcher
            [14426] = true, -- Doom-Truth's Gaze -- Watcher
            [14546] = true, -- Doom-Truth's Gaze -- Watcher

            [12062] = true, -- Kick -- Winged Twilight
            [13690] = true, -- Kick -- Winged Twilight
            [6410] = true, -- Tail Clip -- Winged Twilight
            [63612] = true, -- Tail Clip -- Winged Twilight
            [6412] = true, -- Dusk's Howl -- Winged Twilight

            -- UNDEAD

            [38828] = true, -- Desecrated Ground -- Desecrated Ground
            [69900] = true, -- Desecrated Ground -- Desecrated Ground
            [69905] = true, -- Desecrated Ground -- Desecrated Ground
            [38829] = true, -- Desecrated Ground Bonus -- Desecrated Ground
            [38832] = true, -- Undead Synergy -- Desecrated Ground
            [38831] = true, -- Desecrated Ground -- Desecrated Ground
            [38834] = true, -- Desecrated Ground Snare -- Desecrated Ground
            [69950] = true, -- Desecrated Ground -- Desecrated Ground

            [25719] = true, -- Check for Vampire Allies -- Bloodfiend
            [8550] = true, -- Slash -- Bloodfiend
            [8551] = true, -- Slash -- Bloodfiend
            [8564] = true, -- Rending Slash -- Bloodfiend
            [8554] = true, -- Flurry -- Bloodfiend
            [9194] = true, -- Flurry -- Bloodfiend
            [8569] = true, -- Devastating Leap -- Bloodfiend
            [32023] = true, -- Generic Stagger Enemy -- Bloodfiend
            [48940] = true, -- Ambush -- Bloodfiend

            [5028] = true, -- Strike -- Bone Colossus
            [5050] = true, -- Bone Saw -- Bone Colossus
            [30590] = true, -- Bone Saw -- Bone Colossus
            [17206] = true, -- Bone Saw -- Bone Colossus
            [5030] = true, -- Voice to Wake the Dead -- Bone Colossus
            [5044] = true, -- Risen Dead -- Bone Colossus
            [88133] = true, -- Voice to Wake the Dead -- Bone Colossus
            [5033] = true, -- Voice to Wake the Dead -- Bone Colossus
            [5035] = true, -- Voice to Wake the Dead -- Bone Colossus
            [5036] = true, -- Voice to Wake the Dead -- Bone Colossus
            [17221] = true, -- Slap -- Bone Colossus
            [17207] = true, -- Necromantic Implosion -- Bone Colossus
            [88828] = true, -- Necromantic Implosion -- Bone Colossus
            [89533] = true, -- Necromantic Implosion -- Bone Colossus
            [49128] = true, -- Necromantic Implosion -- Bone Colossus
            [88132] = true, -- Voice to Wake the Dead -- Bone Colossus

            --[72980] = true, -- Singing Strike -- Defiled Aegis
            --[72981] = true, -- Singing Slice -- Defiled Aegis
            --[72979] = true, -- Dissonant Blow -- Defiled Aegis
            --[72995] = true, -- Symphony of Blades -- Defiled Aegis
            --[72996] = true, -- Symphony of Blades -- Defiled Aegis
            --[77612] = true, -- Symphony of Blades -- Defiled Aegis

            --[73020] = true, -- Shattered Harmony -- Defiled Aegis
            --[76180] = true, -- Shattered Harmony -- Defiled Aegis
            --[73021] = true, -- Shattered Harmony -- Defiled Aegis
            --[73025] = true, -- Tomb Guardian -- Defiled Aegis
            --[73322] = true, -- Shattered Harmony -- Defiled Aegis
            --[74993] = true, -- Shattered Harmony -- Defiled Aegis

            [8812] = true, -- Double Strike -- Ghost
            [8813] = true, -- Double Strike -- Ghost
            [18514] = true, -- Chill Touch -- Ghost
            [18515] = true, -- Chill Touch -- Ghost
            [18766] = true, -- Haunting Spectre -- Ghost
            [19137] = true, -- Haunting Spectre -- Ghost
            [19138] = true, -- Haunting Spectre -- Ghost
            [19140] = true, -- Haunting Spectre -- Ghost

            [9541] = true, -- Necrotic Spear -- Lich
            [20756] = true, -- Defiled Ground -- Lich
            [22521] = true, -- Defiled Ground -- Lich
            [22523] = true, -- Defiled Ground -- Lich
            [20812] = true, -- Defiled Ground -- Lich
            [22525] = true, -- Defiled Ground -- Lich
            [73925] = true, -- Soul Cage -- Lich
            [22602] = true, -- Soul Cage -- Lich
            [73927] = true, -- Soul Cage -- Lich
            [73928] = true, -- Soul Cage -- Lich
            [73930] = true, -- Soul Cage -- Lich
            [73932] = true, -- Soul Cage -- Lich
            [73933] = true, -- Soul Cage -- Lich
            [73938] = true, -- Soul Cage -- Lich
            [73936] = true, -- Soul Cage -- Lich
            [73935] = true, -- Soul Cage -- Lich
            [73929] = true, -- Soul Cage -- Lich
            [73931] = true, -- Soul Rupture -- Lich
            [73926] = true, -- Soul Cage -- Lich
            [73937] = true, -- Soul Cage -- Lich
            [73939] = true, -- Soul Rupture -- Lich
            [73934] = true, -- Soul Cage -- Lich

            [49702] = true, -- Entropic Flare -- Spellfiend
            [50456] = true, -- Entropic Flare -- Spellfiend
            [50182] = true, -- Consuming Energy -- Spellfiend
            [50183] = true, -- Consuming Energy -- Spellfiend
            [52398] = true, -- Consuming Energy -- Spellfiend

            --[68735] = true, -- Vampiric Drain -- Vampire
            --[68750] = true, -- Vampiric Drain -- Vampire
            --[68765] = true, -- Vampiric Drain -- Vampire
            --[68771] = true, -- Vampiric Drain Heal Dummy -- Vampire
            --[68772] = true, -- Vampiric Drain -- Vampire

            --[2849] = true, -- Claw Slash -- Werewolf
            --[4651] = true, -- Claw Slash -- Werewolf
            --[2850] = true, -- Swipe -- Werewolf
            --[2867] = true, -- Crushing Leap -- Werewolf
            --[45576] = true, -- Generic Stagger Enemy -- Werewolf
            --[3415] = true, -- Flurry -- Werewolf
            --[13950] = true, -- Flurry -- Werewolf
            --[9467] = true, -- Flurry -- Werewolf
            --[60636] = true, -- Flurry -- Werewolf
            --[60637] = true, -- Flurry -- Werewolf
            --[60638] = true, -- Flurry -- Werewolf
            --[60639] = true, -- Flurry -- Werewolf
            --[60640] = true, -- Flurry -- Werewolf
            --[44055] = true, -- Devour -- Werewolf
            --[44054] = true, -- Devour -- Werewolf
            --[5785] = true, -- Blood Scent -- Werewolf
            --[58529] = true, -- Blood Scent -- Werewolf
            --[27329] = true, -- Houndsman Transform -- Werewolf
            --[27344] = true, -- Houndsman Regen -- Werewolf
            --[27345] = true, -- Houndsman Stun -- Werewolf
            --[27362] = true, -- Houndsman Delay -- Werewolf
            --[27365] = true, -- MT Houndsman Removal -- Werewolf
            --[27382] = true, -- MT Houndsman -- Werewolf

            [4323] = true, -- Ice Bolt -- Wraith
            [4337] = true, -- Winter's Reach -- Wraith
            [4346] = true, -- Winter's Reach -- Wraith
            [43146] = true, -- Winter's Reach -- Wraith

            [2954] = true, -- Swipe -- Zombie
            [13972] = true, -- Swipe -- Zombie
            [63614] = true, -- Swipe -- Zombie
            [2969] = true, -- Pound -- Zombie
            [2960] = true, -- Vomit -- Zombie
            [30347] = true, -- Vomit -- Zombie

            -- DWEMER

            [20238] = true, -- Charge -- Synergy (Dwemer Spider)
            [19970] = true, -- Static Field -- Synergy (Dwemer Spider)
            [19997] = true, -- Static Field -- Synergy (Dwemer Spider)
            [20506] = true, -- Overcharge Trigger -- Synergy (Dwemer Spider)
            [27333] = true, -- Overcharge -- Synergy (Dwemer Spider)
            [20207] = true, -- Overcharge -- Synergy (Another Dwemer)
            [27458] = true, -- tell others -- Synergy (Another Dwemer)
            [20206] = true, -- Overcharge -- Synergy (Another Dwemer)
            [20221] = true, -- Overcharge -- Synergy (Another Dwemer)
            [20505] = true, -- Overcharge -- Synergy (Dwemer Spider - Source)
            [20222] = true, -- Overcharge -- Synergy (Another Dwemer)
            [20504] = true, -- Overcharge -- Synergy (Dwemer Spider - Source)
            [20220] = true, -- Overcharge -- Synergy (Dwemer Spider - Other)
            [52679] = true, -- Overcharge -- Synergy (Dwemer Sphere)
            [52680] = true, -- Overcharge -- Synergy (Dwemer Centurion)

            [11245] = true, -- Axe -- Dwemer Centurion
            [13783] = true, -- Hammer -- Dwemer Centurion
            [11247] = true, -- Sweeping Spin -- Dwemer Centurion
            [43554] = true, -- Sweeping Spin -- Dwemer Centurion
            [11262] = true, -- Sweeping Spin -- Dwemer Centurion
            [11246] = true, -- Steam Breath -- Dwemer Centurion
            [11282] = true, -- Steam Breath -- Dwemer Centurion

            [64423] = true, -- Sparks -- Dwemer Sentry
            [64463] = true, -- Static Shield -- Dwemer Sentry
            [84312] = true, -- Static Shield -- Dwemer Sentry
            [70133] = true, -- Static Shield -- Dwemer Sentry
            [64556] = true, -- Static Eruption -- Dwemer Sentry
            [64489] = true, -- Find Turret -- Dwemer Sentry
            [64508] = true, -- Find Turret -- Dwemer Sentry
            [64460] = true, -- Static Shield -- Dwemer Sentry
            [64479] = true, -- Thunderbolt -- Dwemer Sentry
            [64543] = true, -- Thunderbolt -- Dwemer Sentry
            [70134] = true, -- Static Shield -- Dwemer Sentry
            [68790] = true, -- Static Shield Explosion -- Dwemer Sentry

            [7484] = true, -- Blade -- Dwemer Sphere
            [7485] = true, -- Dart -- Dwemer Sphere
            [16031] = true, -- Ricochet Wave -- Dwemer Sphere
            [29832] = true, -- Ricochet Wave -- Dwemer Sphere
            [7520] = true, -- Steam Wall -- Dwemer Sphere
            [84216] = true, -- Steam Wall -- Dwemer Sphere
            [7544] = true, -- Quake -- Dwemer Sphere
            [46053] = true, -- Quake -- Dwemer Sphere

            [7719] = true, -- Shocking Touch -- Dwemer Spider
            [20507] = true, -- Double Strike -- Dwemer Spider
            [20508] = true, -- Double Strike -- Dwemer Spider
            [7717] = true, -- Detonation -- Dwemer Spider
            [15206] = true, -- Detonation -- Dwemer Spider
            [84019] = true, -- Detonation -- Dwemer Spider
            [13536] = true, -- Detonation -- Dwemer Spider

            -- INSECTS

            [5278] = true, -- Bite -- Assassin Beetle
            [6137] = true, -- Laceration -- Assassin Beetle
            [51736] = true, -- Bleeding -- Assassin Beetle
            [51735] = true, -- Bleeding -- Assassin Beetle
            [44198] = true, -- Ambush -- Assassin Beetle
            [5268] = true, -- Collywobbles -- Assassin Beetle
            [5273] = true, -- Collywobbles -- Assassin Beetle
            [13677] = true, -- Acid Blood -- Assassin Beetle
            [13681] = true, -- Acid Blood -- Assassin Beetle
            [13680] = true, -- Acid Blood -- Assassin Beetle
            [29822] = true, -- Shadow Step -- Assassin Beetle
            [91789] = true, -- Ambush -- Assassin Beetle
            [91791] = true, -- Feast -- Assassin Beetle

            [6754] = true, -- Pincer -- Giant Scorpion
            [6755] = true, -- Sting -- Giant Scorpion
            [13671] = true, -- Sting -- Giant Scorpion
            [6757] = true, -- Blurred Strike -- Giant Scorpion
            [9040] = true, -- Blurred Strike -- Giant Scorpion
            [6756] = true, -- Paralyze -- Giant Scorpion
            [12312] = true, -- Snare -- Giant Scorpion
            [6758] = true, -- Hardened Carapace -- Giant Scorpion

            [4731] = true, -- Bite -- Giant Spider
            [44086] = true, -- Fire Runes -- Giant Spider
            [5790] = true, -- Poisonous Burst -- Giant Spider
            [5685] = true, -- Corrosive Bite -- Giant Spider
            [8087] = true, -- Poison Spray -- Giant Spider
            [8088] = true, -- Poison Spray -- Giant Spider
            [4730] = true, -- Spit -- Giant Spider
            [4737] = true, -- Encase -- Giant Spider
            [47318] = true, -- Encase -- Giant Spider
            [13382] = true, -- Devour -- Giant Spider
            [20541] = true, -- Devour -- Giant Spider
            [13381] = true, -- Devour -- Giant Spider

            [9225] = true, -- Bite -- Giant Wasp
            [9226] = true, -- Sting -- Giant Wasp
            [25103] = true, -- Charge -- Giant Wasp
            [25110] = true, -- Charge -- Giant Wasp
            [48559] = true, -- Focused Charge -- Giant Wasp
            [25114] = true, -- Focused Charge -- Giant Wasp
            [25119] = true, -- Charge -- Giant Wasp
            [25116] = true, -- Charge -- Giant Wasp
            [25113] = true, -- Charge -- Giant Wasp
            [25120] = true, -- Charge -- Giant Wasp
            [25115] = true, -- Charge -- Giant Wasp
            [25111] = true, -- Charge -- Giant Wasp
            [25112] = true, -- Charge -- Giant Wasp
            [9229] = true, -- Inject Larva -- Giant Wasp
            [9237] = true, -- Larva Gestation -- Giant Wasp
            [54685] = true, -- Young Wasp Initialize -- Giant Wasp
            [9238] = true, -- Larva Burst -- Giant Wasp
            [9242] = true, -- Larva Burst -- Giant Wasp
            [10392] = true, -- Larva Burst -- Giant Wasp

            [6788] = true, -- Bite -- Hoarvor
            [6800] = true, -- Bloodletting -- Hoarvor
            [42292] = true, -- Bloodletting -- Hoarvor
            [6795] = true, -- Latch On -- Hoarvor
            [13585] = true, -- Latch On -- Hoarvor
            [13587] = true, -- Latch On -- Hoarvor

            [61248] = true, -- Necrotic Explosion -- Necrotic Hoarvor
            [61243] = true, -- Vile Bite -- Necrotic Hoarvor
            [69392] = true, -- Vile Bite Poison -- Necrotic Hoarvor
            [61244] = true, -- Fevered Retch -- Necrotic Hoarvor
            [61245] = true, -- Fevered Retch -- Necrotic Hoarvor
            [61360] = true, -- Infectious Swarm -- Necrotic Hoarvor
            [61380] = true, -- Infectious Swarm -- Necrotic Hoarvor
            [61377] = true, -- Infectious Swarm -- Necrotic Hoarvor
            [61372] = true, -- Infectious Swarm -- Necrotic Hoarvor
            [61374] = true, -- Infectious Swarm -- Necrotic Hoarvor
            [61375] = true, -- Infectious Swarm -- Necrotic Hoarvor
            [61376] = true, -- Infectious Swarm -- Necrotic Hoarvor
            [61427] = true, -- Necrotic Explosion -- Necrotic Hoarvor
            [61249] = true, -- Necrotic Explosion -- Necrotic Hoarvor
            [61388] = true, -- Necrotic Explosion Snare -- Necrotic Hoarvor

            [73166] = true, -- Bite -- Kotu Gava
            [73214] = true, -- Bite -- Kotu Gava
            [73215] = true, -- Bite -- Kotu Gava

            [73192] = true, -- Swarmburst -- Kotu Gava Broodmother
            [73184] = true, -- Vile Spit -- Kotu Gava Broodmother
            [73172] = true, -- Swarm -- Kotu Gava Broodmother
            [73173] = true, -- Swarm -- Kotu Gava Broodmother
            [73193] = true, -- Swarm -- Kotu Gava Broodmother
            [73177] = true, -- Swarmburst -- Kotu Gava Broodmother
            [73174] = true, -- Swarm -- Kotu Gava Broodmother
            [73176] = true, -- Swarm -- Kotu Gava Broodmother
            [73175] = true, -- Swarm -- Kotu Gava Broodmother
            [76579] = true, -- Bite -- Kotu Gava Broodmother
            [76580] = true, -- Bite -- Kotu Gava Broodmother
            [76581] = true, -- Bite -- Kotu Gava Broodmother
            [73199] = true, -- Swarmburst -- Kotu Gava Broodmother
            [73200] = true, -- Swarmburst -- Kotu Gava Broodmother
            [73194] = true, -- Swarmburst -- Kotu Gava Broodmother
            [73198] = true, -- Swarmburst -- Kotu Gava Broodmother
            [73195] = true, -- Swarmburst -- Kotu Gava Broodmother
            [73196] = true, -- Swarmburst -- Kotu Gava Broodmother
            [73197] = true, -- Swarmburst -- Kotu Gava Broodmother

            [8276] = true, -- Bite -- Kwama Scrib
            [83977] = true, -- Bite -- Kwama Scrib
            [8272] = true, -- Spit -- Kwama Scrib
            [47838] = true, -- Contagion -- Kwama Scrib
            [10916] = true, -- Burrow -- Kwama Scrib
            [42869] = true, -- Burrow -- Kwama Scrib

            [9287] = true, -- Bite -- Kwama Worker
            [9291] = true, -- Pounce -- Kwama Worker
            [83953] = true, -- Pounce -- Kwama Worker
            [14839] = true, -- Charge -- Kwama Worker
            [14841] = true, -- Charge -- Kwama Worker
            [48539] = true, -- Focused Charge -- Kwama Worker
            [14846] = true, -- Focused Charge -- Kwama Worker
            [18808] = true, -- Charge -- Kwama Worker
            [18810] = true, -- Charge -- Kwama Worker
            [14844] = true, -- Charge -- Kwama Worker
            [14845] = true, -- Charge -- Kwama Worker
            [18814] = true, -- Charge -- Kwama Worker
            [48540] = true, -- Charge -- Kwama Worker
            [18548] = true, -- Charge -- Kwama Worker
            [18546] = true, -- Shattered Ground -- Kwama Worker

            [15011] = true, -- Swipe -- Kwama Warrior
            [9763] = true, -- Smash -- Kwama Warrior
            [9764] = true, -- Smash -- Kwama Warrior
            [9769] = true, -- Excavation -- Kwama Warrior
            [18585] = true, -- Excavation -- Kwama Warrior
            [27463] = true, -- Excavation -- Kwama Warrior
            [49192] = true, -- Excavation -- Kwama Warrior
            [18567] = true, -- Excavation -- Kwama Warrior
            [18568] = true, -- Kwama Scrib Swarm -- Kwama Warrior

            [6127] = true, -- Bite -- Shalk
            [5260] = true, -- Flamethrower -- Shalk
            [10947] = true, -- Fiery Breath -- Shalk
            [5252] = true, -- Fire Bite -- Shalk
            [6129] = true, -- Fire Bite -- Shalk
            [5262] = true, -- Burning Ground -- Shalk
            [5265] = true, -- Burning Ground -- Shalk

            [5308] = true, -- Thunder Bite -- Thunderbug
            [8429] = true, -- Zap -- Thunderbug
            [65079] = true, -- Zap -- Thunderbug
            [26379] = true, -- Zap -- Thunderbug
            [26382] = true, -- Bolt -- Thunderbug
            [26412] = true, -- Thunderstrikes -- Thunderbug
            [34980] = true, -- Thunderstrikes -- Thunderbug

            -- MONSTER
            [10259] = true, -- Double Swipe -- Gargoyle
            [32672] = true, -- Double Swipe -- Gargoyle
            [10270] = true, -- Quake -- Gargoyle
            [10271] = true, -- Quake -- Gargoyle
            [10256] = true, -- Lacerate -- Gargoyle
            [25716] = true, -- Stun -- Gargoyle
            [25718] = true, -- Bleeding -- Gargoyle
            [25714] = true, -- Vampiric Touch -- Gargoyle
            [25715] = true, -- Vampiric Touch -- Gargoyle

            [8671] = true, -- Sweep -- Giant
            [46845] = true, -- Sweep -- Giant
            [8674] = true, -- Kick -- Giant
            [26124] = true, -- Shatter -- Giant
            [26129] = true, -- Shatter -- Giant
            [15715] = true, -- Obliterate -- Giant
            [43743] = true, -- Obliterate -- Giant
            [43742] = true, -- Obliterate -- Giant

            [2901] = true, -- Staff Strike -- Hag
            [2786] = true, -- Steal Essence -- Hag
            [21642] = true, -- Steal Essence -- Hag
            [3349] = true, -- Reflective Shadows -- Hag
            [2821] = true, -- Luring Snare -- Hag
            [32267] = true, -- Grapple -- Hag
            [32268] = true, -- Grapple -- Hag

            [10611] = true, -- Flare -- Hagraven
            [10615] = true, -- Raven Storm -- Hagraven
            [10616] = true, -- Raven Storm -- Hagraven
            [12426] = true, -- Raven Storm -- Hagraven
            [10613] = true, -- Fire Bomb -- Hagraven
            [10614] = true, -- Fire Bomb -- Hagraven
            [58220] = true, -- Surround -- Hagraven
            [58221] = true, -- Shadow Strike -- Hagraven
            [58222] = true, -- Shadow Strike -- Hagraven
            [64781] = true, -- Briar Heart Can Resurrect -- Hagraven
            [64786] = true, -- Briar Heart Resurrection -- Hagraven
            [64806] = true, -- Briarheart Resurrection -- Hagraven
            [64800] = true, -- Briarheart Resurrection -- Hagraven
            [64808] = true, -- Briarheart Resurrection -- Hagraven
            [65027] = true, -- Briarheart Resurrection -- Hagraven
            [65028] = true, -- System Shock -- Hagraven

            [4112] = true, -- Talon -- Harpy
            [4125] = true, -- Kick -- Harpy
            [24551] = true, -- Bolt -- Harpy
            [4684] = true, -- Bolt -- Harpy
            [4123] = true, -- Wing Slice -- Harpy
            [24369] = true, -- Wing Slice -- Harpy
            [13515] = true, -- Wind Gust -- Harpy
            [13516] = true, -- Wind Gust -- Harpy
            [13517] = true, -- Wind Gust -- Harpy
            [24604] = true, -- Charged Ground -- Harpy
            [8628] = true, -- Charged Ground -- Harpy
            [13523] = true, -- Charged Ground -- Harpy
            [4689] = true, -- Lightning Gale -- Harpy
            [4690] = true, -- Lightning Gale -- Harpy
            [4139] = true, -- Soar -- Harpy

            [9846] = true, -- Bite -- Ice Wraith
            [24929] = true, -- Shard Burst -- Ice Wraith
            [43809] = true, -- Shard Burst -- Ice Wraith
            [9853] = true, -- Shard Burst -- Ice Wraith
            [43810] = true, -- Shard Burst -- Ice Wraith
            [38920] = true, -- Shard Burst -- Ice Wraith
            [24877] = true, -- Shard Burst -- Ice Wraith
            [24865] = true, -- Blood in the Water -- Ice Wraith
            [24866] = true, -- Blood in the Water -- Ice Wraith
            [48549] = true, -- Focused Charge -- Ice Wraith
            [24870] = true, -- Blood in the Water -- Ice Wraith
            [24872] = true, -- Blood in the Water -- Ice Wraith
            [24869] = true, -- Blood in the Water -- Ice Wraith
            [46565] = true, -- Rubble -- Ice Wraith
            [46563] = true, -- Blood in the Water -- Ice Wraith

            [14801] = true, -- Flare -- Imp (Fire)
            [14802] = true, -- Fireball -- Imp (Fire)
            [17703] = true, -- Flame Ray -- Imp (Fire)
            [65078] = true, -- Flame Ray -- Imp (Fire)
            [17706] = true, -- Flame Ray -- Imp (Fire)

            [7732] = true, -- Bolt -- Imp (Lightning)
            [13648] = true, -- Spark -- Imp (Lightning)
            [8884] = true, -- Zap -- Imp (Lightning)
            [65077] = true, -- Zap -- Imp (Lightning)
            [14666] = true, -- Zap -- Imp (Lightning)

            [9670] = true, -- Strike -- Lamia
            [9671] = true, -- Howling Strike -- Lamia
            [89382] = true, -- Howling Strike -- Lamia
            [7830] = true, -- Shockwave -- Lamia Medica
            [9677] = true, -- Summon Spectral Lamia -- Lamia Medica
            [12074] = true, -- Summon Spectral Lamia -- Lamia Medica
            [9680] = true, -- Summon Spectral Lamia -- Lamia Medica
            [89399] = true, -- Summon Spectral Lamia -- Lamia Medica
            [89398] = true, -- Summon Spectral Lamia -- Lamia Medica
            [89400] = true, -- Summon Spectral Lamia -- Lamia Medica
            [7853] = true, -- Convalescence -- Lamia Medica
            [24745] = true, -- Harmony -- Lamia
            [7831] = true, -- Harmony -- Lamia
            [23358] = true, -- Harmony -- Lamia
            [24814] = true, -- Harmony -- Lamia
            [24817] = true, -- Harmony -- Lamia

            [3757] = true, -- Claw -- Lurcher
            [3860] = true, -- Pulverize -- Lurcher
            [32698] = true, -- Pulverize -- Lurcher
            [3855] = true, -- Crushing Limbs -- Lurcher
            [38554] = true, -- Stun -- Lurcher
            [3767] = true, -- Choking Pollen -- Lurcher
            [4769] = true, -- Choking Pollen -- Lurcher

            [75863] = true, -- Cleave -- Minotaur
            [75864] = true, -- Cleave -- Minotaur
            [75865] = true, -- Cleave -- Minotaur
            [75867] = true, -- Clobber -- Minotaur
            [80440] = true, -- Clobber -- Minotaur
            [80014] = true, -- Clobber -- Minotaur
            [75868] = true, -- Clobber -- Minotaur
            [75917] = true, -- Ram -- Minotaur
            [75920] = true, -- Ram -- Minotaur
            [75921] = true, -- Ram -- Minotaur
            [75919] = true, -- Ram -- Minotaur
            [75922] = true, -- Ram -- Minotaur
            [75872] = true, -- Flying Axe -- Minotaur
            [79541] = true, -- Flying Leap -- Minotaur
            [79539] = true, -- Flying Leap -- Minotaur
            [75925] = true, -- Elemental Weapon -- Minotaur
            [75928] = true, -- Elemental Pool -- Minotaur
            [75933] = true, -- Elemental Wave -- Minotaur

            [75949] = true, -- Fiery Surge -- Minotaur Shaman
            [77989] = true, -- Flame Wave -- Minotaur Shaman
            [75951] = true, -- Brimstone Hailfire -- Minotaur Shaman
            [75952] = true, -- Brimstone Hailfire -- Minotaur Shaman
            [75953] = true, -- Brimstone Hailfire -- Minotaur Shaman
            [75954] = true, -- Brimstone Hailfire -- Minotaur Shaman
            [75955] = true, -- Pillars of Nirn -- Minotaur Shaman
            [81577] = true, -- Pillars of Nirn -- Minotaur Shaman
            [75957] = true, -- Pillars of Nirn -- Minotaur Shaman
            [75980] = true, -- Pillar Eruption -- Minotaur Shaman
            [75976] = true, -- Pillar of Nirn -- Minotaur Shaman
            [81578] = true, -- Pillar of Nirn -- Minotaur Shaman
            [75978] = true, -- Pillar Explosion -- Minotaur Shaman

            [5520] = true, -- Frost Bolt -- Nereid
            [5559] = true, -- Icy Geyser -- Nereid
            [11024] = true, -- Icy Geyser -- Nereid
            [5540] = true, -- Hurricane -- Nereid
            [16040] = true, -- Hurricane -- Nereid
            [33459] = true, -- Hurricane -- Nereid

            [5254] = true, -- Punch -- Ogre
            [5257] = true, -- Backhand -- Ogre
            [5256] = true, -- Shockwave -- Ogre
            [34616] = true, -- Shockwave -- Ogre
            [6150] = true, -- Off Balance -- Ogre
            [5349] = true, -- Stagger -- Ogre
            [8069] = true, -- Intimidating Roar -- Ogre
            [24985] = true, -- Intimidating Roar -- Ogre
            [5881] = true, -- Smash -- Ogre
            [24948] = true, -- Smash -- Ogre
            [34627] = true, -- Smash -- Ogre
            [24949] = true, -- Smash -- Ogre
            [34614] = true, -- Smash -- Ogre

            [53136] = true, -- Frost Bolt -- Ogre Shaman
            [65434] = true, -- Frost Bolt -- Ogre Shaman
            [53773] = true, -- Frost Bolt -- Ogre Shaman
            [53774] = true, -- Frost Bolt -- Ogre Shaman
            [65469] = true, -- Frost Bolt -- Ogre Shaman
            [65470] = true, -- Frost Bolt -- Ogre Shaman
            --[82685] = true, -- CC (Crowd Control) Shared Cool -- Ogre Shaman
            [53142] = true, -- Ice Pillar -- Ogre Shaman
            [54414] = true, -- Ice Pillar Initialize -- Ogre Shaman
            [34385] = true, -- Generic AOE -- Ogre Shaman
            [53145] = true, -- Ice Pillar Chill -- Ogre Shaman
            [53966] = true, -- Ice Pillar Chill -- Ogre Shaman
            [54256] = true, -- Ice Pillar Chill -- Ogre Shaman
            [54327] = true, -- Winter's Reach -- Ogre Shaman
            [74457] = true, -- Ice Pillar -- Ogre Shaman
            -- [82687] = true, -- S (Support) Shared Cool -- Ogre Shaman
            [64540] = true, -- Freeze Wounds -- Ogre Shaman
            [72069] = true, -- Freeze Wounds -- Ogre Shaman
            [70592] = true, -- Freeze Wounds -- Ogre Shaman
            [53137] = true, -- Freeze Wounds -- Ogre Shaman
            [72068] = true, -- Freeze Wounds -- Ogre Shaman
            [70591] = true, -- Freeze Wounds -- Ogre Shaman


            [2986] = true, -- Lacerate -- Spriggan
            [21582] = true, -- Nature's Swarm -- Spriggan
            [31699] = true, -- Nature's Swarm -- Spriggan
            [13475] = true, -- Healing Salve -- Spriggan
            [89083] = true, -- Healing Salve -- Spriggan
            [89084] = true, -- Healing Salve -- Spriggan
            [89085] = true, -- Healing Salve -- Spriggan
            [89099] = true, -- Summon Beast -- Spriggan
            [89143] = true, -- Summon Beast -- Spriggan
            [89119] = true, -- Summon Beast -- Spriggan
            [89127] = true, -- Summon Beast -- Spriggan
            [21570] = true, -- Backstep -- Spriggan
            [13477] = true, -- Control Beast -- Spriggan
            [89126] = true, -- Summon Beast -- Spriggan
            [89229] = true, -- Summon Beast -- Spriggan

            [42793] = true, -- Strangler: -- Strangler
            [42794] = true, -- Strangler: -- Strangler
            [9320] = true, -- Strike -- Strangler
            [14219] = true, -- Spit -- Strangler
            [9346] = true, -- Strangle -- Strangler
            [42211] = true, -- Strangle -- Strangler
            [9323] = true, -- Poisoned Ground -- Strangler
            [9321] = true, -- Grapple -- Strangler
            [9707] = true, -- Grapple -- Strangler
            [14221] = true, -- Grapple -- Strangler
            [64132] = true, -- Grapple Immunity -- Strangler

            [8926] = true, -- Regeneration -- Troll
            [61225] = true, -- Regeneration -- Troll
            [8925] = true, -- Slap -- Troll
            [44736] = true, -- Swinging Cleave -- Troll
            [44737] = true, -- Swinging Cleave -- Troll
            [9009] = true, -- Tremor -- Troll
            [9011] = true, -- Tremor -- Troll

            [48253] = true, -- Rock Toss -- Troll (Ranged)
            [60549] = true, -- Rock Toss -- Troll (Ranged)
            [48256] = true, -- Boulder Toss -- Troll (Ranged)
            [58655] = true, -- Turn -- Troll (Ranged)
            [48257] = true, -- Boulder Toss -- Troll (Ranged)
            [50387] = true, -- Boulder Toss -- Troll (Ranged)
            [48282] = true, -- Consuming Omen -- Troll (Ranged)
            [48287] = true, -- Consuming Omen -- Troll (Ranged)
            [48294] = true, -- Consuming Omen -- Troll (Ranged)
            [48297] = true, -- Consuming Omen -- Troll (Ranged)
            [48286] = true, -- Consuming Omen -- Troll (Ranged)
            [48288] = true, -- Consuming Omen -- Troll (Ranged)

            [76266] = true, -- Rip -- River Troll (DB DLC)
            [76268] = true, -- Lope -- River Troll (DB DLC)
            [76271] = true, -- Lope -- River Troll (DB DLC)
            [78834] = true, -- Lope -- River Troll (DB DLC)
            [76274] = true, -- Lope -- River Troll (DB DLC)

            [76295] = true, -- Crab Toss -- River Troll (DB DLC)
            [80506] = true, -- Crab Toss -- River Troll (DB DLC)
            [76297] = true, -- Crab Toss -- River Troll (DB DLC)
            [76302] = true, -- SW Spawn Stun -- River Troll (DB DLC)
            [76298] = true, -- Crab Toss -- River Troll (DB DLC)
            [81045] = true, -- Crab Toss -- River Troll (DB DLC)
            [76300] = true, -- Scuttle -- River Troll (DB DLC)
            [76277] = true, -- Close Wounds -- River Troll (DB DLC)
            [76278] = true, -- Close Wounds -- River Troll (DB DLC)
            [78314] = true, -- Close Wounds -- River Troll (DB DLC)

            [4304] = true, -- Assault -- Wisp
            [18634] = true, -- Assault -- Wisp
            [4309] = true, -- Dying Blast -- Wisp
            [64221] = true, -- Dying Blast -- Wisp

            [6596] = true, -- Summon Wisp -- Wispmother
            [64211] = true, -- Summon Wisp -- Wispmother
            [7976] = true, -- Rain of Wisps -- Wispmother
            [8025] = true, -- Rain of Wisps -- Wispmother
            [19043] = true, -- Rain of Wisps -- Wispmother
            [19050] = true, -- Rain of Wisps -- Wispmother
            [19056] = true, -- Rain of Wisps -- Wispmother
            [61204] = true, -- Rain of Wisps -- Wispmother
            [19061] = true, -- Rain of Wisps -- Wispmother
            [18040] = true, -- Clone -- Wispmother
            [18049] = true, -- Clone -- Wispmother
            [18060] = true, -- Clone -- Wispmother
            [18069] = true, -- Wispmother Surround Clone 1 -- Wispmother
            [18073] = true, -- Wispmother Surround Clone 2 -- Wispmother
            [18066] = true, -- Wispmother Surround -- Wispmother
            [19069] = true, -- Rain of Wisps -- Wispmother

            ---------------------------------
            -- MORROWIND DLC NPCS
            ---------------------------------

            [85199] = true, -- Scythe
            [85200] = true, -- Scythe
            [85197] = true, -- Snap
            [85198] = true, -- Snap
            [85201] = true, -- Bite
            [85202] = true, -- Gore
            [85084] = true, -- Shriek
            [85085] = true, -- Shriek

            [90765] = true, -- Acid Spray
            [90776] = true, -- Acid Spray
            [90777] = true, -- Acid Spray
            [90779] = true, -- Acid Spray
            [90781] = true, -- Acid Spray
            [90790] = true, -- Acid Spray
            [90780] = true, -- Acid Spray
            [90778] = true, -- Acid Pool
            [90809] = true, -- Acid Spray
            [90811] = true, -- Acid Spray
            [90810] = true, -- Acid Spray
            [90814] = true, -- Acid Spray
            [90813] = true, -- Acid Spray
            [90816] = true, -- Acid Spray
            [90812] = true, -- Acid Spray
            [90815] = true, -- Acid Pool
            [85172] = true, -- Winnow
            [94846] = true, -- Winnow
            [85175] = true, -- Winnow
            [85186] = true, -- Winnow
            [85173] = true, -- Winnow
            [85203] = true, -- Nix-Call
            [95389] = true, -- Nix-Call
            [90187] = true, -- Nix-Call
            [90190] = true, -- Nix-Call
            [89940] = true, -- Turret

            [93597] = true, -- Achievement (Cliff Strider)
            [85387] = true, -- Snap (Cliff Strider)
            [85388] = true, -- Stab (Cliff Strider)
            [93516] = true, -- Tail Lash (Cliff Strider)
            [85395] = true, -- Dive (Cliff Strider)
            [92129] = true, -- Dive (Cliff Strider)
            [92085] = true, -- Dive (Cliff Strider)
            [85398] = true, -- Dive (Cliff Strider)
            [90319] = true, -- Dive (Cliff Strider)
            [90320] = true, -- Dive (Cliff Strider)
            [85399] = true, -- Retch (Cliff Strider)
            [85420] = true, -- Retch (Cliff Strider)
            [85421] = true, -- Retch (Cliff Strider)
            [85436] = true, -- Frenzied Feast (Cliff Strider)
            [85448] = true, -- Frenzied Feast (Cliff Strider)
            [85390] = true, -- Slash (Cliff Strider Matriarch)
            [85391] = true, -- Slash (Cliff Strider Matriarch)
            [85394] = true, -- Slash (Cliff Strider Matriarch)
            [85392] = true, -- Slash (Cliff Strider Matriarch)
            [85393] = true, -- Slash (Cliff Strider Matriarch)

            [87022] = true, -- Summon Swarm
            [92017] = true, -- Summon Swarm
            [86561] = true, -- Snare
            [85645] = true, -- Bombard
            [85646] = true, -- Bomb
            [85522] = true, -- Ashen Wind
            [85524] = true, -- Ashen wind
            [85525] = true, -- Ashen Wind
            [85526] = true, -- Ashen Cloud
            [87125] = true, -- Heat Vents
            [87126] = true, -- Heat Vents
            [92018] = true, -- Summon Swarm

            [92083] = true, -- Slam
            [87062] = true, -- Fetcherfly Storm
            [87071] = true, -- Fetcherfly Storm
            [87072] = true, -- Fetcherfly Storm
            [87073] = true, -- Fetcherfly Storm
            [92075] = true, -- Fetcherfly Storm
            [87087] = true, -- Fetcherfly Storm
            [87095] = true, -- Colonize
            [92078] = true, -- Colonize
            [92079] = true, -- Colonize
            [92077] = true, -- Colonize
            [92081] = true, -- Colonize
            [87030] = true, -- Focused Swarm
            [87031] = true, -- Focused Swarm

            [85242] = true, -- Quick Shot
            [85255] = true, -- Shock Blast
            [88668] = true, -- Impulse Mine
            [88730] = true, -- Impulse Mine
            [88728] = true, -- Impluse Mine
            [85270] = true, -- Shock Barrage
            [85288] = true, -- Shock Barrage
            [91013] = true, -- Shock Barrage
            [85319] = true, -- Siege Ballista
            [91093] = true, -- Split Bolt
            [91094] = true, -- Split Bolt
            [91095] = true, -- Split Bolt
            [91096] = true, -- Split Bolt
            [91087] = true, -- Split Bolt
            [91092] = true, -- Split Bolt
            [85326] = true, -- Polarizing Field
            [85327] = true, -- Polarizing Field
            [85334] = true, -- Polarizing Field

            [87276] = true, -- Chomp
            [87310] = true, -- Run Away!
            [87312] = true, -- Run Away!

            [84825] = true, -- Slash
            [84826] = true, -- Slash
            [84827] = true, -- Rake
            [84834] = true, -- Rake

            [94903] = true, -- Spring
            [94908] = true, -- Spring
            [94907] = true, -- Spring

            [87237] = true, -- Spring
            [87242] = true, -- Spring
            [87241] = true, -- Spring

            [87247] = true, -- Devour
            [87988] = true, -- Devour
            [91413] = true, -- Devour
            [87252] = true, -- Devour
            [87253] = true, -- Devour
            [87251] = true, -- Devour
            [87385] = true, -- Devour
            [87386] = true, -- Devour
            [87987] = true, -- Devour

            [84944] = true, -- Hollow
            [91440] = true, -- Hollow
            [91439] = true, -- Hollow
            [84944] = true, -- Hollow
            [84967] = true, -- Hollow
            [84988] = true, -- Hollow
            [84990] = true, -- Hollow

            [87269] = true, -- Torpor
            [87270] = true, -- Torpor
            [87538] = true, -- Torpor
            [87536] = true, -- Torpor
            [89751] = true, -- Dispel Illusion
            [87271] = true, -- Torpor
            [87273] = true, -- Torpor
            [91426] = true, -- Match Health
            [87639] = true, -- Fade
            [91425] = true, -- Torpor
            [91433] = true, -- Torpor

            [89030] = true, -- Subduction
            [88246] = true, -- Iron Hand
            [88247] = true, -- Eruption
            [88282] = true, -- Rock Stomp
            [88286] = true, -- Rock Stomp
            [88296] = true, -- Rock Stomp
            [88285] = true, -- Rock Stomp
            [88295] = true, -- Rock Stomp
            [88261] = true, -- Lava Wave
            [88270] = true, -- Lava Wave
            [88271] = true, -- Lava Wave
            [88269] = true, -- Lava Wave
            [88272] = true, -- Lava Wave
            [88267] = true, -- Lava Wave
            [88266] = true, -- Lava Wave
            [89259] = true, -- Subduction
            [89260] = true, -- Subduction
            [89261] = true, -- Subduction
            [89258] = true, -- Subduction
            [88297] = true, -- Blast Furnace
            [88298] = true, -- Blast Furnace
            [88319] = true, -- Blast Furnace
            [88320] = true, -- Blast Furnace
            [88321] = true, -- Blast Furnace
            [88323] = true, -- Blast Furnace
            [88316] = true, -- Blast Furnace
            [88317] = true, -- Blast Furnace
            [88318] = true, -- Blast Furnace

            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --

            ------------------------------------------
            -- MAIN QUEST
            ------------------------------------------

            -- Tutorial (Soul Shriven in Coldharbour)
            [82077] = true, -- Portal In
            [90733] = true, -- Knockout
            [48675] = true, -- Vitality of the Titanborn

            [62805] = true, -- Stun
            [62802] = true, -- Targetable Off
            [62803] = true, -- Targetable On
            [62801] = true, -- Portal Spawn
            [75514] = true, -- Greater Protection
            [75527] = true, -- Ultimate Protection
            [64089] = true, -- Titan Bash
            [64091] = true, -- Power Bash
            [64772] = true, -- MQ1 Input Lock LAtk
            [64769] = true, -- MQ1 Input Lock LAtk
            [64092] = true, -- PermaStun
            [64133] = true, -- PermRoot
            [63883] = true, -- Major Protection
            [64029] = true, -- MQ1 Inpuit Lock Visual
            [61748] = true, -- Heavy Attack
            [64784] = true, -- MQ1 Tutorial Block Heavy
            [61956] = true, -- Off-Balance Timer
            [61980] = true, -- Off-Balance
            [61961] = true, -- Perma Set Off Balance Target
            [64677] = true, -- MQ1 Tutorial Perma Off-Balance
            [63900] = true, -- Major Protection die
            [64676] = true, -- MQ1 Tutorial Perma Off-Balance
            [61916] = true, -- Heat Wave
            [64798] = true, -- MQ1 Heat Wave (Tutorial)
            [75531] = true, -- Retarget
            [63737] = true, -- Heavy Attack
            [63684] = true, -- Uppercut
            [63685] = true, -- Uppercut Stun
            [63686] = true, -- Uppercut
            [63761] = true, -- Pound
            [63752] = true, -- Vomit
            [63753] = true, -- Vomit
            [64069] = true, -- Sentinel Barrier
            [64247] = true, -- MQ1 Input Lock Visual No Delay
            [63555] = true, -- MQ1 Sneak Atk Tutorial Trigger
            [63559] = true, -- MQ1 Sneak Tutorial Trigger
            [64072] = true, -- Eye of the Sentinel
            [48345] = true, -- Focused Healing
            [48346] = true, -- Minor Wound
            [63755] = true, -- Heat Wave
            [63756] = true, -- Heat Wave
            [51692] = true, -- Ground Rise on
            [63521] = true, -- Bone Crush
            [63522] = true, -- Bone Saw
            [61648] = true, -- Replenish Stamina
            [61644] = true, -- Incapacitating Terror
            [61646] = true, -- Incapacitating Terror
            [64074] = true, -- Incapacitating Terror
            [64166] = true, -- Major Protection
            [63398] = true, -- Backlash
            [63615] = true, -- Insight
            [64110] = true, -- Rending the Skein
            [63637] = true, -- Teleport
            [63633] = true, -- Escape Cold Harbor
            [63638] = true, -- Mq1_ExitLeap
            [63636] = true, -- Dummy
            [63635] = true, -- Escape Cold Harbor
            [64101] = true, -- Waking
            [25992] = true, -- CON_Screen Flash White
            [64112] = true, -- CON_Ground Rise on

            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --
            [00000] = true, --


            ------------------------------------------
            -- VVARDENFELL QUESTS/EVENTS
            ------------------------------------------

            -- Lava
            [11338] = true, -- In Lava
            [11339] = true, -- Lava Snare

            -- Tutorial
            [89095] = true, -- Slaver Clothes
            [92087] = true, -- Slaver Clothes
            [92106] = true, -- Slaver Clothes
            [92108] = true, -- Slaver Clothes
            [89096] = true, -- Slaver Clothes
            [88444] = true, -- Sit
            [93489] = true, -- Sit
            [92743] = true, -- Waking
            [47704] = true, -- Q4885 No Damage Follower
            [88453] = true, -- Bound
            [90591] = true, -- Manacled
            [74501] = true, -- Generic Stun 6s No Anim
            [94362] = true, -- Q5804 Player Hit Reaction
            [92245] = true, -- MQ1 Input Lock LAtk
            [92243] = true, -- MQ1 Input Lock LAtk
            [92248] = true, -- Q5804 Input Lock Visual
            [1718] = true, -- Attack
            [83416] = true, -- Heavy Attack
            [93577] = true, -- MQ1 Tutorial Block Heavy
            [92262] = true, -- Off-Balance Timer
            [92265] = true, -- Off-Balance
            [92263] = true, -- Perma Set Off Balance Target
            [92266] = true, -- MQ1 Tutorial Perma Off-Balance
            [92233] = true, -- Throw Dagger
            [92238] = true, -- MQ1 Heat Wave (Tutorial)
            [62546] = true, -- MQ1 Lockpick Grant
            [93604] = true, -- Q5804 Input Lock Visual
            [88904] = true, -- Metal Trap
            [88905] = true, -- Metal Trap
            [22337] = true, -- Generic Fade to Black 2s
            [92002] = true, -- Waking

            -- Tutorial NPC's
            [92668] = true, -- Whirlwind (Slaver Cutthroat)
            [92669] = true, -- Whirlwind (Slaver Cutthroat)
            [63269] = true, -- Heat Wave (Fist Mate Ulveni)
            [63270] = true, -- Heat Wave (Fist Mate Ulveni)

            -- Divine Conundrum (Main Quest)
            [91600] = true, -- Disintegration
            [91604] = true, -- Carapace
            [91603] = true, -- Disintegration
            [91005] = true, -- Q5803 Divination Beam

            -- Divine Inquiries (Main Quest)
            [85264] = true, -- Sacrifice
            [85265] = true, -- Sacrifice
            [85266] = true, -- Sacrifice

            -- A Web of Trouble (Sidequest)
            [91347] = true, -- Readying Signal
            [89266] = true, -- Summon Spider
            [89269] = true, -- Summon Spider
            [89276] = true, -- Summon Exploder
            [89278] = true, -- Summon Exploder
            [89277] = true, -- Summon Exploder
            [89268] = true, -- Summon Spider
            [89272] = true, -- Spider Explosion
            [89282] = true, -- Spider Explosion
            [89274] = true, -- Spider Explosion

            -- Like Blood from a Stone (Sidequest)
            [86649] = true, -- Accelerated Transposition
            [86743] = true, -- Accelerated Transposition
            [86646] = true, -- Accelerated Transposition
            [90511] = true, -- Accelerated Transposition

            -- The Memory Stone (Sidequest)
            [87342] = true, -- Vision of a Memory
            [87359] = true, -- Memory Projection

            -- Fleeing the Past (SQ)
            [92580] = true, -- Q5887 - AshurStealthOut
            [93993] = true, -- Assassinate
            [94461] = true, -- Jump
            [93994] = true, -- Whirlwind
            [93995] = true, -- Whirlwind
            [92585] = true, -- Drink Potion

            -- Family Reunion (IDK if MQ or SQ)
            [86979] = true, -- Summon Skaafin
            [86980] = true, -- Summon Skaafin
            [86981] = true, -- Summon Skaafin

            -- A Melodic Mistake (SQ)
            [85450] = true, -- Q5872 - Dwemer Sound - Far
            [89255] = true, -- Q5872 - Dwemer Sound - Mid
            [86862] = true, -- Powered Up
            [86865] = true, -- Powered Up
            [86608] = true, -- Q5872 - Dwarven Barrier
            [86633] = true, -- Barrier Break
            [89256] = true, -- Q5872 - Dwemer Sound - Near
            [86709] = true, -- Q5872 - Puzzle Solved
            [86714] = true, -- Q5872 - Gnisis Teleport Succes

            -- Hatching a Plan (SQ)
            [91411] = true, -- Q5883- CliffStriderSpawn
            [95519] = true, -- Generic Stun 3s No Anim

            -- Breaking Through the Fog
            [94842] = true, -- Dousing...

            -- Haunted Grounds (SQ)
            [93411] = true, -- Q5863 - MasterBossDies Farwen
            [93412] = true, -- Q5863 - MasterBossDies Farwen

            -- Reclaiming Vos (SQ)
            [87812] = true, -- Stealth Shader
            [85105] = true, -- Unstable Reaction
            [85537] = true, -- Summon Personal Guard

            -- Ancestral Adversity (SQ)
            [86197] = true, -- Q5882 harp Notes
            [89734] = true, -- Wall Dissolve
            [88403] = true, -- Flame Jet
            [88491] = true, -- Searing Flame
            [88411] = true, -- Hammer
            [88413] = true, -- Hammer
            [88405] = true, -- Hammer
            [88406] = true, -- Hammer
            [89663] = true, -- Hammer
            [89664] = true, -- Hammer
            [88404] = true, -- Blade
            [88454] = true, -- Blade
            [88455] = true, -- Blade
            [88510] = true, -- Staggered
            [92720] = true, -- Necrotic Wave
            [92722] = true, -- Stomp of Flame
            [92723] = true, -- Fire Backlash
            [92721] = true, -- CON_Knockback&Knockdown

            -- DELVE (Khartag Point)
            [89753] = true, -- Shocking Touch -- Old Rust-Eye
            [89754] = true, -- Shocking Touch -- Old Rust-Eye

            -- At Any Cost (SQ)
            [85651] = true, -- Flare -- Scamp
            [91773] = true, -- Dark Rejuvenation -- Xykenaz
            [91774] = true, -- Dark Rejuvenation FX -- Xykenaz

            -- Matus-Akin Egg Mine (Delve)
            [88415] = true, -- Awaken the Colony
            [88416] = true, -- Awaken the Colony
            [88438] = true, -- Summon Skaafin
            [88417] = true, -- Awaken the Colony
            [88439] = true, -- Summon Skaafin

            [88419] = true, -- Charge
            [88422] = true, -- Charge
            [88427] = true, -- Charge
            [88431] = true, -- Charge
            [88428] = true, -- Charge
            [88435] = true, -- Charge
            [88437] = true, -- Charge
            [88432] = true, -- Charge
            [88426] = true, -- Charge
            [88433] = true, -- Charge
            [88430] = true, -- Charge
            [88425] = true, -- Shattered Ground

            -- A Hireling of House Telvanni (SQ)
            [87351] = true, -- Water Geyser Warning
            [87348] = true, -- Water Geyser Burst
            [87349] = true, -- Water Geyser Burst
            [87350] = true, -- Water Geyser Burst

            -- The Magister Makes a Move (SQ)
            [89246] = true, -- Q5914 Nelos Notices
            [89247] = true, -- Q4636 Delayed Teleport Ext 01
            [89756] = true, -- Guardian Shockwave
            [89757] = true, -- Guardian Shockwave
            [84273] = true, -- Sweeping Spin
            [90808] = true, -- TV 4 CV Delay

            -- The Heart of a Telvanni (SQ)
            [87738] = true, -- Powder Bomb
            [89564] = true, -- Knockout
            [93289] = true, -- Q5922 Stun Capt
            [88244] = true, -- The Slavemaster's Chains

            -- Divine Delusions
            [86972] = true, -- Q5888 Chodala Magic Shield Fx
            [90630] = true, -- Frenzy
            [87958] = true, -- Ash Storm
            [87960] = true, -- Ash Storm
            [87959] = true, -- Ash Storm

            -- An Armiger's Duty (SQ)
            [89481] = true, -- Flame Jet
            [93583] = true, -- Taunt
            [90073] = true, -- Blinding Light
            [96174] = true, -- Q5877 - Q.Item Cooldown

            -- Divine Intervention (MQ)
            [86353] = true, -- Mechanical Possession
            [86417] = true, -- Inactive Centurion
            [86349] = true, -- Mechanical Possession
            [86355] = true, -- Mechanical Possession
            [92149] = true, -- VQ4 Fire Trap DoT
            [92150] = true, -- Fire Trap

            [91006] = true, -- Chodala's Shield
            [91669] = true, -- x
            [89909] = true, -- Tonal Inverter Ready
            [89910] = true, -- Tonal Inverter Ready
            [89911] = true, -- Tonal Inverter Ready
            [90080] = true, -- Tonal Inverter Ready
            [90952] = true, -- Tonal Inverter
            [90955] = true, -- Tonal Inverter
            [89901] = true, -- Tonal Inverter
            [91715] = true, -- Seryn's Connection
            [89904] = true, -- Tonal Inverter
            [89903] = true, -- Tonal Inverter

            [86815] = true, -- Daedric Bolt
            [90140] = true, -- Sunder's Echo
            [90149] = true, -- Sunder's Echo
            [90145] = true, -- Sunder's Echo
            [90143] = true, -- Sunder's Echo
            [90144] = true, -- Sunder's Echo
            [90148] = true, -- Sunder's Echo
            [90150] = true, -- Sunder's Echo
            [90146] = true, -- Sunder's Echo
            [90147] = true, -- Sunder's Echo

            [90139] = true, -- Empowered Strike
            [90141] = true, -- Empowered Strike
            [90142] = true, -- Empowered Strike

            [92304] = true, -- Q5893 Screen Flash White
            [88963] = true, -- Delay
            [90046] = true, -- Generic Stun + Headgrab 12s

            -- Divine Disaster (MQ)
            [92966] = true, -- Q5902_Screen Shake on Target
            [88465] = true, -- Skyfall
            [88466] = true, -- Skyfall
            [88467] = true, -- Skyfall
            [92536] = true, -- Vulnerability to Meteors

            -- Divine Restoration (MQ)
            [90181] = true, -- Oily Smoke
            [90182] = true, -- Oily Smoke
            [87101] = true, -- Blade Trap
            [87104] = true, -- Stun
            [87102] = true, -- Spinning Blade
            [87261] = true, -- Blade Vulnerability
            [91970] = true, -- Serrated Blade
            [91969] = true, -- Serrated Blade
            [89749] = true, -- Pulse
            [89750] = true, -- Pulse
            [89330] = true, -- Defensive Flare
            [92213] = true, -- Sparks
            [92228] = true, -- Pulse
            [92229] = true, -- Pulse
            [92227] = true, -- Pulse
            [92223] = true, -- Repair
            [92224] = true, -- Repair
            [92225] = true, -- Repair
            [89761] = true, -- Fabricate Beetle

            [90528] = true, -- Loyal Hound
            [87038] = true, -- Spinning Blades
            [87040] = true, -- Pinning Blades
            [87039] = true, -- Pinning Blades

            [87047] = true, -- Lunge
            [87053] = true, -- Lunge
            [87051] = true, -- Lunge
            [87048] = true, -- Lunge
            [87050] = true, -- Lunge
            [87049] = true, -- Lunge

            [87090] = true, -- Barbs
            [87096] = true, -- Barbs

            [90599] = true, -- Daedric Vigor
            [90501] = true, -- Tap the Divine
            [90525] = true, -- Phase Transition
            [90533] = true, -- Loyal Hound 1
            [90504] = true, -- VV-VQ5 Phase Transition
            [90502] = true, -- VV-VQ5 Phase Transition
            [92283] = true, -- Planar Shear
            [92284] = true, -- Planar Shear
            [90627] = true, -- targetable

            [90534] = true, -- Loyal Hound
            [90536] = true, -- Loyal Hound
            [90535] = true, -- Loyal Hound

            [90566] = true, -- Loyal Hound
            [90567] = true, -- Loyal Hound
            [90568] = true, -- Loyal Hound
            [90569] = true, -- Loyal Hound

            [87503] = true, -- Divine Hijack
            [90616] = true, -- Divine Hijack
            [87523] = true, -- Divine Hijack
            [87504] = true, -- Divine Hijack
            [87505] = true, -- Divine Hijack
            [90617] = true, -- Divine Hijack
            [87525] = true, -- Divine Hijack
            [87522] = true, -- Divine Hijack
            [90514] = true, -- Phase Transition

            [90524] = true, -- Divine Hijack
            [92411] = true, -- Contrived Portal
            [92412] = true, -- Contrived Portal
            [92413] = true, -- Contrived Portal

            -- Divine Blessings (MQ)
            [90572] = true, -- Q6003 - NP Ending Theater CV

            -- PUBLIC DUNGEON (The Forgotten Wastes)
            [88029] = true, -- Volcanic Activity (Deadfall)
            [91659] = true, -- Falling Rocks (Deadfall)
            [88030] = true, -- Falling Rocks (Deadfall)

            [92670] = true, -- Pyroclast (Meteor)
            [92671] = true, -- Pyroclast (Meteor)
            [92672] = true, -- Pyroclast (Meteor)

            [86930] = true, -- Volcanic Debris
            [86935] = true, -- Volcanic Debris
            [86932] = true, -- Volcanic Debris
            [90500] = true, -- Volcanic Debris
            [86934] = true, -- Volcanic Debris
            [86939] = true, -- Volcanic Debris
            [86938] = true, -- Volcanic Debris

            [92702] = true, -- Volcanic Debris
            [92705] = true, -- Volcanic Debris
            [92709] = true, -- Volcanic Debris
            [92703] = true, -- Volcanic Debris
            [92707] = true, -- Volcanic Debris
            [92706] = true, -- Volcanic Debris
            [92704] = true, -- Volcanic Debris

            [86983] = true, -- Succubus Touch
            [86984] = true, -- Succubus Touch
            [86989] = true, -- Succubus Touch

            -- PUBLIC DUNGEON (Nchuleftingth)
            [84510] = true, -- Searing Steam
            [84537] = true, -- Searing Steam
            [84527] = true, -- Searing Steam

            [90268] = true, -- Charge Whire Shock
            [90271] = true, -- Charge-Wire Shock
            [90269] = true, -- Charge-Wire Shock

            [90220] = true, -- Immune to Electricity

            [86634] = true, -- Swinging Cleave -- Mud-Tusk
            [86635] = true, -- Swinging Cleave -- Mud-Tusk
            [89210] = true, -- Boulder Toss -- Mud-Tusk
            [89234] = true, -- Turn -- Mud-Tusk
            [89240] = true, -- Boulder Toss -- Mud-Tusk
            [89239] = true, -- Boulder Toss -- Mud-Tusk
            [94935] = true, -- Tremor -- Mud-Tusk
            [94937] = true, -- Tremor -- Mud-Tusk
            [94936] = true, -- Tremor -- Mud-Tusk

            [86610] = true, -- Piston Thrust
            [86613] = true, -- Piston Thrust
            [86623] = true, -- Piston Thrust
            [86624] = true, -- Piston Thrust

            [90856] = true, -- Steam Piston
            [90860] = true, -- Spike Trap
            [90859] = true, -- Swinging Blades
            [90857] = true, -- Swinging Blades

            [86591] = true, -- Piston Thrust -- Guardian of Bthark
            [86592] = true, -- Piston Thrust -- Guardian of Bthark
            [86596] = true, -- Piston Thrust -- Guardian of Bthark
            [86595] = true, -- Piston Thrust -- Guardian of Bthark

            [69283] = true, -- Whirlwind Function -- Guardian of Bthark
            [69285] = true, -- Whirlwind Function -- Guardian of Bthark
            [69284] = true, -- Whirlwind Function -- Guardian of Bthark
            [69286] = true, -- Whirlwind Function -- Guardian of Bthark

            [86606] = true, -- Steam Breath -- Guardian of Bthark
            [86607] = true, -- Steam Breath -- Guardian of Bthark

            [90192] = true, -- Overcharge
            [90212] = true, -- Overcharge
            [90214] = true, -- Overcharge
            [90217] = true, -- Overcharge
            [90216] = true, -- Overcharge
            [90215] = true, -- Overcharge

            [71919] = true, -- Turret Occupied
            [71920] = true, -- Turret Mode

            [95731] = true, -- Dutiful Fury
            [86567] = true, -- Fire Runes
            [86568] = true, -- Fire Runes
            [86569] = true, -- Fire Runes
            [86566] = true, -- Fire Runes
            [86570] = true, -- Shield Charge
            [86574] = true, -- Shield Charge
            [86575] = true, -- Shield Charge
            [86576] = true, -- Staggered

            [73095] = true, -- In Lava
            [73103] = true, -- Lava

            [51634] = true, -- Shocking Touch
            [86659] = true, -- Auditory Signal
            [86680] = true, -- Auditory Signal
            [86691] = true, -- Overcharge
            [86690] = true, -- Overcharge
            [86688] = true, -- Overcharge
            [86689] = true, -- Overcharge

            [92135] = true, -- Nchuleftingth Electricity
            [92136] = true, -- Laser Snare
            [92138] = true, -- Laser Damage

            [89998] = true, -- Auditory Command
            [90004] = true, -- Auditory Command
            [90005] = true, -- Auditory Command
            [90006] = true, -- Auditory Command
            [90007] = true, -- Auditory Command
            [90008] = true, -- Auditory Command
            [90009] = true, -- Auditory Command
            [90010] = true, -- Auditory Command

            [84332] = true, -- Demolish
            [84333] = true, -- Demolish
            [84334] = true, -- Demolish
            [84336] = true, -- Demolish
            [89917] = true, -- Boss
            [89918] = true, -- Boss
            [90783] = true, -- Indominable
            [90788] = true, -- Indominable
            [84738] = true, -- Indominable
            [84739] = true, -- Indominable
            [84755] = true, -- Indominable
            [91407] = true, -- Indominable
            [90821] = true, -- Enable
            [90862] = true, -- Indominable
            [90863] = true, -- Indominable
            [90867] = true, -- Indominable
            [91485] = true, -- Indominable
            [90869] = true, -- Indominable
            [90870] = true, -- Indominable
            [90874] = true, -- Indominable
            [91486] = true, -- Indominable

            [84554] = true, -- Momentum
            --[84638] = true, -- Momentum
            [84606] = true, -- Momentum
            [84616] = true, -- Momentum

            [90597] = true, -- Overcharge Explusion
            [90598] = true, -- Overcharge Explusion

            [00000] = true, --
            [00000] = true, --

            -- TEMP TEMP TEMP
            [56975] = true, -- CH Steam Warning
            [32236] = true, -- Trap Regen Stopper Enemy

            [82137] = true, -- Spellfiends Frost
            [82138] = true, -- Spellfiends Storm
            [81911] = true, -- Spellfiends Fire

            [87368] = true, -- Crag shit 2
            [87371] = true, -- Crag shit 1
            [87383] = true, -- Crag shit 1

            ----------------------------------

            -- SEASONAL - Witches Harvest - All working, just need to organized eventually
            [83775] = true, -- Event - Q5742 WitchFest Intro -- The Witchmother's Bargain
            [83820] = true, -- Event Q5742 WitchFest Done -- The Witchmother's Bargain
            [82898] = true, -- Event - WitchFest Theater -- The Witchmother's Bargain

            -- SEASONAL -- New Life Festival
            [86075] = true, -- Breda's Magnificent Mead -- Breda's Magnificent Mead
            [84125] = true, -- Breton Male Dance -- Lava Foot Stomp
            [84187] = true, -- Breton Dance -- Lava Foot Stomp
            [85544] = true, -- Breton Dance -- Lava Foot Stomp
            [84126] = true, -- Breton Female Dance -- Lava Foot Stomp
            [84188] = true, -- Breton Dance -- Lava Foot Stomp
            [85540] = true, -- Breton Dance -- Lava Foot Stomp
            [86752] = true, -- Entertaining -- Lava Foot Stomp
            [84127] = true, -- Dunmer Male Dance -- Lava Foot Stomp
            [84189] = true, -- Dunmer Dance -- Lava Foot Stomp
            [85545] = true, -- Breton Dance -- Lava Foot Stomp
            [84128] = true, -- Dunmer Female Dance -- Lava Foot Stomp
            [84190] = true, -- Dunmer Dance -- Lava Foot Stomp
            [85546] = true, -- Breton Dance -- Lava Foot Stomp
            [84130] = true, -- Altmer Male Dance -- Lava Foot Stomp
            [84191] = true, -- Bosmer Dance -- Lava Foot Stomp
            [85547] = true, -- Breton Dance -- Lava Foot Stomp
            [84131] = true, -- Altmer Female Dance -- Lava Foot Stomp
            [84192] = true, -- Bosmer Dance -- Lava Foot Stomp
            [85548] = true, -- Breton Dance -- Lava Foot Stomp
            [84133] = true, -- Nord Dance -- Lava Foot Stomp
            [84194] = true, -- Nord Dance -- Lava Foot Stomp
            [85549] = true, -- Breton Dance -- Lava Foot Stomp
            [84528] = true, -- Flame Juggling -- Castle Charm Challenge
            [84530] = true, -- Flame Juggling -- Castle Charm Challenge
            [85561] = true, -- Breton Dance -- Castle Charm Challenge
            [84506] = true, -- Dagger Juggling -- Castle Charm Challenge
            [84507] = true, -- Dagger Juggling -- Castle Charm Challenge
            [85560] = true, -- Breton Dance -- Castle Charm Challenge
            [84533] = true, -- Sword Swallowing -- Castle Charm Challenge
            [84534] = true, -- Sword Swallowing -- Castle Charm Challenge
            [85562] = true, -- Breton Dance -- Castle Charm Challenge
            --[85351] = true, -- Self-Serve Mudbath -- Mud Ball Merriment (Likely unused)
            --[85352] = true, -- Covered in Mud -- Mud Ball Merriment (Likely unused)
            [84847] = true, -- Celebratory Belch -- Stonetooth Bash
            [85680] = true, -- Jump -- Snow Bear Plunge
            [83523] = true, -- Freezing -- Snow Bear Plunge
            [83544] = true, -- Cold -- Snow Bear Plunge
            [83522] = true, -- Warn -- Snow Bear Plunge
            [84330] = true, -- Mudball -- Mud Ball Merriment
            [84378] = true, -- Mudball -- Mud Ball Merriment
            [84335] = true, -- Covered in Mud -- Mud Ball Merriment
            [85639] = true, -- Covered in Mud -- Mud Ball Merriment

            -- SEASONAL -- Jester's Festival
            [88095] = true, -- Illusion Dazzler -- Royal Revelry
            [88123] = true, -- Illusion Dazzler -- Royal Revelry
            [88124] = true, -- Illusion Dazzler -- Royal Revelry
            [89243] = true, -- Butcher Awareness - A Noble Guest
            [89201] = true, -- Flare -- Springtime Flair
            [87474] = true, -- Flower Garland -- Springtime Flair

            -- SEASONAL -- Anniversary Event
            [88874] = true, -- Q5936 Destroy Voucher 2017 --

            -- SEASONAL -- Midyear Mayhem
            [92232] = true, -- Pelinal's Ferocity

            -- DARK BROTHERHOOD LITANY OF BLOOD EVENTS -- All working, just need to sort eventually
            [78933] = true, -- Litany of Blood Soul Steal
            [77170] = true, -- Delay Name Swap

}

local strformat = zo_strformat

-- Create Settings Menu
function LUIE_CreateSettings()
    -- Load LibAddonMenu
    local LAM2  = LibStub("LibAddonMenu-2.0")

    local l_BuffsMovingEnabled  = false -- Helper local flag
    local FontsList             = {}
    local StatusbarTexturesList = {}

    -- Get Fonts
    for f in pairs(LUIE.Fonts) do
        table.insert(FontsList, f)
    end
    for key, _ in pairs(LUIE.StatusbarTextures) do
        table.insert(StatusbarTexturesList, key)
    end

    local nameDisplayOptions            = { "@UserID", "Character Name", "Character Name @UserID" }
    local nameDisplayOptionsKeys        = { ["@UserID"] = 1, ["Character Name"] = 2, ["Character Name @UserID"] = 3 }
    local chatNameDisplayOptions        = { "@UserID", "Character Name", "Character Name @UserID" }
    local chatNameDisplayOptionsKeys    = { ["@UserID"] = 1, ["Character Name"] = 2, ["Character Name @UserID"] = 3 }
    local achievementBracketOptions     = { "[]", "()", "Hyphen", "No Brackets" }
    local achievementBracketOptionsKeys = { ["[]"] = 1, ["()"] = 2, ["Hyphen"] =3, ["No Brackets"] = 4 }
    local itemBracketOptions            = { "[]", "()", "Hyphen", "No Brackets" }
    local itemBracketOptionsKeys        = { ["[]"] = 1, ["()"] = 2, ["Hyphen"] =3, ["No Brackets"] = 4 }
    local collectibleBracketOptions     = { "[]", "()", "-", ":", "No Brackets" }
    local collectibleBracketOptionsKeys = { ["[]"] = 1, ["()"] = 2, ["-"] = 3, [":"] = 4, ["No Brackets"] = 5 }
    local skillPointBracketOptions      = { "[]", "()", "-", ":", "No Brackets" }
    local skillPointBracketOptionsKeys  = { ["[]"] = 1, ["()"] = 2, ["-"] = 3, [":"] = 4, ["No Brackets"] = 5 }
    local loreBookBracketOptions        = { "[]", "()", "-", ":", "No Brackets" }
    local loreBookBracketOptionsKeys    = { ["[]"] = 1, ["()"] = 2, ["-"] = 3, [":"] = 4, ["No Brackets"] = 5 }
    local guildRankDisplayOptions       = { "Self Only", "Self + All w/ Permissions", "Display All Rank Changes" }
    local guildRankDisplayOptionsKeys   = { ["Self Only"] = 1, ["Self + All w/ Permissions"] = 2, ["Display All Rank Changes"] = 3 }
    local rotationOptions               = { "Horizontal", "Vertical" }
    local rotationOptionsKeys           = { ["Horizontal"] = 1, ["Vertical"] = 2 }
    local disguiseNotifyOptions         = { "Chat Announcement", "Center Screen Notification", "Both" }
    local disguiseNotifyOptionsKeys     = { ["Chat Announcement"] = 1, ["Center Screen Notification"] = 2, ["Both"] = 3 }
    local duelStartOptions              = { "Message + Icon", "Message Only", "Icon Only", "No Message" }
    local duelStartOptionsKeys          = { ["Message + Icon"] = 1, ["Message Only"] = 2, ["Icon Only"] = 3, ["No Message"] = 4 }

    local formatOptions = {
        "Nothing",
        "Current",
        "Current + Shield",
        "Max",
        "Percentage%",
        "Current / Max",
        "Current + Shield / Max",
        "Current / Max (Percentage%)",
        "Current + Shield / Max (Percentage%)",
        "Current (Percentage%)",
        "Current + Shield (Percentage%)"
    }

    local panelData = {
        type = "panel",
        name = LUIE.name,
        displayName = strformat(LUIE.name, GetString(SI_GAME_MENU_SETTINGS)),
        author = LUIE.author,
        version = LUIE.version,
        website = "http://www.esoui.com/downloads/info818-LuiExtended.html",
        slashCommand = "/luiset",
        registerForRefresh = true,
        registerForDefaults = true,
    }
    
    local panelDataBuffsDebuffs = {
        type = "panel",
        name = strformat("<<1>> - <<2>>", LUIE.name, GetString(SI_LUIE_LAM_BUFFSDEBUFFS)),
        displayName = strformat(LUIE.name, GetString(SI_LUIE_LAM_BUFFSDEBUFFS), GetString(SI_GAME_MENU_SETTINGS)),
        author = LUIE.author,
        version = LUIE.version,
        website = "http://www.esoui.com/downloads/info818-LuiExtended.html",
        slashCommand = "/luica",
        registerForRefresh = true,
        registerForDefaults = true,
    }

    local panelDataChatAnnouncements = {
        type = "panel",
        name = strformat("<<1>> - <<2>>", LUIE.name, GetString(SI_LUIE_LAM_CA)),
        displayName = strformat(LUIE.name, GetString(SI_LUIE_LAM_CA), GetString(SI_GAME_MENU_SETTINGS)),
        author = LUIE.author,
        version = LUIE.version,
        website = "http://www.esoui.com/downloads/info818-LuiExtended.html",
        slashCommand = "/luica",
        registerForRefresh = true,
        registerForDefaults = true,
    }
    
    local panelDataUnitFrames = {
        type = "panel",
        name = strformat("<<1>> - <<2>>", LUIE.name, GetString(SI_LUIE_LAM_UF)),
        displayName = strformat(LUIE.name, GetString(SI_LUIE_LAM_UF), GetString(SI_GAME_MENU_SETTINGS)),
        author = LUIE.author,
        version = LUIE.version,
        website = "http://www.esoui.com/downloads/info818-LuiExtended.html",
        slashCommand = "/luiframes",
        registerForRefresh = true,
        registerForDefaults = true,
    }

    local optionsData = {}
    local optionsDataBuffsDebuffs = {}
    local optionsDataChatAnnouncements = {}
    local optionsDataUnitFrames = {}

    -- ReloadUI Button
    optionsData[#optionsData + 1] = {
        type = "button",
        name = "Reload UI",
        tooltip = GetString(SI_LUIE_LAM_RELOADUI),
        func = function() ReloadUI("ingame") end,
        width = "full",
    }

    -- Info Panel Options
    optionsData[#optionsData + 1] = {
        type = "submenu",
        name = GetString(SI_LUIE_LAM_PNL_HEADER),
        reference = "Info_Panel_Options_Submenu",
        controls = {
                
            
            {
                -- TEMP DESCRIPTION INFO PANEL (NO LOCALIZATION NEEDED)
                type = "description",
                text = "Displays a small panel with potentially important information on it. This feature may be significantly overhauled in the future.",
            },
            {
                -- Show InfoPanel
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_PNL_SHOWPANEL),
                tooltip = GetString(SI_LUIE_LAM_PNL_SHOWPANEL_TP),
                getFunc = function() return LUIE.SV.InfoPanel_Enabled end,
                setFunc = function(value) LUIE.SV.InfoPanel_Enabled = value end,
                width = "full",
                warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
                default = LUIE.D.InfoPanel_Enabled,
            },
            {
                -- Unlock InfoPanel
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_PNL_UNLOCKPANEL),
                tooltip = GetString(SI_LUIE_LAM_PNL_UNLOCKPANEL_TP),
                getFunc = function() return LUIE.InfoPanel.panelUnlocked end,
                setFunc = LUIE.InfoPanel.SetMovingState,
                width = "half",
                default = false,
                disabled = function() return not LUIE.SV.InfoPanel_Enabled end,
                resetFunc = LUIE.InfoPanel.ResetPosition,
            },
            {
                -- Reset InfoPanel position
                type = "button",
                name = GetString(SI_LUIE_LAM_RESETPOSITION),
                tooltip = GetString(SI_LUIE_LAM_PNL_RESETPOSITION_TP),
                func = LUIE.InfoPanel.ResetPosition,
                width = "half",
            },
            {
                -- InfoPanel scale
                type = "slider",
                name = GetString(SI_LUIE_LAM_PNL_PANELSCALE),
                tooltip = GetString(SI_LUIE_LAM_PNL_PANELSCALE_TP),
                min = 100, max = 300, step = 10,
                getFunc = function() return LUIE.InfoPanel.SV.panelScale end,
                setFunc = function(value) LUIE.InfoPanel.SV.panelScale = value LUIE.InfoPanel.SetScale() end,
                width = "full",
                default = 100,
                disabled = function() return not LUIE.SV.InfoPanel_Enabled end,
            },
            {
                type = "header",
                name = GetString(SI_LUIE_LAM_PNL_ELEMENTS_HEADER),
                width = "full",
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_PNL_SHOWLATENCY),
                getFunc = function() return not LUIE.InfoPanel.SV.HideLatency end,
                setFunc = function(value) LUIE.InfoPanel.SV.HideLatency = not value LUIE.InfoPanel.RearrangePanel() end,
                width = "full",
                default = true,
                disabled = function() return not LUIE.SV.InfoPanel_Enabled end,
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_PNL_SHOWCLOCK),
                getFunc = function() return not LUIE.InfoPanel.SV.HideClock end,
                setFunc = function(value) LUIE.InfoPanel.SV.HideClock = not value LUIE.InfoPanel.RearrangePanel() end,
                width = "full",
                default = true,
                disabled = function() return not LUIE.SV.InfoPanel_Enabled end,
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_PNL_SHOWFPS),
                getFunc = function() return not LUIE.InfoPanel.SV.HideFPS end,
                setFunc = function(value) LUIE.InfoPanel.SV.HideFPS = not value LUIE.InfoPanel.RearrangePanel() end,
                width = "full",
                default = true,
                disabled = function() return not LUIE.SV.InfoPanel_Enabled end,
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_PNL_SHOWMOUNTTIMER),
                tooltip = GetString(SI_LUIE_LAM_PNL_SHOWMOUNTTIMER_TP),
                getFunc = function() return not LUIE.InfoPanel.SV.HideMountFeed end,
                setFunc = function(value) LUIE.InfoPanel.SV.HideMountFeed = not value LUIE.InfoPanel.RearrangePanel() end,
                width = "full",
                default = true,
                disabled = function() return not LUIE.SV.InfoPanel_Enabled end,
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_PNL_SHOWARMORDURABILITY),
                getFunc = function() return not LUIE.InfoPanel.SV.HideArmour end,
                setFunc = function(value) LUIE.InfoPanel.SV.HideArmour = not value LUIE.InfoPanel.RearrangePanel() end,
                width = "full",
                default = true,
                disabled = function() return not LUIE.SV.InfoPanel_Enabled end,
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_PNL_SHOWEAPONCHARGES),
                getFunc = function() return not LUIE.InfoPanel.SV.HideWeapons end,
                setFunc = function(value) LUIE.InfoPanel.SV.HideWeapons = not value LUIE.InfoPanel.RearrangePanel() end,
                width = "full",
                default = true,
                disabled = function() return not LUIE.SV.InfoPanel_Enabled end,
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_PNL_SHOWBAGSPACE),
                getFunc = function() return not LUIE.InfoPanel.SV.HideBags end,
                setFunc = function(value) LUIE.InfoPanel.SV.HideBags = not value LUIE.InfoPanel.RearrangePanel() end,
                width = "full",
                default = true,
                disabled = function() return not LUIE.SV.InfoPanel_Enabled end,
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_PNL_SHOWSOULGEMS),
                getFunc = function() return not LUIE.InfoPanel.SV.HideGems end,
                setFunc = function(value) LUIE.InfoPanel.SV.HideGems = not value LUIE.InfoPanel.RearrangePanel() end,
                width = "full",
                default = true,
                disabled = function() return not LUIE.SV.InfoPanel_Enabled end,
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_PNL_SHOWICTROPHYCOUNT),
                getFunc = function() return LUIE.InfoPanel.SV.ShowTrophy end,
                setFunc = function(value) LUIE.InfoPanel.SV.ShowTrophy = value LUIE.InfoPanel.RearrangePanel() end,
                width = "full",
                default = false,
                disabled = function() return not LUIE.SV.InfoPanel_Enabled end,
            },
            {
                type = "header",
                name = GetString(SI_PLAYER_MENU_MISC),
                width = "full",
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_PNL_DISABLECOLORSRO),
                tooltip = GetString(SI_LUIE_LAM_PNL_DISABLECOLORSRO_TP),
                getFunc = function() return LUIE.InfoPanel.SV.DisableInfoColours end,
                setFunc = function(value) LUIE.InfoPanel.SV.DisableInfoColours = value end,
                width = "full",
                default = false,
                disabled = function() return not LUIE.SV.InfoPanel_Enabled end,
            },
        },
    }
    -- Combat Info Options
    optionsData[#optionsData + 1] = {
        type = "submenu",
        name = GetString(SI_LUIE_LAM_CI_HEADER),
        reference = "Combat_Info_Options_Submenu",
        controls = {
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_CI_SHOWCOMBATINFO),
                tooltip = GetString(SI_LUIE_LAM_CI_SHOWCOMBATINFO_TP),
                getFunc = function() return LUIE.SV.CombatInfo_Enabled end,
                setFunc = function(value) LUIE.SV.CombatInfo_Enabled = value end,
                width = "full",
                warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
                default = LUIE.D.CombatInfo_Enabled,
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_CI_SHOWCOOLDOWNS),
                tooltip = GetString(SI_LUIE_LAM_CI_SHOWCOOLDOWNS_TP),
                getFunc = function() return LUIE.CombatInfo.SV.CoolDown end,
                setFunc = function(value) LUIE.CombatInfo.SV.CoolDown = value end,
                width = "full",
                default = LUIE.CombatInfo.D.CoolDown,
                disabled = function() return not LUIE.SV.CombatInfo_Enabled end,
            },
            {
                type = "header",
                name = GetString(SI_LUIE_LAM_CI_ULTIMATETRACKING_HEADER),
                width = "full",
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_CI_SHOWULTIMATEVALUE),
                tooltip = GetString(SI_LUIE_LAM_CI_SHOWULTIMATEVALUE_TP),
                getFunc = function() return LUIE.CombatInfo.SV.UltimateEnabled end,
                setFunc = function(value) LUIE.CombatInfo.SV.UltimateEnabled = value LUIE.CombatInfo.RegisterCombatInfo() LUIE.CombatInfo.OnSlotsFullUpdate(nil) end,
                width = "full",
                default = LUIE.CombatInfo.D.UltimateEnabled,
                disabled = function() return not LUIE.SV.CombatInfo_Enabled end,
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_CI_HIDEPERCENTWHENFULL),
                tooltip = GetString(SI_LUIE_LAM_CI_HIDEPERCENTWHENFULL_TP),
                getFunc = function() return LUIE.CombatInfo.SV.UltimateHideFull end,
                setFunc = function(value) LUIE.CombatInfo.SV.UltimateHideFull = value LUIE.CombatInfo.OnSlotsFullUpdate(nil) end,
                width = "full",
                default = LUIE.CombatInfo.D.UltimateHideFull,
                disabled = function() return not ( LUIE.SV.CombatInfo_Enabled and LUIE.CombatInfo.SV.UltimateEnabled ) end,
            },
            {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_CI_SHOWULTIGENTEXTURE),
                tooltip = GetString(SI_LUIE_LAM_CI_SHOWULTIGENTEXTURE_TP),
                getFunc = function() return LUIE.CombatInfo.SV.UltimateGeneration end,
                setFunc = function(value) LUIE.CombatInfo.SV.UltimateGeneration = value end,
                width = "full",
                default = LUIE.CombatInfo.D.UltimateGeneration,
                disabled = function() return not LUIE.SV.CombatInfo_Enabled end,
            },
        },
    }

    -- Use LUI print to chat for messages
    optionsData[#optionsData + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_LUIPRINTTOCHAT),
        tooltip = GetString(SI_LUIE_LAM_LUIPRINTTOCHAT_TP),
        getFunc = function() return LUIE.SV.ChatUseSystem end,
        setFunc = function(value) LUIE.SV.ChatUseSystem = value end,
        width = "full",
        warning = GetString(SI_LUIE_LAM_GENERIC_WARNING),
        default = LUIE.D.ChatUseSystem,
    }
    -- Include Timestamp
    optionsData[#optionsData + 1] = {
        type = "checkbox",
        name = strformat("\t\t<<1>>", GetString(SI_LUIE_LAM_TIMESTAMP)),
        tooltip = GetString(SI_LUIE_LAM_TIMESTAMP_TP),
        getFunc = function() return LUIE.SV.TimeStamp end,
        setFunc = function(value) LUIE.SV.TimeStamp = value end,
        width = "full",
        disabled = function() return not LUIE.SV.ChatUseSystem end,
        default = LUIE.D.TimeStamp,
    }
    -- Timestamp Format
    optionsData[#optionsData + 1] = {
        type = "editbox",
        name = strformat("\t\t<<1>>", GetString(SI_LUIE_LAM_TIMESTAMPFORMAT)),
        tooltip = GetString(SI_LUIE_LAM_TIMESTAMPFORMAT_TP),
        getFunc = function() return LUIE.SV.TimeStampFormat end,
        setFunc = function(value) LUIE.SV.TimeStampFormat = value end,
        width = "full",
        disabled = function() return not (LUIE.SV.ChatUseSystem and LUIE.SV.TimeStamp) end,
        default = LUIE.D.TimeStampFormat,
    }
    -- Startup message options
    optionsData[#optionsData + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_STARTUPMSG),
        tooltip = GetString(SI_LUIE_LAM_STARTUPMSG_TP),
        getFunc = function() return LUIE.SV.StartupInfo end,
        setFunc = function(value) LUIE.SV.StartupInfo = value end,
        width = "full",
        default = LUIE.D.StartupInfo,
    }
    -- Toggle XP Bar popup
    optionsData[#optionsData + 1] = {
        type = "checkbox",
        name = "Hide XP Bar Popup",
        tooltip = "When gaining experience from Discovery, Boss Kills, or Skill Line updates, the XP bar will no longer popup. Useful if you have a custom UI element in that corner of the screen and don't want it to be overlapped.",
        getFunc = function() return LUIE.SV.HideXPBar end,
        setFunc = function(value) LUIE.SV.HideXPBar = value end,
        width = "full",
        default = LUIE.D.HideXPBar,
    }
    -- Slash Commands Overview
    optionsData[#optionsData + 1] = {
        type = "header",
        name = GetString(SI_LUIE_LAM_SLASHCMDSHEADER),
        width = "full",
    }
    -- Slash Commands description
    optionsData[#optionsData + 1] = {
        type = "description",
        text = strformat("<<1>>\n<<2>>\n<<3>>",
               GetString(SI_LUIE_LAM_SLASHCMDSHEADER_GENERAL),
               GetString(SI_LUIE_LAM_SLASHCMDS_TRADE),
               GetString(SI_LUIE_LAM_SLASHCMDS_HOME)),
    }
    optionsData[#optionsData + 1] = {
        type = "description",
        text = strformat("<<1>>\n<<2>>\n<<3>>\n<<4>>\n<<5>>\n<<6>>",
               GetString(SI_LUIE_LAM_SLASHCMDSHEADER_GROUP),
               GetString(SI_LUIE_LAM_SLASHCMDS_REGROUP),
               GetString(SI_LUIE_LAM_SLASHCMDS_LEAVE),
               GetString(SI_LUIE_LAM_SLASHCMDS_DISBAND),
               GetString(SI_LUIE_LAM_SLASHCMDS_KICK),
               GetString(SI_LUIE_LAM_SLASHCMDS_VOTEKICK)),
    }
    optionsData[#optionsData + 1] = {
        type = "description",
        text = strformat("<<1>>\n<<2>>\n<<3>>\n<<4>>",
               GetString(SI_LUIE_LAM_SLASHCMDSHEADER_GUILD),
               GetString(SI_LUIE_LAM_SLASHCMDS_GUILDINVITE),
               GetString(SI_LUIE_LAM_SLASHCMDS_GUILDKICK),
               GetString(SI_LUIE_LAM_SLASHCMDS_GUILDQUIT)),
    }
    optionsData[#optionsData + 1] = {
        type = "description",
        text = strformat("<<1>>\n<<2>>\n<<3>>\n<<4>>\n<<5>>",
               GetString(SI_LUIE_LAM_SLASHCMDSHEADER_SOCIAL),
               GetString(SI_LUIE_LAM_SLASHCMDS_FRIEND),
               GetString(SI_LUIE_LAM_SLASHCMDS_IGNORE),
               GetString(SI_LUIE_LAM_SLASHCMDS_REMOVEFRIEND),
               GetString(SI_LUIE_LAM_SLASHCMDS_REMOVEIGNORE)),
    }
    
    -- Enable Buffs & Debuffs Module
    optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_BUFF_ENABLEEFFECTSTRACK),
        tooltip = GetString(SI_LUIE_LAM_BUFF_ENABLEEFFECTSTRACK_TP),
        getFunc = function() return LUIE.SV.SpellCastBuff_Enable end,
        setFunc = function(value) LUIE.SV.SpellCastBuff_Enable = value end,
        width = "full",
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        default = LUIE.D.SpellCastBuff_Enable,
    }
    -- Buffs & Debuffs Description
    optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
        type = "description",
        text = GetString(SI_LUIE_LAM_BUFFS_DESCRIPTION),
    }
    -- ReloadUI Button
    optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
        type = "button",
        name = "Reload UI",
        tooltip = GetString(SI_LUIE_LAM_RELOADUI),
        func = function() ReloadUI("ingame") end,
        width = "full",
    }
    -- CA Header
    optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
        type = "header",
        name = GetString(SI_LUIE_LAM_CI_COMMON_HEADER),
        width = "full",
    }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_HIDETARGETBUFF),
                tooltip = GetString(SI_LUIE_LAM_BUFF_HIDETARGETBUFF_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.HideTargetBuffs end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.HideTargetBuffs = value end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.HideTargetBuffs,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_HIDETARGETDEBUFF),
                tooltip = GetString(SI_LUIE_LAM_BUFF_HIDETARGETDEBUFF_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.HideTargetDebuffs end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.HideTargetDebuffs = value end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.HideTargetDebuffs,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_HIDEGROUNDBUFFDEBUFF),
                tooltip = GetString(SI_LUIE_LAM_BUFF_HIDEGROUNDBUFFDEBUFF_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.HideGroundEffects end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.HideGroundEffects = value end,
                width = "full",
                default = LUIE.SpellCastBuffs.SV.HideGroundEffects,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_HARDLOCK),
                tooltip = GetString(SI_LUIE_LAM_BUFF_HARDLOCK_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.lockPositionToUnitFrames end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.lockPositionToUnitFrames = value end,
                width = "full",
                warning = GetString(SI_LUIE_LAM_BUFF_HARDLOCK_WARNING),
                default = LUIE.SpellCastBuffs.D.lockPositionToUnitFrames,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_UNLOCKWINDOW),
                tooltip = GetString(SI_LUIE_LAM_BUFF_UNLOCKWINDOW_TP),
                getFunc = function() return l_BuffsMovingEnabled end,
                setFunc = function(value)
                    l_BuffsMovingEnabled = value
                    LUIE.SpellCastBuffs.SetMovingState(value)
                    end,
                width = "half",
                default = false,
                resetFunc = LUIE.SpellCastBuffs.ResetTlwPosition,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "button",
                name = GetString(SI_LUIE_LAM_RESETPOSITION),
                tooltip = GetString(SI_LUIE_LAM_BUFF_RESETPOSITION_TP),
                func = LUIE.SpellCastBuffs.ResetTlwPosition,
                width = "half",
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "header",
                name = GetString(SI_LUIE_LAM_BUFF_ICONOPTIONS),
                width = "full",
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "slider",
                name = GetString(SI_LUIE_LAM_BUFF_ICONSIZE),
                min = 30, max = 60, step = 2,
                getFunc = function() return LUIE.SpellCastBuffs.SV.IconSize end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IconSize = value LUIE.SpellCastBuffs.Reset() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.IconSize,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "dropdown",
                name = GetString(SI_LUIE_LAM_BUFF_HORIZONTICONALIGN),
                tooltip = GetString(SI_LUIE_LAM_BUFF_HORIZONTICONALIGN_TP),
                choices = { "Left", "Centered", "Right" },
                getFunc = function() return LUIE.SpellCastBuffs.SV.Alignment end,
                setFunc = LUIE.SpellCastBuffs.SetIconsAlignment,
                width = "full",
                default = LUIE.SpellCastBuffs.D.Alignment,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "dropdown",
                name = GetString(SI_LUIE_LAM_BUFF_DESCENDINGSORT),
                choices = {"Left to Right", "Right to Left"},
                getFunc = function() return LUIE.SpellCastBuffs.SV.SortDirection end,
                setFunc = LUIE.SpellCastBuffs.SetSortDirection,
                width = "full",
                default = LUIE.SpellCastBuffs.D.SortDirection,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_GLOWICONBORDER),
                tooltip = GetString(SI_LUIE_LAM_BUFF_GLOWICONBORDER_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.GlowIcons end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.GlowIcons = value LUIE.SpellCastBuffs.Reset() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.GlowIcons,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_SHOWBOARDERCOOLDOWN),
                tooltip = GetString(SI_LUIE_LAM_BUFF_SHOWBOARDERCOOLDOWN_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.RemainingCooldown end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.RemainingCooldown = value LUIE.SpellCastBuffs.Reset() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.RemainingCooldown,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_FADEEXPIREICON),
                tooltip = GetString(SI_LUIE_LAM_BUFF_FADEEXPIREICON_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.FadeOutIcons end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.FadeOutIcons = value end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.FadeOutIcons,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_SHOWREMAINTIMELABEL),
                tooltip = GetString(SI_LUIE_LAM_BUFF_SHOWREMAINTIMELABEL_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.RemainingText end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.RemainingText = value LUIE.SpellCastBuffs.Reset() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.RemainingText,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "dropdown",
                name = GetString(SI_LUIE_LAM_FONT),
                tooltip = GetString(SI_LUIE_LAM_BUFF_FONTS_TP),
                choices = FontsList,
                sort = "name-up",
                getFunc = function() return LUIE.SpellCastBuffs.SV.BuffFontFace end,
                setFunc = function(var) LUIE.SpellCastBuffs.SV.BuffFontFace = var LUIE.SpellCastBuffs.ApplyFont() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.BuffFontFace,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and LUIE.SpellCastBuffs.SV.RemainingText ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "slider",
                name = GetString(SI_LUIE_LAM_FONT_SIZE),
                tooltip = GetString(SI_LUIE_LAM_BUFF_FONTS_SIZE_TP),
                min = 10, max = 30, step = 1,
                getFunc = function() return LUIE.SpellCastBuffs.SV.BuffFontSize end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.BuffFontSize = value LUIE.SpellCastBuffs.ApplyFont() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.BuffFontSize,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and LUIE.SpellCastBuffs.SV.RemainingText ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "dropdown",
                name = GetString(SI_LUIE_LAM_FONT_STYLE),
                choices = { "normal", "outline", "shadow", "soft-shadow-thick", "soft-shadow-thin", "thick-outline" },
                sort = "name-up",
                getFunc = function() return LUIE.SpellCastBuffs.SV.BuffFontStyle end,
                setFunc = function(var) LUIE.SpellCastBuffs.SV.BuffFontStyle = var LUIE.SpellCastBuffs.ApplyFont() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.BuffFontStyle,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and LUIE.SpellCastBuffs.SV.RemainingText ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_COLOUREDTIMELABEL),
                tooltip = GetString(SI_LUIE_LAM_BUFF_COLOUREDTIMELABE_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.RemainingTextColoured end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.RemainingTextColoured = value LUIE.SpellCastBuffs.Reset() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.RemainingTextColoured,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and LUIE.SpellCastBuffs.SV.RemainingText ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_SHOWSECONDFRACTIONS),
                tooltip = GetString(SI_LUIE_LAM_BUFF_SHOWSECONDFRACTIONS_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.RemainingTextMillis end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.RemainingTextMillis = value end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.RemainingTextMillis,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and LUIE.SpellCastBuffs.SV.RemainingText ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "header",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_HEADER),
                width = "full",
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_SELF),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_SELF_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.LongTermEffects_Player end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.LongTermEffects_Player = value LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.LongTermEffects_Player,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_TARGET),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_TARGET_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.LongTermEffects_Target end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.LongTermEffects_Target = value LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.LongTermEffects_Target,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_MUNDUSPLAYER),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_MUNDUSPLAYER_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreMundusPlayer end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreMundusPlayer = not value LUIE.SpellCastBuffs.UpdateContextHideList() LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreMundusPlayer,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_MUNDUSTARGET),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_MUNDUSTARGET_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreMundusTarget end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreMundusTarget = not value LUIE.SpellCastBuffs.UpdateContextHideList() LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreMundusTarget,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_VAMPPLAYER),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_VAMPPLAYER_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreVampLycanPlayer end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreVampLycanPlayer = not value LUIE.SpellCastBuffs.UpdateContextHideList() LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreVampLycanPlayer,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_VAMPTARGET),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_VAMPTARGET_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreVampLycanTarget end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreVampLycanTarget = not value LUIE.SpellCastBuffs.UpdateContextHideList() LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreVampLycanTarget,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_CYROPLAYER),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_CYROPLAYER_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreCyrodiilPlayer end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreCyrodiilPlayer = not value LUIE.SpellCastBuffs.UpdateContextHideList() LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreCyrodiilPlayer,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
             optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_CYROTARGET),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_CYROTARGET_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreCyrodiilTarget end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreCyrodiilTarget = not value LUIE.SpellCastBuffs.UpdateContextHideList() LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreCyrodiilTarget,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_BSPIRITPLAYER),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_BSPIRITPLAYER_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreBattleSpiritPlayer end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreBattleSpiritPlayer = not value LUIE.SpellCastBuffs.UpdateContextHideList() LUIE.SpellCastBuffs.ReloadEffects() LUIE.SpellCastBuffs.ArtificialEffectUpdate() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreBattleSpiritPlayer,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_BSPIRITTARGET),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_BSPIRITTARGET_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreBattleSpiritTarget end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreBattleSpiritTarget = not value LUIE.SpellCastBuffs.UpdateContextHideList() LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreBattleSpiritTarget,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Ignore ESO Plus - Player
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_ESOPLUSPLAYER),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_ESOPLUSPLAYER_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreEsoPlusPlayer end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreEsoPlusPlayer = not value LUIE.SpellCastBuffs.UpdateContextHideList() LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreEsoPlusPlayer,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Ignore ESO Plus - Target
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_ESOPLUSTARGET),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_ESOPLUSTARGET_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreEsoPlusTarget end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreEsoPlusTarget = not value LUIE.SpellCastBuffs.UpdateContextHideList() LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreEsoPlusTarget,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }

            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Disguises
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_DISGUISE),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_DISGUISE_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreDisguise end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreDisguise = not value LUIE.SpellCastBuffs.OnPlayerActivated() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreDisguise,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Costumes
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_COSTUME),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_COSTUME_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreCostume end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreCostume = not value LUIE.SpellCastBuffs.OnPlayerActivated() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreCostume,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Hats
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_HAT),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_HAT_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreHat end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreHat = not value LUIE.SpellCastBuffs.OnPlayerActivated() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreHat,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Skins
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_SKIN),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_SKIN_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreSkin end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreSkin = not value LUIE.SpellCastBuffs.OnPlayerActivated() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreSkin,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Polymorphs
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_POLYMORPH),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_POLYMORPH_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnorePolymorph end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnorePolymorph = not value LUIE.SpellCastBuffs.OnPlayerActivated() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnorePolymorph,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Assistants
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_ASSISTANT),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_ASSISTANT_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreAssistant end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreAssistant = not value LUIE.SpellCastBuffs.OnPlayerActivated() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreAssistant,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Pets
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_PET),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_PET_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnorePet end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnorePet = not value LUIE.SpellCastBuffs.OnPlayerActivated() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnorePet,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Mounts
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_MOUNT),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_MOUNT_TP),
                getFunc = function() return not LUIE.SpellCastBuffs.SV.IgnoreMount end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.IgnoreMount = not value LUIE.SpellCastBuffs.OnPlayerActivated() end,
                width = "full",
                default = not LUIE.SpellCastBuffs.D.IgnoreMount,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and ( LUIE.SpellCastBuffs.SV.LongTermEffects_Player or LUIE.SpellCastBuffs.SV.LongTermEffects_Target ) ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Seperate control for player effects
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_SEPCTRL),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_SEPCTRL_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.LongTermEffectsSeparate end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.LongTermEffectsSeparate = value LUIE.SpellCastBuffs.Reset() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.LongTermEffectsSeparate,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and LUIE.SpellCastBuffs.SV.LongTermEffects_Player ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Container orientation
                type = "dropdown",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_CONTAINER),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_CONTAINER_TP),
                choices = rotationOptions,
                getFunc = function() return rotationOptions[LUIE.SpellCastBuffs.SV.LongTermEffectsSeparateAlignment] end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.LongTermEffectsSeparateAlignment = rotationOptionsKeys[value] LUIE.SpellCastBuffs.Reset() end,
                width = "full",
                warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
                default = rotationOptions[2],
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and LUIE.SpellCastBuffs.SV.LongTermEffects_Player and LUIE.SpellCastBuffs.SV.LongTermEffectsSeparate ) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Vertical Icons Alignment
                type = "dropdown",
                name = GetString(SI_LUIE_LAM_BUFF_LONGTERM_VERTALIGNICON),
                tooltip = GetString(SI_LUIE_LAM_BUFF_LONGTERM_VERTALIGNICON_TP),
                choices = { "Top", "Middle", "Bottom" },
                getFunc = function() return LUIE.SpellCastBuffs.SV.AlignmentVert end,
                setFunc = LUIE.SpellCastBuffs.SetIconsAlignmentVert,
                width = "full",
                default = LUIE.SpellCastBuffs.D.AlignmentVert,
                disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and LUIE.SpellCastBuffs.SV.LongTermEffectsSeparateAlignment == 2) end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- SpellCastBuffs Miscellaneous
                type = "header",
                name = GetString(SI_PLAYER_MENU_MISC),
                width = "full",
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Highlight Ability Bar Icon for Active Procs
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_MISC_BARICONPROC),
                tooltip = GetString(SI_LUIE_LAM_BUFF_MISC_BARICONPROC_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.ShowTriggered end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.ShowTriggered = value end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.ShowTriggered,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Highlight Ability Bar Icon for Active Effects
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_MISC_BARICONEFFECT),
                tooltip = GetString(SI_LUIE_LAM_BUFF_MISC_BARICONEFFECT_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.ShowToggled end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.ShowToggled = value end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.ShowToggled,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Block Player Icon
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWBLOCKPLAYER),
                tooltip = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWBLOCKPLAYER_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.ShowBlockPlayer end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.ShowBlockPlayer = value LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.ShowBlockPlayer,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Block Target Icon
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWBLOCKTARGET),
                tooltip = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWBLOCKTARGET_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.ShowBlockTarget end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.ShowBlockTarget = value LUIE.SpellCastBuffs.ReloadEffects("reticleover") end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.ShowBlockTarget,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Stealth Player Icon
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWSTEALTHPLAYER),
                tooltip = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWSTEALTHPLAYER_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.StealthStatePlayer end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.StealthStatePlayer = value LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.StealthStatePlayer,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Stealth Target Icon
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWSTEALTHTARGET),
                tooltip = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWSTEALTHTARGET_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.StealthStateTarget end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.StealthStateTarget = value LUIE.SpellCastBuffs.ReloadEffects("reticleover") end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.StealthStateTarget,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Disguise Player Icon
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWDISGUISEPLAYER),
                tooltip = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWDISGUISEPLAYER_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.DisguiseStatePlayer end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.DisguiseStatePlayer = value LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.DisguiseStatePlayer,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Disguise Target Icon
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWDISGUISETARGET),
                tooltip = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWDISGUISETARGET_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.DisguiseStateTarget end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.DisguiseStateTarget = value LUIE.SpellCastBuffs.ReloadEffects("reticleover") end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.DisguiseStateTarget,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Sprint Icon
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWSPRINT),
                tooltip = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWSPRINT_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.ShowSprint end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.ShowSprint = value end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.ShowSprint,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Gallop Icon
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWGALLOP),
                tooltip = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWGALLOP_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.ShowGallop end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.ShowGallop = value end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.ShowGallop,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Rezz Immunity Icon
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWREZZ),
                tooltip = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWREZZ_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.ShowResurrectionImmunity end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.ShowResurrectionImmunity = value end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.ShowResurrectionImmunity,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
            optionsDataBuffsDebuffs[#optionsDataBuffsDebuffs + 1] = {
                -- Show Recall Cooldown Icon
                type = "checkbox",
                name = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWRECALL),
                tooltip = GetString(SI_LUIE_LAM_BUFF_MISC_SHOWRECALL_TP),
                getFunc = function() return LUIE.SpellCastBuffs.SV.ShowRecall end,
                setFunc = function(value) LUIE.SpellCastBuffs.SV.ShowRecall = value LUIE.SpellCastBuffs.ReloadEffects() end,
                width = "full",
                default = LUIE.SpellCastBuffs.D.ShowRecall,
                disabled = function() return not LUIE.SV.SpellCastBuff_Enable end,
            }
    
    -- Enable Chat Announcements module
    optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_CA_ENABLE),
        tooltip = GetString(SI_LUIE_LAM_CA_ENABLE_TP),
        getFunc = function() return LUIE.SV.ChatAnnouncements_Enable end,
        setFunc = function(value) LUIE.SV.ChatAnnouncements_Enable = value end,
        width = "full",
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        default = LUIE.D.ChatAnnouncements_Enable,
    }
    -- CA Module Description
    optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
        type = "description",
        text = GetString(SI_LUIE_LAM_CA_DESCRIPTION),
    }
    -- ReloadUI Button
    optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
        type = "button",
        name = "Reload UI",
        tooltip = GetString(SI_LUIE_LAM_RELOADUI),
        func = function() ReloadUI("ingame") end,
        width = "full",
    }
    -- CA Header
    optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
        type = "header",
        name = GetString(SI_LUIE_LAM_CI_COMMON_HEADER),
        width = "full",
    }
    optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
        -- Player Name Display Method
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_NAMEDISPLAYMETHOD),
        tooltip = GetString(SI_LUIE_LAM_CA_NAMEDISPLAYMETHOD_TP),
        choices = chatNameDisplayOptions,
        getFunc = function() return chatNameDisplayOptions[LUIE.ChatAnnouncements.SV.ChatPlayerDisplayOptions] end,
        setFunc = function(value) LUIE.ChatAnnouncements.SV.ChatPlayerDisplayOptions = chatNameDisplayOptionsKeys[value] end,
        width = "full",
        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
        default = chatNameDisplayOptions[2],
    }
    optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
        -- Default String Enhance
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_CA_DEFAULTSTRINGENHANCE),
        tooltip = GetString(SI_LUIE_LAM_CA_DEFAULTSTRINGENHANCE_TP),
        getFunc = function() return LUIE.ChatAnnouncements.SV.EnableCustomStrings end,
        setFunc = function(value) LUIE.ChatAnnouncements.SV.EnableCustomStrings = value LUIE.ChatAnnouncements.RegisterCustomStrings() end,
        width = "full",
        warning = strformat("<<1>>\n<<2>>", GetString(SI_LUIE_LAM_COMPATIBILITY_WARNING), GetString(SI_LUIE_LAM_RELOADUI_WARNING)),
        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
        default = LUIE.ChatAnnouncements.D.EnableCustomStrings,
    }

                -- CA Currency Announcements Options Submenu
                optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
                type = "submenu",
                name = GetString(SI_LUIE_LAM_CA_CURRENCY_HEADER),
                reference = "Chat_Announcements_Options_Currency_Announcements_Submenu",
                controls = {
                    {
                        -- Show Currency Icons
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWICONS),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWICONS_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyIcons end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyIcons = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.CurrencyIcons,
                    },
                    {
                        -- Currency Message Color
                        type = "colorpicker",
                        name = "TODO: Currency message color",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.CurrencyColor) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.CurrencyColor = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable or LUIE.ChatAnnouncements.SV.CurrencyContextColor end,
                        default = {r=LUIE.ChatAnnouncements.D.CurrencyColor[1], g=LUIE.ChatAnnouncements.D.CurrencyColor[2], b=LUIE.ChatAnnouncements.D.CurrencyColor[3]}
                    },
                    {
                        -- Use Context Color for Currency Messages
                        type = "checkbox",
                        name = "TODO: Use Currency Context Color Bla Bla",
                        tooltip = "TODO: Some shit here",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyContextColor end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyContextColor = value LUIE.ChatAnnouncements.RegisterGoldEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.CurrencyContextColor,
                    },
                    {
                        -- Positive Change Color
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_COLORUP)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.CurrencyColorUp) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.CurrencyColorUp = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyContextColor and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = {r=LUIE.ChatAnnouncements.D.CurrencyColorUp[1], g=LUIE.ChatAnnouncements.D.CurrencyColorUp[2], b=LUIE.ChatAnnouncements.D.CurrencyColorUp[3]}
                    },
                    {
                        -- Negative Change Color
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_COLORDOWN)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.CurrencyColorDown) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.CurrencyColorDown = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyContextColor and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = {r=LUIE.ChatAnnouncements.D.CurrencyColorDown[1], g=LUIE.ChatAnnouncements.D.CurrencyColorDown[2], b=LUIE.ChatAnnouncements.D.CurrencyColorDown[3]}
                    },
                    {
                        -- Show Gold
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWGOLD),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWGOLD_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyGoldChange end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyGoldChange = value LUIE.ChatAnnouncements.RegisterGoldEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.CurrencyGoldChange,
                    },
                    {
                        -- Show Gold Color
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWCurrencyGoldColor)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.CurrencyGoldColor) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.CurrencyGoldColor = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyGoldChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = {r=LUIE.ChatAnnouncements.D.CurrencyGoldColor[1], g=LUIE.ChatAnnouncements.D.CurrencyGoldColor[2], b=LUIE.ChatAnnouncements.D.CurrencyGoldColor[3]}
                    },
                    {
                        -- Show Gold Name
                        type = "editbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWCurrencyGoldName)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWCurrencyGoldName_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyGoldName end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyGoldName = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyGoldChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyGoldName,
                    },
                    {
                        -- Show Gold Threshold
                        type = "slider",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWGOLDTHRESHOLD)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWGOLDTHRESHOLD_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyGoldFilter end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyGoldFilter = value end,
                        min = 0,
                        max = 10000,
                        step = 50,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyGoldChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyGoldFilter,
                    },
                    {
                        -- Throttle Gold Looted
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWCurrencyGoldThrottle)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWCurrencyGoldThrottle_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyGoldThrottle end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyGoldThrottle = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyGoldChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyGoldThrottle,
                    },
                    {
                        -- Show Gold Total Amount
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWGOLDTOTAL)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWGOLDTOTAL_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyGoldShowTotal end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyGoldShowTotal = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyGoldChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyGoldShowTotal,
                    },
                    {
                        -- Hide Gold Spent on AH
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_HIDEGOLDAHSPENT)),
                        tooltip = strformat("<<1>>\n<<2>>", GetString(SI_LUIE_LAM_CA_CURRENCY_HIDEGOLDAHSPENT_TP), GetString(SI_LUIE_LAM_CA_CURRENCY_HIDEGOLDAHSPENT_NOTE)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyGoldHideAH end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyGoldHideAH = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyGoldChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyGoldHideAH,
                    },
                    {
                        -- Show Alliance Points
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWAP),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWAP_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyAPShowChange end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyAPShowChange = value LUIE.ChatAnnouncements.RegisterAlliancePointEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.CurrencyAPShowChange,
                    },
                    {
                        -- Show Alliance Points Threshold
                        type = "slider",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWAPTHRESHOLD)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWAPTHRESHOLD_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyAPFilter end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyAPFilter = value end,
                        min = 0,
                        max = 10000,
                        step = 50,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyAPShowChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyAPFilter,
                    },
                    {
                        -- Throttle Alliance Points Earned
                        type = "slider",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWAPTHROTTLE)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWAPTHROTTLE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyAPThrottle end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyAPThrottle = value end,
                        min = 0,
                        max = 5000,
                        step = 50,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyAPShowChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyAPThrottle,
                    },
                    {
                        -- Show Alliance Points Color
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWAPCOLOR)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.CurrencyAPColor) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.CurrencyAPColor = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyAPShowChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = {r=LUIE.ChatAnnouncements.D.CurrencyAPColor[1], g=LUIE.ChatAnnouncements.D.CurrencyAPColor[2], b=LUIE.ChatAnnouncements.D.CurrencyAPColor[3]}
                    },
                    {
                        -- Show Alliance Points Name
                        type = "editbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWAPNAME)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWAPNAME_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyAPName end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyAPName = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyAPShowChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.TotalCurrencyAPName,
                    },
                    {
                        -- Show Alliance Points Total
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWAPTOTAL)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWAPTOTAL_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyAPShowTotal end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyAPShowTotal = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyAPShowChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyAPShowTotal,
                    },
                    {
                        -- Show Tel Var
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWTV),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWTV_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyTVChange end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyTVChange = value LUIE.ChatAnnouncements.RegisterTelVarStoneEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.CurrencyTVChange,
                    },
                    {
                        -- Show Tel Var Stones Threshold
                        type = "slider",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWTVTHRESHOLD)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWTVTHRESHOLD_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyTVFilter end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyTVFilter = value end,
                        min = 0,
                        max = 10000,
                        step = 50,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyTVChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyTVFilter,
                    },
                    {
                        -- Throttle Tel Var Stones Looted
                        type = "slider",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWTVTHROTTLE)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWTVTHROTTLE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyTVThrottle end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyTVThrottle = value end,
                        min = 0,
                        max = 5000,
                        step = 50,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyTVChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyTVThrottle,
                    },
                    
                    {
                        -- Show Tel Var Color
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWTVCOLOR)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.CurrencyTVColor) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.CurrencyTVColor = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyTVChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = {r=LUIE.ChatAnnouncements.D.CurrencyTVColor[1], g=LUIE.ChatAnnouncements.D.CurrencyTVColor[2], b=LUIE.ChatAnnouncements.D.CurrencyTVColor[3]}
                    },
                    {
                        -- Show Tel Var Name
                        type = "editbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWTVNAME)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWTVNAME_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyTVName end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyTVName = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyTVChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyTVName,
                    },
                    {
                        -- Show Tel Var Total
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWTVTOTAL)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWTVTOTAL_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyTVShowTotal end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyTVShowTotal = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyTVChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyTVShowTotal,
                    },
                    {
                        -- Show Writ Vouchers
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWVOUCHER),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWVOUCHER_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyWVChange end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyWVChange = value LUIE.ChatAnnouncements.RegisterWritVoucherEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.CurrencyWVChange,
                    },
                    {
                        -- Show Writ Vouchers Color
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWVOUCHERCOLOR)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.CurrencyWVColor) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.CurrencyWVColor = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyWVChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = {r=LUIE.ChatAnnouncements.D.CurrencyWVColor[1], g=LUIE.ChatAnnouncements.D.CurrencyWVColor[2], b=LUIE.ChatAnnouncements.D.CurrencyWVColor[3]}
                    },
                    {
                        -- Show Writ Vouchers Name
                        type = "editbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWVOUCHERNAME)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWVOUCHERNAME_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyWVName end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyWVName = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyWVChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyWVName,
                    },
                    {
                        -- Show Writ Vouchers Total
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWVOUCHERTOTAL)),
                        tooltip = GetString(SI_LUIE_LAM_CA_CURRENCY_SHOWVOUCHERTOTAL_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyWVShowTotal end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyWVShowTotal = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.CurrencyWVChange and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyWVShowTotal,
                    },
                    {
                        -- Total Currency Message (Gold)
                        type = "editbox",
                        name = "Total Gold Message",
                        tooltip = "TODO: Tooltip",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageTotalGold end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageTotalGold = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.CurrencyGoldChange) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageTotalGold,
                    },
                    {
                        -- Total Currency Message (Alliance Points)
                        type = "editbox",
                        name = "Total AP Message",
                        tooltip = "TODO: Tooltip",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageTotalAP end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageTotalAP = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.CurrencyAPShowChange) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageTotalAP,
                    },
                    {
                        -- Total Currency Message (Tel Var Stones)
                        type = "editbox",
                        name = "Total TV Message",
                        tooltip = "TODO: Tooltip",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageTotalTV end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageTotalTV = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.CurrencyTVChange) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageTotalTV,
                    },
                    {
                        -- Total Currency Message (Writ Vouchers)
                        type = "editbox",
                        name = "Total WV Message",
                        tooltip = "TODO: Tooltip",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageTotalWV end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageTotalWV = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.CurrencyWVChange) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageTotalWV,
                    },

                    {
                    type = "divider",
                    width = "full",
                    alpha = 1,
                    },
                    
                    -- BIG LIST OF SHIT
                    
                    {
                        -- Loot Message
                        type = "editbox",
                        name = "Loot Message",
                        tooltip = "ugh",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageLoot end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageLoot = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.CurrencyGoldChange or
                                LUIE.ChatAnnouncements.SV.CurrencyAPShowChange or
                                LUIE.ChatAnnouncements.SV.CurrencyTVChange or
                                LUIE.ChatAnnouncements.SV.CurrencyWVChange or
                                LUIE.SV.ChatAnnouncements_Enable
                            )) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageLoot,
                    },
                    {
                        -- Receive Message
                        type = "editbox",
                        name = "Receive Message",
                        tooltip = "ugh",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageReceive end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageReceive = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.CurrencyGoldChange or
                                LUIE.ChatAnnouncements.SV.CurrencyAPShowChange or
                                LUIE.ChatAnnouncements.SV.CurrencyTVChange or
                                LUIE.ChatAnnouncements.SV.CurrencyWVChange or
                                LUIE.SV.ChatAnnouncements_Enable
                            )) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageReceive,
                    },
                    {
                        -- Spend Message
                        type = "editbox",
                        name = "Spend Message",
                        tooltip = "ugh",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageSpend end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageSpend = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.CurrencyGoldChange or
                                LUIE.ChatAnnouncements.SV.CurrencyAPShowChange or
                                LUIE.ChatAnnouncements.SV.CurrencyTVChange or
                                LUIE.ChatAnnouncements.SV.CurrencyWVChange or
                                LUIE.SV.ChatAnnouncements_Enable
                            )) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageSpend,
                    },
                    {
                        -- Trade Message (In)
                        type = "editbox",
                        name = "Trade Message (Incoming)",
                        tooltip = "ugh",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageTradeIn end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageTradeIn = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.CurrencyGoldChange or
                                LUIE.ChatAnnouncements.SV.CurrencyAPShowChange or
                                LUIE.ChatAnnouncements.SV.CurrencyTVChange or
                                LUIE.ChatAnnouncements.SV.CurrencyWVChange or
                                LUIE.SV.ChatAnnouncements_Enable
                            )) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageTradeIn,
                    },
                    {
                        -- Trade Message (Out)
                        type = "editbox",
                        name = "Trade Message (Outgoing)",
                        tooltip = "ugh",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageTradeOut end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageTradeOut = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.CurrencyGoldChange or
                                LUIE.ChatAnnouncements.SV.CurrencyAPShowChange or
                                LUIE.ChatAnnouncements.SV.CurrencyTVChange or
                                LUIE.ChatAnnouncements.SV.CurrencyWVChange or
                                LUIE.SV.ChatAnnouncements_Enable
                            )) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageTradeOut,
                    },
                    {
                        -- Deposit Message
                        type = "editbox",
                        name = "Deposit Message",
                        tooltip = "ugh",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageDeposit end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageDeposit = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.CurrencyGoldChange or
                                LUIE.ChatAnnouncements.SV.CurrencyAPShowChange or
                                LUIE.ChatAnnouncements.SV.CurrencyTVChange or
                                LUIE.ChatAnnouncements.SV.CurrencyWVChange or
                                LUIE.SV.ChatAnnouncements_Enable
                            )) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageDeposit,
                    },
                    {
                        -- Withdraw Message
                        type = "editbox",
                        name = "Withdraw Message",
                        tooltip = "ugh",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageWithdraw end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageWithdraw = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.CurrencyGoldChange or
                                LUIE.ChatAnnouncements.SV.CurrencyAPShowChange or
                                LUIE.ChatAnnouncements.SV.CurrencyTVChange or
                                LUIE.ChatAnnouncements.SV.CurrencyWVChange or
                                LUIE.SV.ChatAnnouncements_Enable
                            )) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageWithdrew,
                    },
                    {
                        -- Confiscate Message
                        type = "editbox",
                        name = "Confiscate Message",
                        tooltip = "ugh",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageConfiscate end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageConfiscate = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.CurrencyGoldChange or
                                LUIE.ChatAnnouncements.SV.CurrencyAPShowChange or
                                LUIE.ChatAnnouncements.SV.CurrencyTVChange or
                                LUIE.ChatAnnouncements.SV.CurrencyWVChange or
                                LUIE.SV.ChatAnnouncements_Enable
                            )) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageConfiscate,
                    },
                    {
                        -- Pickpocket Message
                        type = "editbox",
                        name = "Pickpocket Message",
                        tooltip = "ugh",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessagePickpocket end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessagePickpocket = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.CurrencyGoldChange or
                                LUIE.ChatAnnouncements.SV.CurrencyAPShowChange or
                                LUIE.ChatAnnouncements.SV.CurrencyTVChange or
                                LUIE.ChatAnnouncements.SV.CurrencyWVChange or
                                LUIE.SV.ChatAnnouncements_Enable
                            )) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessagePickpocket,
                    },
                    {
                        -- Lost Message
                        type = "editbox",
                        name = "Lost Message",
                        tooltip = "ugh",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageLost end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageLost = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.CurrencyGoldChange or
                                LUIE.ChatAnnouncements.SV.CurrencyAPShowChange or
                                LUIE.ChatAnnouncements.SV.CurrencyTVChange or
                                LUIE.ChatAnnouncements.SV.CurrencyWVChange or
                                LUIE.SV.ChatAnnouncements_Enable
                            )) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageLost,
                    },
                    {
                        -- Earned Message
                        type = "editbox",
                        name = "Earned Message",
                        tooltip = "ugh",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageEarn end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageEarn = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.CurrencyGoldChange or
                                LUIE.ChatAnnouncements.SV.CurrencyAPShowChange or
                                LUIE.ChatAnnouncements.SV.CurrencyTVChange or
                                LUIE.ChatAnnouncements.SV.CurrencyWVChange or
                                LUIE.SV.ChatAnnouncements_Enable
                            )) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageEarn,
                    },
                    {
                        -- Stable Message
                        type = "editbox",
                        name = "Stable Message",
                        tooltip = "ugh",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageStable end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageStable = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.CurrencyGoldChange or
                                LUIE.ChatAnnouncements.SV.CurrencyAPShowChange or
                                LUIE.ChatAnnouncements.SV.CurrencyTVChange or
                                LUIE.ChatAnnouncements.SV.CurrencyWVChange or
                                LUIE.SV.ChatAnnouncements_Enable
                            )) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageStable,
                    },
                    {
                        -- Storage Message
                        type = "editbox",
                        name = "Stable Message",
                        tooltip = "ugh",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CurrencyMessageStorage end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CurrencyMessageStorage = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.CurrencyGoldChange or
                                LUIE.ChatAnnouncements.SV.CurrencyAPShowChange or
                                LUIE.ChatAnnouncements.SV.CurrencyTVChange or
                                LUIE.ChatAnnouncements.SV.CurrencyWVChange or
                                LUIE.SV.ChatAnnouncements_Enable
                            )) end,
                        default = LUIE.ChatAnnouncements.D.CurrencyMessageStorage,
                    },
                    
                    
                },
            }
                -- CA Loot Announcements Options Submenu
                optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
                type = "submenu",
                name = GetString(SI_LUIE_LAM_CA_LOOT_HEADER),
                reference = "Chat_Announcements_Options_Loot_Announcements_Submenu",
                controls = {
                    {
                        -- Show looted items
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWITEMS),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWITEMS_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.Loot end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.Loot = value LUIE.ChatAnnouncements.RegisterLootEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.Loot,
                    },
                    {
                        -- Show notable loot
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_LOOT_SHOWNOTABLE)),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWNOTABLE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootOnlyNotable end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootOnlyNotable = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.Loot and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.LootOnlyNotable,
                    },
                    {
                        -- Show group loot
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_LOOT_SHOWGRPLOOT)),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWGRPLOOT_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootGroup end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootGroup = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.Loot and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.LootGroup,
                    },
                    {
                        -- Hide annoying items
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_LOOT_HIDEANNOYINGITEMS)),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_HIDEANNOYINGITEMS_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootBlacklist end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootBlacklist = value end,
                        width = "full",
                        warning = GetString(SI_LUIE_LAM_CA_LOOT_HIDEANNOYINGITEMS_WARNING),
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.Loot and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.LootBlacklist,
                    },
                    {
                        -- Show looted item icons
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWICONS),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWICONS_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootIcons end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootIcons = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LootIcons,
                    },
                    {
                        -- Show loot total
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_TOTAL),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_TOTAL_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootTotal end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootTotal = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LootTotal,
                    },
                    {
                        -- Loot total string
                        type = "editbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_TOTALSTRING),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_TOTALSTRING_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootTotalString end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootTotalString = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.LootTotal and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.LootTotalString,
                    },
                    {
                        -- Show Vendor Inventory Changes
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWVENDOR),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWVENDOR_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootVendor end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootVendor = value LUIE.ChatAnnouncements.RegisterLootEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LootVendor,
                    },
                    {
                        -- Show Bank Inventory Changes
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWBANK),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWBANK_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootBank end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootBank = value LUIE.ChatAnnouncements.RegisterLootEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LootBank,
                    },
                    {
                        -- Show Mail Inventory Changes
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWMAIL),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWMAIL_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootMail end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootMail = value LUIE.ChatAnnouncements.RegisterMailEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LootMail,
                    },
                    {
                        -- Show Trade
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWTRADE),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWTRADE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootTrade end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootTrade = value LUIE.ChatAnnouncements.RegisterLootEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LootTrade,
                    },
                    {
                        -- Show Craft
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWCRAFT),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWCRAFT_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootCraft end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootCraft = value LUIE.ChatAnnouncements.RegisterLootEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LootCraft,
                    },
                    {
                        -- Show Materials consumed when crafting
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_LOOT_SHOWCRAFT_MATERIALS)),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWCRAFT_MATERIALS_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ShowCraftUse end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ShowCraftUse = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.LootCraft and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.ShowCraftUse,
                    },
                    {
                        -- Show Confiscated Items
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWCONFISCATED),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWCONFISCATED_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ShowConfiscate end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ShowConfiscate = value LUIE.ChatAnnouncements.RegisterLootEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.ShowConfiscate,
                    },
                    {
                        -- Show Destroyed Items
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWDESTROYED),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWDESTROYED_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ShowDestroy end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ShowDestroy = value LUIE.ChatAnnouncements.RegisterLootEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.ShowDestroy,
                    },
                    {
                        -- Show Lockpick Break
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWLOCKPICKBREAK),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWLOCKPICKBREAK_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ShowLockpickBreak end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ShowLockpickBreak = value LUIE.ChatAnnouncements.RegisterLootEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.ShowLockpickBreak,
                    },
                    {
                        -- Show Disguise Equip
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWDISGUISE),
                        tooltip = strformat("<<1>>\n<<2>>", GetString(SI_LUIE_LAM_CA_LOOT_SHOWDISGUISE_TP), GetString(SI_LUIE_LAM_CA_LOOT_SHOWDISGUISE_NOTE)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ShowDisguise end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ShowDisguise = value LUIE.ChatAnnouncements.RegisterLootEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.ShowDisguise,
                    },
                    {
                        -- Show Armor Type
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWARMORTYPE),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWARMORTYPE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootShowArmorType end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootShowArmorType = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.Loot or
                                LUIE.ChatAnnouncements.SV.LootCraft or
                                LUIE.ChatAnnouncements.SV.LootTrade or
                                LUIE.ChatAnnouncements.SV.LootMail or
                                LUIE.ChatAnnouncements.SV.LootVendor or
                                LUIE.ChatAnnouncements.SV.LootBank
                            )) end,
                        default = LUIE.ChatAnnouncements.D.LootShowArmorType,
                    },
                    {
                        -- Show Item Trait
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWITEMTRAIT),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWITEMTRAIT_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootShowTrait end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootShowTrait = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.Loot or
                                LUIE.ChatAnnouncements.SV.LootCraft or
                                LUIE.ChatAnnouncements.SV.LootTrade or
                                LUIE.ChatAnnouncements.SV.LootMail or
                                LUIE.ChatAnnouncements.SV.LootVendor or
                                LUIE.ChatAnnouncements.SV.LootBank
                            )) end,
                        default = LUIE.ChatAnnouncements.D.LootShowTrait,
                    },
                    {
                        -- Show Item Style
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_SHOWITEMSTYLE),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_SHOWITEMSTYLE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootShowStyle end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootShowStyle = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.Loot or
                                LUIE.ChatAnnouncements.SV.LootCraft or
                                LUIE.ChatAnnouncements.SV.LootTrade or
                                LUIE.ChatAnnouncements.SV.LootMail or
                                LUIE.ChatAnnouncements.SV.LootVendor or
                                LUIE.ChatAnnouncements.SV.LootBank
                            )) end,
                        default = LUIE.ChatAnnouncements.D.LootShowStyle,
                    },
                    {
                        -- Hide Trash Quality Items
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_HIDETRASH),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_HIDETRASH_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootNotTrash end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootNotTrash = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.Loot or
                                LUIE.ChatAnnouncements.SV.LootCraft or
                                LUIE.ChatAnnouncements.SV.LootTrade or
                                LUIE.ChatAnnouncements.SV.LootMail or
                                LUIE.ChatAnnouncements.SV.LootVendor or
                                LUIE.ChatAnnouncements.SV.LootBank
                            )) end,
                        default = LUIE.ChatAnnouncements.D.LootNotTrash,
                    },
                    {
                        -- Bracket Settings for Context Specific Messages
                        type = "dropdown",
                        name = GetString(SI_LUIE_LAM_CA_CSMBRACKET),
                        choices = itemBracketOptions,
                        tooltip = GetString(SI_LUIE_LAM_CA_CSMBRACKET_TP),
                        getFunc = function() return itemBracketOptions[LUIE.ChatAnnouncements.SV.ItemBracketDisplayOptions] end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ItemBracketDisplayOptions = itemBracketOptionsKeys[value] end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.Loot or
                                LUIE.ChatAnnouncements.SV.LootCraft or
                                LUIE.ChatAnnouncements.SV.LootTrade or
                                LUIE.ChatAnnouncements.SV.LootMail or
                                LUIE.ChatAnnouncements.SV.LootVendor or
                                LUIE.ChatAnnouncements.SV.LootBank
                            )) end,
                        default = itemBracketOptions[1]
                    },
                    {
                        -- Allow override Context specific messages
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_CSMOVERRIDE),
                        tooltip = strformat("<<1>>\n<<2>>", GetString(SI_LUIE_LAM_CA_CSMOVERRIDE_TP), GetString(SI_LUIE_LAM_CA_CSMOVERRIDE_NOTE)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ItemContextToggle end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ItemContextToggle = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.Loot or
                                LUIE.ChatAnnouncements.SV.LootCraft or
                                LUIE.ChatAnnouncements.SV.LootTrade or
                                LUIE.ChatAnnouncements.SV.LootMail or
                                LUIE.ChatAnnouncements.SV.LootVendor or
                                LUIE.ChatAnnouncements.SV.LootBank
                            )) end,
                        default = LUIE.ChatAnnouncements.D.ItemContextToggle,
                    },
                    {
                        -- Context Specific Override Message Loot
                        type = "editbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_CSMLOOT_GAIN),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_CSMLOOT_GAIN_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ItemContextMessage end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ItemContextMessage = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.ItemContextToggle and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.ItemContextMessage,
                    },
                    {
                        -- Merge LootLog Sales with Currency Changes
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOOT_MERGEWITHCURRENCY),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOOT_MERGEWITHCURRENCY_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootCurrencyCombo end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootCurrencyCombo = value end,
                        width = "full",
                        warning = GetString(SI_LUIE_LAM_GENERIC_WARNING),
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and
                            (
                                LUIE.ChatAnnouncements.SV.Loot or
                                LUIE.ChatAnnouncements.SV.LootCraft or
                                LUIE.ChatAnnouncements.SV.LootTrade or
                                LUIE.ChatAnnouncements.SV.LootMail or
                                LUIE.ChatAnnouncements.SV.LootVendor or
                                LUIE.ChatAnnouncements.SV.LootBank
                            )) end,
                        default = LUIE.ChatAnnouncements.D.LootCurrencyCombo,
                    },
                    
                    
                    {
                        -- Context Specific Override Message Loot
                        type = "editbox",
                        name = "LOOT RECEIVE",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootMessageReceived end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootMessageReceived = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LootMessageReceived,
                    },
                    {
                        -- Context Specific Override Message Loot
                        type = "editbox",
                        name = "LOOT LOOTED",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LootMessageLooted end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LootMessageLooted = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LootMessageLooted,
                    },
                    
                },
            }
                -- CA Experience Announcements Options Submenu
                optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
                type = "submenu",
                name = GetString(SI_LUIE_LAM_CA_EXP_HEADER),
                reference = "Chat_Announcements_Options_Experience_Announcements_Submenu",
                controls = {
                    {
                        -- Show Enlightened State Change
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_EXP_ENLIGHTENED),
                        tooltip = GetString(SI_LUIE_LAM_CA_EXP_ENLIGHTENED_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ExperienceEnlightened end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ExperienceEnlightened = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.ExperienceEnlightened,
                    },
                    {
                        -- Show Level Up Message in Chat
                        type = "checkbox",
                        name = "Level Up CA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ExperienceLevelUpCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ExperienceLevelUpCA = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.ExperienceLevelUpCA,
                    },
                    {
                        -- Level Up CA
                        type = "checkbox",
                        name = "Level Up CSA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ExperienceLevelUpCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ExperienceLevelUpCSA = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.ExperienceLevelUpCSA,
                    },
                    {
                        -- Level Up Alert
                        type = "checkbox",
                        name = "Level Up Alert",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ExperienceLevelUpAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ExperienceLevelUpAlert = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.ExperienceLevelUpAlert,
                    },
                    {
                        -- Level Up CSA Expanded
                        type = "checkbox",
                        name = "Level Up CSA Expanded",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ExperienceLevelUpCSAExpand end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ExperienceLevelUpCSAExpand = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.ExperienceLevelUpCSAExpand,
                    },
                    {
                        -- Show Level Icon on Level Up
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_EXP_LVLUPICON)),
                        tooltip = GetString(SI_LUIE_LAM_CA_EXP_LVLUPICON_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ExperienceLevelUpIcon end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ExperienceLevelUpIcon = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.ExperienceLevelUp and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.ExperienceExperienceLevelUpIcon,
                    },
                    {
                        -- Color Level by Context
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_EXP_COLORLVLBYCONTEXT)),
                        tooltip = GetString(SI_LUIE_LAM_CA_EXP_COLORLVLBYCONTEXT_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ExperienceLevelColorByLevel end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ExperienceLevelColorByLevel = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.ExperienceLevelUp and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.ExperienceLevelColorByLevel,
                    },
                    {
                        -- Experience Level Up Color
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_EXPERIENCE_LEVELUP_COLOR)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.ExperienceLevelUpColor) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.ExperienceLevelUpColor = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.ExperienceLevelUp and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = {r=LUIE.ChatAnnouncements.D.ExperienceLevelUpColor[1], g=LUIE.ChatAnnouncements.D.ExperienceLevelUpColor[2], b=LUIE.ChatAnnouncements.D.ExperienceLevelUpColor[3]}
                    },
                    {
                        -- Show Experience Gain
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_EXP_SHOWEXPGAIN),
                        tooltip = GetString(SI_LUIE_LAM_CA_EXP_SHOWEXPGAIN_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.Experience end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.Experience = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.Experience,
                    },
                    {
                        -- Show Experience Icon
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_EXP_SHOWEXPICON)),
                        tooltip = GetString(SI_LUIE_LAM_CA_EXP_SHOWEXPICON_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ExperienceIcon end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ExperienceIcon = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.Experience and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.ExperienceIcon,
                    },
                    {
                        -- Context Name for Experience Gain
                        type = "editbox",
                        name = "\t\t\t\tExperience Point Message Format",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ExperienceMessage end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ExperienceMessage = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.Experience and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.ExperienceMessage,
                    },
                    {
                        -- Name for Experience Gain
                        type = "editbox",
                        name = "\t\t\t\tExperience Point Name",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ExperienceName end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ExperienceName = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.Experience and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.ExperienceName,
                    },
                    {
                        -- Hide Experience from Kills
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_EXP_HIDEEXPKILLS)),
                        tooltip = GetString(SI_LUIE_LAM_CA_EXP_HIDEEXPKILLS_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ExperienceHideCombat end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ExperienceHideCombat = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.Experience and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.ExperienceHideCombat,
                    },
                    {
                        -- Combat Experience Gain Filter Threshold
                        type = "slider",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_EXP_EXPGAINTHRESHOLD)),
                        tooltip = GetString(SI_LUIE_LAM_CA_EXP_EXPGAINTHRESHOLD_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ExperienceFilter end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ExperienceFilter = value end,
                        min = 0,
                        max = 10000,
                        step = 100,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.Experience and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.ExperienceFilter,
                    },
                    {
                        -- Throttle Experience gained in combat
                        type = "slider",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_EXP_THROTTLEEXPINCOMBAT)),
                        tooltip = GetString(SI_LUIE_LAM_CA_EXP_THROTTLEEXPINCOMBAT_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ExperienceThrottle end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ExperienceThrottle = value end,
                        min = 0,
                        max = 5000,
                        step = 50,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.Experience and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.ExperienceThrottle,
                    },
                    {
                        -- Experience Message Color
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_EXPERIENCE_COLOR)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.ExperienceColorMessage) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.ExperienceColorMessage = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.Experience and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = {r=LUIE.ChatAnnouncements.D.ExperienceColorMessage[1], g=LUIE.ChatAnnouncements.D.ExperienceColorMessage[2], b=LUIE.ChatAnnouncements.D.ExperienceColorMessage[3]}
                    },
                    {
                        -- Experience Name Color
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_EXPERIENCE_COLOR)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.ExperienceColorName) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.ExperienceColorName = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.Experience and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = {r=LUIE.ChatAnnouncements.D.ExperienceColorName[1], g=LUIE.ChatAnnouncements.D.ExperienceColorName[2], b=LUIE.ChatAnnouncements.D.ExperienceColorName[3]}
                    },
                    
                    {
                        -- Show Skill Points Updated CA
                        type = "checkbox",
                        name = "Show Skill Point Update CA",
                        tooltip = GetString(SI_LUIE_LAM_CA_SKILLPOINT_UPDATED_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillPointCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillPointCA = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillPointCA,
                    },
                    {
                        -- Show Skill Points Updated CSA
                        type = "checkbox",
                        name = "Show Skill Point Update CSA",
                        tooltip = GetString(SI_LUIE_LAM_CA_SKILLPOINT_UPDATED_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillPointCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillPointCSA = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillPointCSA,
                    },
                    {
                        -- Show Skill Points Updated Alert
                        type = "checkbox",
                        name = "Show Skill Point Update Alert",
                        tooltip = GetString(SI_LUIE_LAM_CA_SKILLPOINT_UPDATED_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillPointAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillPointAlert = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillPointAlert,
                    },
                    {
                        -- Show Skill Points Updated Partial
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_SKILLPOINT_UPDATEDPARTIAL),
                        tooltip = GetString(SI_LUIE_LAM_CA_SKILLPOINT_UPDATEDPARTIAL_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ShowSkillPointsPartial end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ShowSkillPointsPartial = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.ShowSkillPointsPartial,
                    },
                    
                    {
                        -- Collectible Bracket Options
                        type = "dropdown",
                        name = "Skill Point Bracket",
                        choices = skillPointBracketOptions,
                        tooltip = "TODO",
                        getFunc = function() return skillPointBracketOptions[LUIE.ChatAnnouncements.SV.SkillPointBracket] end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillPointBracket = skillPointBracketOptionsKeys[value] end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = skillPointBracketOptions[1]
                    },
                    
                    {
                        -- Skyshard Prefix
                        type = "editbox",
                        name = "Skyshard Prefix",
                        tooltip = GetString(SI_LUIE_LAM_CA_SKILLPOINT_UPDATED_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillPointSkyshardMsg end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillPointSkyshardMsg = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillPointSkyshardMsg,
                    },

                    {
                        -- Skill Point Color 1
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_SKILLPOINT_COLOR)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.SkillPointColor1) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.SkillPointColor1 = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        isabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.SkillPointColor1[1], g=LUIE.ChatAnnouncements.D.SkillPointColor1[2], b=LUIE.ChatAnnouncements.D.SkillPointColor1[3]}
                    },
                    {
                        -- Skill Point Color 2
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_SKILLPOINT_COLOR)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.SkillPointColor2) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.SkillPointColor2 = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        isabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.SkillPointColor2[1], g=LUIE.ChatAnnouncements.D.SkillPointColor2[2], b=LUIE.ChatAnnouncements.D.SkillPointColor2[3]}
                    },
                    
                    {
                        -- Skill Line Unlocked CA
                        type = "checkbox",
                        name = "Skill Line Unlocked CA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillLineUnlockCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillLineUnlockCA = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillLineUnlockCA,
                    },
                    {
                        -- Skill Line Unlocked CSA
                        type = "checkbox",
                        name = "Skill Line Unlocked CSA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillLineUnlockCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillLineUnlockCSA = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillLineUnlockCSA,
                    },
                    {
                        -- Skill Line Unlocked Alert
                        type = "checkbox",
                        name = "Skill Line Unlocked CA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillLineUnlockAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillLineUnlockAlert = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillLineUnlockAlert,
                    },
                    
                    {
                        -- Skill Line Progression CA
                        type = "checkbox",
                        name = "Skill Line Progression CA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillLineCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillLineCA = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillLineCA,
                    },
                    {
                        -- Skill Line Progression CSA
                        type = "checkbox",
                        name = "Skill Line Progression CSA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillLineCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillLineCSA = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillLineCSA,
                    },
                    {
                        -- Skill Line Progression Alert
                        type = "checkbox",
                        name = "Skill Line Progression CA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillLineAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillLineAlert = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillLineAlert,
                    },
                    
                    {
                        -- Skill Ability Progression CA
                        type = "checkbox",
                        name = "Skill Ability Progression CA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillAbilityCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillAbilityCA = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillAbilityCA,
                    },
                    {
                        -- Skill Ability Progression CSA
                        type = "checkbox",
                        name = "Skill Ability Progression CSA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillAbilityCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillAbilityCSA = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillAbilityCSA,
                    },
                    {
                        -- Skill Ability Progression Alert
                        type = "checkbox",
                        name = "Skill Ability Progression CA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillAbilityAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillAbilityAlert = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillAbilityAlert,
                    },
                    
                    {
                        -- Skill Line Icon
                        type = "checkbox",
                        name = "Display Skill Line Icon",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillLineIcon end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillLineIcon = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillLineIcon,
                    },
                    {
                        -- Skill Line Color
                        type = "colorpicker",
                        name = "Skill Line / Ability Upgrade Color",
                        tooltip = "TODO",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.SkillLineColor) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.SkillLineColor = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        isabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.SkillLineColor[1], g=LUIE.ChatAnnouncements.D.SkillLineColor[2], b=LUIE.ChatAnnouncements.D.SkillLineColor[3]}
                    },
                    
                    
                    {
                        -- Skill Fighters Guild
                        type = "checkbox",
                        name = "Display Fighters Guild Skill Gained",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillGuildFighters end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillGuildFighters = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillGuildFighters,
                    },
                    {
                        -- Skill Mages Guild
                        type = "checkbox",
                        name = "Display Mages Guild Skill Gained",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillGuildMages end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillGuildMages = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillGuildMages,
                    },
                    {
                        -- Skill Undaunted
                        type = "checkbox",
                        name = "Display Undaunted Skill Gained",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillGuildUndaunted end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillGuildUndaunted = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillGuildUndaunted,
                    },
                    {
                        -- Skill Thieves Guild
                        type = "checkbox",
                        name = "Display Thieves Guild Skill Gained",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillGuildThieves end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillGuildThieves = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillGuildThieves,
                    },
                    {
                        -- Skill Dark Brotherhood
                        type = "checkbox",
                        name = "Display Dark Brotherhood Skill Gained",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillGuildDarkBrotherhood end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillGuildDarkBrotherhood = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillGuildDarkBrotherhood,
                    },
                    
                    {
                        -- Skill Guild Alert
                        type = "checkbox",
                        name = "Display Basic Alert",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillGuildAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillGuildAlert = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillGuildAlert,
                    },
                    
                    {
                        -- Skill Guild Throttle Combat
                        type = "slider",
                        name = "Throttle Guild Skill Earned From Kills",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillGuildThrottle end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillGuildThrottle = value end,
                        min = 0,
                        max = 5000,
                        step = 50,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillGuildThrottle,
                    },
                    
                    {
                        -- Skill Guild Threshold
                        type = "slider",
                        name = "Hide Guild Rep Earned From Kills",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillGuildThreshold end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillGuildThreshold = value end,
                        min = 0,
                        max = 5,
                        step = 1,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillGuildThreshold,
                    },
                    
                    {
                        -- Skill Guild Icon
                        type = "checkbox",
                        name = "Display Guild Icon",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillGuildIcon end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillGuildIcon = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillGuildIcon,
                    },
                    
                    {
                        -- Guild Skill Point Message
                        type = "editbox",
                        name = "Guild Rep Message Format",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillGuildMsg end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillGuildMsg = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillGuildMsg,
                    },
                    
                    {
                        -- Guild Skill Point Message
                        type = "editbox",
                        name = "Reputation Name",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.SkillGuildRepName end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.SkillGuildRepName = value LUIE.ChatAnnouncements.RegisterXPEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.SkillGuildRepName,
                    },
                    
                    {
                        -- Guild Skill Point Color
                        type = "colorpicker",
                        name = "Guild Rep Update Color",
                        tooltip = "TODO",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.SkillGuildColor) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.SkillGuildColor = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        isabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.SkillGuildColor[1], g=LUIE.ChatAnnouncements.D.SkillGuildColor[2], b=LUIE.ChatAnnouncements.D.SkillGuildColor[3]}
                    },
                    
                    {
                        -- Guild Skill Point Color FG
                        type = "colorpicker",
                        name = "Fighters Guild Color",
                        tooltip = "TODO",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.SkillGuildColorFG) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.SkillGuildColorFG = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        isabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.SkillGuildColorFG[1], g=LUIE.ChatAnnouncements.D.SkillGuildColorFG[2], b=LUIE.ChatAnnouncements.D.SkillGuildColorFG[3]}
                    },
                    {
                        -- Guild Skill Point Color MG
                        type = "colorpicker",
                        name = "Mages Guild Color",
                        tooltip = "TODO",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.SkillGuildColorMG) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.SkillGuildColorMG = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        isabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.SkillGuildColorMG[1], g=LUIE.ChatAnnouncements.D.SkillGuildColorMG[2], b=LUIE.ChatAnnouncements.D.SkillGuildColorMG[3]}
                    },
                    {
                        -- Guild Skill Point Color UD
                        type = "colorpicker",
                        name = "Undaunted Color",
                        tooltip = "TODO",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.SkillGuildColorUD) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.SkillGuildColorUD = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        isabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.SkillGuildColorUD[1], g=LUIE.ChatAnnouncements.D.SkillGuildColorUD[2], b=LUIE.ChatAnnouncements.D.SkillGuildColorUD[3]}
                    },
                    {
                        -- Guild Skill Point Color TG
                        type = "colorpicker",
                        name = "Thieves Guild Color",
                        tooltip = "TODO",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.SkillGuildColorTG) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.SkillGuildColorTG = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        isabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.SkillGuildColorTG[1], g=LUIE.ChatAnnouncements.D.SkillGuildColorTG[2], b=LUIE.ChatAnnouncements.D.SkillGuildColorTG[3]}
                    },
                    {
                        -- Guild Skill Point Color DB
                        type = "colorpicker",
                        name = "Dark Brotherhood Color",
                        tooltip = "TODO",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.SkillGuildColorDB) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.SkillGuildColorDB = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        isabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.SkillGuildColorDB[1], g=LUIE.ChatAnnouncements.D.SkillGuildColorDB[2], b=LUIE.ChatAnnouncements.D.SkillGuildColorDB[3]}
                    },
                    
                },
            }
                -- CA Collectible Announcements Options Submenu
                optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
                type = "submenu",
                name = GetString(SI_LUIE_LAM_CA_COLLECTIBLE_HEADER),
                reference = "Chat_Announcements_Options_Collectible_Announcements_Submenu",
                controls = {
                    {
                        -- Show Collectibles Unlocked CA
                        type = "checkbox",
                        name = "Show Collectible Unlocked CA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CollectibleCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CollectibleCA = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.CollectibleCA,
                    },
                    {
                        -- Show Collectibles Unlocked CSA
                        type = "checkbox",
                        name = "Show Collectible Unlocked CSA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CollectibleCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CollectibleCSA = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.CollectibleCSA,
                    },
                    {
                        -- Show Collectibles Unlocked Alert
                        type = "checkbox",
                        name = "Show Collectible Unlocked Alert",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CollectibleAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CollectibleAlert = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.CollectibleAlert,
                    },
                    {
                        -- Collectible Bracket Options
                        type = "dropdown",
                        name = "Col Bracket",
                        choices = collectibleBracketOptions,
                        tooltip = GetString(SI_LUIE_LAM_CA_LOREBOOK_CATEGORY_BRACKET_TP),
                        getFunc = function() return collectibleBracketOptions[LUIE.ChatAnnouncements.SV.CollectibleBracket] end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CollectibleBracket = collectibleBracketOptionsKeys[value] end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = collectibleBracketOptions[1]
                    },
                    {
                        -- Collectible Category
                        type = "checkbox",
                        name = "Show Collectible Category",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CollectibleCategory end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CollectibleCategory = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.CollectibleCategory,
                    },
                    {
                        -- Collectible Icon
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>",GetString(SI_LUIE_LAM_CA_COLLECTIBLE_ICON)),
                        tooltip = GetString(SI_LUIE_LAM_CA_COLLECTIBLE_ICON_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CollectibleIcon end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CollectibleIcon = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.CollectibleIcon,
                    },
                    {
                        -- Collectible Message Prefix
                        type = "editbox",
                        name = strformat("\t\t\t\t<<1>>",GetString(SI_LUIE_LAM_CA_COLLECTIBLE_MESSAGEPREFIX)),
                        tooltip = GetString(SI_LUIE_LAM_CA_COLLECTIBLE_MESSAGEPREFIX_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.CollectiblePrefix end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.CollectiblePrefix = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.CollectiblePrefix,
                    },
                    {
                        -- Collectible Color 1
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_COLLECTIBLE_COLOR_ONE)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.CollectibleColor1) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.CollectibleColor1 = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.CollectibleColor1[1], g=LUIE.ChatAnnouncements.D.CollectibleColor1[2], b=LUIE.ChatAnnouncements.D.CollectibleColor1[3]}
                    },
                    {
                        -- Collectible Color 2
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_COLLECTIBLE_COLOR_TWO)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.CollectibleColor2) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.CollectibleColor2 = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.CollectibleColor2[1], g=LUIE.ChatAnnouncements.D.CollectibleColor2[2], b=LUIE.ChatAnnouncements.D.CollectibleColor2[3]}
                    },
                    
                    {
                    type = "divider",
                    width = "full",
                    alpha = 1,
                    },
                    
                    {
                        -- Show Lorebooks Unlocked
                        type = "checkbox",
                        name = "Show Lorebooks CA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookCA = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookCA,
                    },
                    {
                        -- Show Lorebooks Unlocked
                        type = "checkbox",
                        name = "Show Lorebooks CSA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookCSA = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookCSA,
                    },
                    {
                        -- Show Lorebooks Unlocked
                        type = "checkbox",
                        name = "Show Lorebooks Alert",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookAlert = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookAlert,
                    },
                    
                    {
                        -- Show Lorebook Collection Complete
                        type = "checkbox",
                        name = "Show Collection Complete CA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookCollectionCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookCollectionCA = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookCollectionCA,
                    },
                    {
                        -- Show Lorebook Collection Complete
                        type = "checkbox",
                        name = "Show Collection Complete CSA",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookCollectionCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookCollectionCSA = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookCollectionCSA,
                    },
                    {
                        -- Show Lorebook Collection Complete
                        type = "checkbox",
                        name = "Show Collection Complete Alert",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookCollectionAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookCollectionAlert = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookCollectionAlert,
                    },
                    
                    
                    {
                        -- Lorebooks Bracket Options
                        type = "dropdown",
                        name = strformat("\t\t\t\t<<1>>",GetString(SI_LUIE_LAM_CA_LOREBOOK_CATEGORY_BRACKET)),
                        choices = loreBookBracketOptions,
                        tooltip = GetString(SI_LUIE_LAM_CA_LOREBOOK_CATEGORY_BRACKET_TP),
                        getFunc = function() return loreBookBracketOptions[LUIE.ChatAnnouncements.SV.LorebookBracket] end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookBracket = loreBookBracketOptionsKeys[value] end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = loreBookBracketOptions[1]
                    },
                    {
                        -- Lorebooks Prefix 1
                        type = "editbox",
                        name = strformat("\t\t\t\t<<1>>",GetString(SI_LUIE_LAM_CA_LOREBOOK_PREFIX1)),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOREBOOK_PREFIX1_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookPrefix1 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookPrefix1 = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookPrefix1,
                    },
                    {
                        -- Lorebooks Prefix 2
                        type = "editbox",
                        name = strformat("\t\t\t\t<<1>>",GetString(SI_LUIE_LAM_CA_LOREBOOK_PREFIX2)),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOREBOOK_PREFIX2_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookPrefix2 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookPrefix2 = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookPrefix2,
                    },
                    {
                        -- Lorebooks Collection Prefix
                        type = "editbox",
                        name = "Lorebook Collection Prefix",
                        tooltip = "TODO",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookCollectionPrefix end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookCollectionPrefix = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookCollectionPrefix,
                    },
                    --[[
                    {
                        -- Lorebooks Prefix 3
                        type = "editbox",
                        name = strformat("\t\t\t\t<<1>>",GetString(SI_LUIE_LAM_CA_LOREBOOK_PREFIX3)),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOREBOOK_PREFIX3_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookPrefix3 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookPrefix3 = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookPrefix3,
                    },
                    ]]--
                    {
                        -- Lorebooks Icon
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>",GetString(SI_LUIE_LAM_CA_LOREBOOK_ICON)),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOREBOOK_ICON_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookIcon end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookIcon = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookIcon,
                    },
                    {
                        -- Lorebooks Color 1
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_LOREBOOK_COLOR1)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.LorebookColor1) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.LorebookColor1 = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.LorebookColor1[1], g=LUIE.ChatAnnouncements.D.LorebookColor1[2], b=LUIE.ChatAnnouncements.D.LorebookColor1[3]}
                    },
                    {
                        -- Lorebooks Color 2
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_LOREBOOK_COLOR2)),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.LorebookColor2) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.LorebookColor2 = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.LorebookColor2[1], g=LUIE.ChatAnnouncements.D.LorebookColor2[2], b=LUIE.ChatAnnouncements.D.LorebookColor2[3]}
                    },
                    {
                        -- Show hidden books
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>",GetString(SI_LUIE_LAM_CA_LOREBOOK_NOSHOWHIDE)),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOREBOOK_NOSHOWHIDE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookShowHidden end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookShowHidden = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookShowHidden,
                    },
                    {
                        -- Lorebooks Category
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_LOREBOOK_CATEGORY),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOREBOOK_CATEGORY_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookCategory end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookCategory = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookCategory,
                    },
                    
                    --[[
                    {
                        -- Lorebooks Category Completion
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>",GetString(SI_LUIE_LAM_CA_LOREBOOK_CATEGORY_NUMBER)),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOREBOOK_CATEGORY_NUMBER_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookNumber end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookNumber = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookNumber,
                    },
                    {
                        -- Lorebooks Category Completion Color
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>",GetString(SI_LUIE_LAM_CA_LOREBOOK_CATEGORY_COLOR)),
                        tooltip = GetString(SI_LUIE_LAM_CA_LOREBOOK_CATEGORY_COLOR_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.LorebookNumberColor end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.LorebookNumberColor = value LUIE.ChatAnnouncements.RegisterCollectibleEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.LorebookNumberColor,
                    },
                    ]]--
                    
                },
            }
                -- CA Achievements Announcements Options Submenu
                optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
                type = "submenu",
                name = GetString(SI_LUIE_LAM_CA_ACHIEVE_HEADER),
                reference = "Chat_Announcements_Options_Achievements_Announcements_Submenu",
                controls = {
                    {
                        -- Enable Achievements Tracking (Progress)
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_ACHIEVE_ENABLEPROGRESS),
                        tooltip = GetString(SI_LUIE_LAM_CA_ACHIEVE_ENABLEPROGRESS_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementsProgress end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementsProgress = value LUIE.ChatAnnouncements.RegisterAchievementsEvent() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.AchievementsProgress,
                    },
                    {
                        -- Context Name for Achievement Progress
                        type = "editbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_ACHIEVE_PROGMSG)),
                        tooltip = GetString(SI_LUIE_LAM_CA_ACHIEVE_PROGMSG_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementsProgressMsg end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementsProgressMsg = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementsProgressMsg,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.AchievementsProgress) end,
                    },
                    {
                        -- Achievements Step Size
                        type = "slider",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_ACHIEVE_STEPSIZE)),
                        tooltip = GetString(SI_LUIE_LAM_CA_ACHIEVE_STEPSIZE_TP),
                        min = 0, max = 50, step = 1,
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementsStep end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementsStep = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementsStep,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.AchievementsProgress) end,
                    },
                    {
                        -- Enable Achievements Tracking (Completion)
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_ACHIEVE_ENABLECOMPLETE),
                        tooltip = GetString(SI_LUIE_LAM_CA_ACHIEVE_ENABLECOMPLETE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementsComplete end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementsComplete = value LUIE.ChatAnnouncements.RegisterAchievementsEvent() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.AchievementsComplete,
                    },
                    {
                        -- Context Name for Achievement Completion
                        type = "editbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_ACHIEVE_COMPLETEMSG)),
                        tooltip = GetString(SI_LUIE_LAM_CA_ACHIEVE_COMPLETEMSG_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementsCompleteMsg end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementsCompleteMsg = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementsCompleteMsg,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.AchievementsComplete) end,
                    },
                    {
                        -- Show 100% Completion on complete event
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_ACHIEVE_COMPLETEPERCENT)),
                        tooltip = GetString(SI_LUIE_LAM_CA_ACHIEVE_COMPLETEPERCENT_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementsCompPercentage end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementsCompPercentage = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementsCompPercentage,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.AchievementsComplete) end,
                    },
                    {
                    type = "divider",
                    width = "full",
                    alpha = 1,
                    },
                    {
                        -- Achievement Message Color
                        type = "colorpicker",
                        name = GetString(SI_LUIE_LAM_CA_ACHIEVE_COLOR),
                        tooltip = GetString(SI_LUIE_LAM_CA_ACHIEVE_COLOR_TP),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.AchievementsColor) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.AchievementsColor = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                        default = {r=LUIE.ChatAnnouncements.D.AchievementsColor[1], g=LUIE.ChatAnnouncements.D.AchievementsColor[2], b=LUIE.ChatAnnouncements.D.AchievementsColor[3]}
                    },
                    {
                        -- Show Achievement Icon
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_ACHIEVE_ICON),
                        tooltip = GetString(SI_LUIE_LAM_CA_ACHIEVE_ICON_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementsIcon end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementsIcon = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementsIcon,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Show Achievement Category
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_ACHIEVE_SHOWCATEGORY),
                        tooltip = GetString(SI_LUIE_LAM_CA_ACHIEVE_SHOWCATEGORY_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementsCategory end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementsCategory = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementsCategory,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Show Achievement Subcategory
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_ACHIEVE_SHOWSUBCATEGORY),
                        tooltip = GetString(SI_LUIE_LAM_CA_ACHIEVE_SHOWSUBCATEGORY_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementsSubcategory end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementsSubcategory = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementsSubcategory,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.AchievementsCategory and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Category & Subcategory Bracket Options
                        type = "dropdown",
                        name = strformat("\t\t\t\t<<1>>",GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORYBRACKET)),
                        choices = achievementBracketOptions,
                        tooltip = GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORYBRACKET_TP),
                        getFunc = function() return achievementBracketOptions[LUIE.ChatAnnouncements.SV.AchievementsBracketOptions] end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementsBracketOptions = achievementBracketOptionsKeys[value] end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.AchievementsCategory and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                        default = achievementBracketOptions[1]
                    },
                    {
                        -- Show Detailed Achievement Info
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_ACHIEVE_DETAILINFO),
                        tooltip = GetString(SI_LUIE_LAM_CA_ACHIEVE_DETAILINFO_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementsDetails end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementsDetails = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementsDetails,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Color Achievement Progress
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_ACHIEVE_COLORPROGRESS),
                        tooltip = GetString(SI_LUIE_LAM_CA_ACHIEVE_COLORPROGRESS_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementsColorProgress end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementsColorProgress = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementsColorProgress,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                    type = "divider",
                    width = "full",
                    alpha = 1,
                    },
                    {
                        -- Enables achievements tracking in %s category
                        type = "checkbox",
                        name = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY), GetAchievementCategoryInfo(1)),
                        tooltip = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY_TP), GetAchievementCategoryInfo(1)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementCategory1 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementCategory1 = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementCategory1,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Enables achievements tracking in %s category
                        type = "checkbox",
                        name = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY), GetAchievementCategoryInfo(2)),
                        tooltip = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY_TP), GetAchievementCategoryInfo(2)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementCategory2 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementCategory2 = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementCategory2,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Enables achievements tracking in %s category
                        type = "checkbox",
                        name = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY), GetAchievementCategoryInfo(3)),
                        tooltip = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY_TP), GetAchievementCategoryInfo(3)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementCategory3 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementCategory3 = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementCategory3,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Enables achievements tracking in %s category
                        type = "checkbox",
                        name = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY), GetAchievementCategoryInfo(4)),
                        tooltip = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY_TP), GetAchievementCategoryInfo(4)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementCategory4 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementCategory4 = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementCategory4,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Enables achievements tracking in %s category
                        type = "checkbox",
                        name = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY), GetAchievementCategoryInfo(5)),
                        tooltip = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY_TP), GetAchievementCategoryInfo(5)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementCategory5 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementCategory5 = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementCategory5,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Enables achievements tracking in %s category
                        type = "checkbox",
                        name = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY), GetAchievementCategoryInfo(6)),
                        tooltip = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY_TP), GetAchievementCategoryInfo(6)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementCategory6 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementCategory6 = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementCategory6,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Enables achievements tracking in %s category
                        type = "checkbox",
                        name = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY), GetAchievementCategoryInfo(7)),
                        tooltip = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY_TP), GetAchievementCategoryInfo(7)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementCategory7 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementCategory7 = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementCategory7,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Enables achievements tracking in %s category
                        type = "checkbox",
                        name = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY), GetAchievementCategoryInfo(8)),
                        tooltip = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY_TP), GetAchievementCategoryInfo(8)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementCategory8 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementCategory8 = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementCategory8,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Enables achievements tracking in %s category
                        type = "checkbox",
                        name = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY), GetAchievementCategoryInfo(9)),
                        tooltip = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY_TP), GetAchievementCategoryInfo(9)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementCategory9 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementCategory9 = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementCategory9,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Enables achievements tracking in %s category
                        type = "checkbox",
                        name = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY), GetAchievementCategoryInfo(10)),
                        tooltip = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY_TP), GetAchievementCategoryInfo(10)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementCategory10 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementCategory10 = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementCategory10,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    {
                        -- Enables achievements tracking in %s category
                        type = "checkbox",
                        name = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY), GetAchievementCategoryInfo(11)),
                        tooltip = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY_TP), GetAchievementCategoryInfo(11)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementCategory11 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementCategory11 = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementCategory11,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },
                    --[[{
                        -- Enables achievements tracking in %s category
                        type = "checkbox",
                        name = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY), GetAchievementCategoryInfo(12)),
                        tooltip = strformat(GetString(SI_LUIE_LAM_CA_ACHIEVE_CATEGORY_TP), GetAchievementCategoryInfo(12)),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.AchievementCategory12 end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.AchievementCategory12 = value end,
                        width = "full",
                        default = LUIE.ChatAnnouncements.D.AchievementCategory12,
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and (LUIE.ChatAnnouncements.SV.AchievementsProgress or LUIE.ChatAnnouncements.SV.AchievementsComplete)) end,
                    },]]
                },
            }
                -- CA Quest Announcements Submenu
                optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
                type = "submenu",
                name = GetString(SI_LUIE_LAM_CA_QUEST_HEADER),
                reference = "Chat_Announcements_Options_Quest_Announcements_Submenu",
                controls = {
                
                    {
                        -- Location Color
                        type = "colorpicker",
                        name = "Location Name Color",
                        tooltip = "Choose the color to use for the name of a Location (Discovery) when displayed in a chat.",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.QuestColorLocName) end,
                        setFunc = function(r,g,b,a) LUIE.ChatAnnouncements.SV.QuestColorLocName={r,g,b} LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = { r=LUIE.ChatAnnouncements.D.QuestColorLocName[1], g=LUIE.ChatAnnouncements.D.QuestColorLocName[2], b=LUIE.ChatAnnouncements.D.QuestColorLocName[3] },
                    },
                    {
                        -- Location Description Color
                        type = "colorpicker",
                        name = "Location Description Color",
                        tooltip = "Choose the color to use for the description text following a Location.",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.QuestColorLocDescription) end,
                        setFunc = function(r,g,b,a) LUIE.ChatAnnouncements.SV.QuestColorLocDescription={r,g,b} LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = { r=LUIE.ChatAnnouncements.D.QuestColorLocDescription[1], g=LUIE.ChatAnnouncements.D.QuestColorLocDescription[2], b=LUIE.ChatAnnouncements.D.QuestColorLocDescription[3] },
                    },
                    {
                        -- Quest Color
                        type = "colorpicker",
                        name = "Quest Name Color",
                        tooltip = "Choose the color to use for the name of a Location (Discovery) when displayed in a chat.",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.QuestColorName) end,
                        setFunc = function(r,g,b,a) LUIE.ChatAnnouncements.SV.QuestColorName={r,g,b} LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = { r=LUIE.ChatAnnouncements.D.QuestColorName[1], g=LUIE.ChatAnnouncements.D.QuestColorName[2], b=LUIE.ChatAnnouncements.D.QuestColorName[3] },
                    },
                    {
                        -- Quest Description Color
                        type = "colorpicker",
                        name = "Quest Description Color",
                        tooltip = "Choose the color to use for the description text following a quest or Location.",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.QuestColorDescription) end,
                        setFunc = function(r,g,b,a) LUIE.ChatAnnouncements.SV.QuestColorDescription={r,g,b} LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = { r=LUIE.ChatAnnouncements.D.QuestColorDescription[1], g=LUIE.ChatAnnouncements.D.QuestColorDescription[2], b=LUIE.ChatAnnouncements.D.QuestColorDescription[3] },
                    },
                    
                    
                
                
                    {
                        -- Show Quest Share
                        type = "checkbox",
                        name = strformat("<<1>>", GetString(SI_LUIE_LAM_CA_QUEST_SHOWQUESTSHARE)),
                        tooltip = GetString(SI_LUIE_LAM_CA_QUEST_SHOWQUESTSHARE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestShare end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestShare = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestShare,                   
                    },
                    
                    {
                        -- Show Quest Icon
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_QUEST_SHOWQUESTICON)),
                        tooltip = GetString(SI_LUIE_LAM_CA_QUEST_SHOWQUESTICON_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestIcon end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestIcon = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.Quest) end,
                        default = LUIE.ChatAnnouncements.D.QuestIcon,
                    },
                    {
                        -- Show Quest Log Full
                        type = "checkbox",
                        name = strformat("<<1>>", GetString(SI_LUIE_LAM_CA_QUEST_LOGFULL)),
                        tooltip = GetString(SI_LUIE_LAM_CA_QUEST_LOGFULL_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestLogFull end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestLogFull = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestLogFull,                   
                    },
                    {
                        -- Show Quest Long String
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_QUEST_SHOWQUESTLONG)),
                        tooltip = GetString(SI_LUIE_LAM_CA_QUEST_SHOWQUESTLONG_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestLong end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestLong = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.Quest) end,
                        default = LUIE.ChatAnnouncements.D.QuestLong,                   
                    },
                    {
                        -- Show POI Completed Long String
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_QUEST_SHOWQUESTOBJECTIVELONG)),
                        tooltip = GetString(SI_LUIE_LAM_CA_QUEST_SHOWQUESTOBJECTIVELONG_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestLocLong end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestLocLong = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.QuestPOICompleted) end,
                        default = LUIE.ChatAnnouncements.D.QuestLocLong,                   
                    },
                    
                    {
                        -- Show Location Discovery (CA)
                        type = "checkbox",
                        name = "Show Location Discovery (Chat Announcement)",
                        tooltip = "Display a Chat Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestLocDiscoveryCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestLocDiscoveryCA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestLocDiscoveryCA,                   
                    },
                    {
                        -- Show Location Discovery (CSA)
                        type = "checkbox",
                        name = "Show Location Discovery (Center Screen Announcement)",
                        tooltip = "Display a Center Screen Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestLocDiscoveryCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestLocDiscoveryCSA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestLocDiscoveryCSA,                   
                    },
                    {
                        -- Show Location Discovery (Alert)
                        type = "checkbox",
                        name = "Show Location Discovery (Alert)",
                        tooltip = "Display an Alert for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestLocDiscoveryAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestLocDiscoveryAlert = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestLocDiscoveryAlert,                   
                    },
                    
                    {
                        -- Show Location Objective (CA)
                        type = "checkbox",
                        name = "Show Location Objective (Chat Announcement)",
                        tooltip = "Display a Chat Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestLocObjectiveCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestLocObjectiveCA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestLocObjectiveCA,                   
                    },
                    {
                        -- Show Location Objective (CSA)
                        type = "checkbox",
                        name = "Show Location Objective(Center Screen Announcement)",
                        tooltip = "Display a Center Screen Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestLocObjectiveCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestLocObjectiveCSA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestLocObjectiveCSA,                   
                    },
                    {
                        -- Show Location Objective (Alert)
                        type = "checkbox",
                        name = "Show Location Objective (Alert)",
                        tooltip = "Display an Alert for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestLocObjectiveAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestLocObjectiveAlert = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestLocObjectiveAlert,                   
                    },
                    
                    {
                        -- Show Location Complete (CA)
                        type = "checkbox",
                        name = "Show Location Completion (Chat Announcement)",
                        tooltip = "Display a Chat Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestLocCompleteCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestLocCompleteCA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestLocCompleteCA,                   
                    },
                    {
                        -- Show Location Complete (CSA)
                        type = "checkbox",
                        name = "Show Location Completion (Center Screen Announcement)",
                        tooltip = "Display a Center Screen Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestLocCompleteCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestLocCompleteCSA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestLocCompleteCSA,                   
                    },
                    {
                        -- Show Location Complete (Alert)
                        type = "checkbox",
                        name = "Show Location Completion (Alert)",
                        tooltip = "Display an Alert for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestLocCompleteAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestLocCompleteAlert = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestLocCompleteAlert,                   
                    },
                    
                    {
                        -- Show Quest Accept (CA)
                        type = "checkbox",
                        name = "Show Quest Accept (Chat Announcement)",
                        tooltip = "Display a Chat Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestAcceptCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestAcceptCA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestAcceptCA,                   
                    },
                    {
                        -- Show Quest Accept (CSA)
                        type = "checkbox",
                        name = "Show Quest Accept (Center Screen Announcement)",
                        tooltip = "Display a Center Screen Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestAcceptCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestAcceptCSA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestAcceptCSA,                   
                    },
                    {
                        -- Show Quest Accept (Alert)
                        type = "checkbox",
                        name = "Show Quest Accept (Alert)",
                        tooltip = "Display an Alert for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestAcceptAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestAcceptAlert = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestAcceptAlert,                   
                    },
                    
                    {
                        -- Show Quest Complete (CA)
                        type = "checkbox",
                        name = "Show Quest Complete (Chat Announcement)",
                        tooltip = "Display a Chat Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestCompleteCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestCompleteCA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestCompleteCA,                   
                    },
                    {
                        -- Show Quest Complete (CSA)
                        type = "checkbox",
                        name = "Show Quest Complete (Center Screen Announcement)",
                        tooltip = "Display a Center Screen Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestCompleteCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestCompleteCSA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestCompleteCSA,                   
                    },
                    {
                        -- Show Quest Complete (Alert)
                        type = "checkbox",
                        name = "Show Quest Complete (Alert)",
                        tooltip = "Display an Alert for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestCompleteAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestCompleteAlert = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestCompleteAlert,                   
                    },
                    
                    {
                        -- Show Quest Abandon (CA)
                        type = "checkbox",
                        name = "Show Quest Abandon (Chat Announcement)",
                        tooltip = "Display a Chat Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestAbandonCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestAbandonCA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestAbandonCA,                   
                    },
                    {
                        -- Show Quest Abandon (CSA)
                        type = "checkbox",
                        name = "Show Quest Abandon (Center Screen Announcement)",
                        tooltip = "Display a Center Screen Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestAbandonCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestAbandonCSA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestAbandonCSA,                   
                    },
                    {
                        -- Show Quest Abandon (Alert)
                        type = "checkbox",
                        name = "Show Quest Abandon (Alert)",
                        tooltip = "Display an Alert for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestAbandonAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestAbandonAlert = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestAbandonAlert,                   
                    },
                    
                    {
                        -- Show Quest Failure (CA)
                        type = "checkbox",
                        name = "Show Quest Failure (Chat Announcement)",
                        tooltip = "Display a Chat Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestFailCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestFailCA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestFailCA,                   
                    },
                    {
                        -- Show Quest Failure (CSA)
                        type = "checkbox",
                        name = "Show Quest Failure (Center Screen Announcement)",
                        tooltip = "Display a Center Screen Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestFailCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestFailCSA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestFailCSA,                   
                    },
                    {
                        -- Show Quest Failure (Alert)
                        type = "checkbox",
                        name = "Show Quest Failure (Alert)",
                        tooltip = "Display an Alert for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestFailAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestFailAlert = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestFailAlert,                   
                    },
                    
                    
                    {
                        -- Show Quest Objective Updates (CA)
                        type = "checkbox",
                        name = "Show Quest Objective Complete (Chat Announcement)",
                        tooltip = "Display a Chat Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestObjCompleteCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestObjCompleteCA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestObjCompleteCA,                   
                    },
                    {
                        -- Show Quest Objective Updates (CSA)
                        type = "checkbox",
                        name = "Show Quest Objective Complete (Center Screen Announcement)",
                        tooltip = "Display a Center Screen Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestObjCompleteCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestObjCompleteCSA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestObjCompleteCSA,                   
                    },
                    {
                        -- Show Quest Objective Updates (Alert)
                        type = "checkbox",
                        name = "Show Quest Objective Complete (Alert)",
                        tooltip = "Display an Alert for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestObjCompleteAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestObjCompleteAlert = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestObjCompleteAlert,                   
                    },
                    
                    {
                        -- Show Quest Objective Updates (CA)
                        type = "checkbox",
                        name = "Show Quest Objective Updates (Chat Announcement)",
                        tooltip = "Display a Chat Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestObjUpdateCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestObjUpdateCA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestObjUpdateCA,                   
                    },
                    {
                        -- Show Quest Objective Updates (CSA)
                        type = "checkbox",
                        name = "Show Quest Objective Updates (Center Screen Announcement)",
                        tooltip = "Display a Center Screen Announcement for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestObjUpdateCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestObjUpdateCSA = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestObjUpdateCSA,                   
                    },
                    {
                        -- Show Quest Objective Updates (Alert)
                        type = "checkbox",
                        name = "Show Quest Objective Updates (Alert)",
                        tooltip = "Display an Alert for FILLINHERE",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.QuestObjUpdateAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.QuestObjUpdateAlert = value LUIE.ChatAnnouncements.RegisterQuestEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.QuestObjUpdateAlert,                   
                    },
                },
            }
                
                -- CA Social Announcements Submenu
                optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
                type = "submenu",
                name = GetString(SI_LUIE_LAM_CA_SOCIAL_HEADER),
                reference = "Chat_Announcements_Options_Social_Announcements_Submenu",
                controls = {
                ---
                    {
                        -- Show Friend/Ignore Events
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWSOCIAL),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWSOCIAL_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscSocial end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscSocial = value LUIE.ChatAnnouncements.RegisterSocialEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.MiscSocial,
                    },
                    {
                        -- Show Guild Events
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWGUILD),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWGUILD_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscGuild end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscGuild = value LUIE.ChatAnnouncements.RegisterGuildEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.MiscGuild,
                    },
                    {
                        -- Show Guild Events Icons
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_MISC_SHOWGUILDICONS)),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWGUILDICONS_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscGuildIcon end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscGuildIcon = value end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.MiscGuild and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.MiscGuildIcon,
                    },
                    {
                        -- Show Guild Rank Events
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_MISC_SHOWGUILDRANK)),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWGUILDRANK_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscGuildRank end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscGuildRank = value LUIE.ChatAnnouncements.RegisterGuildEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.MiscGuild and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.MiscGuildRank,
                    },
                    {
                        -- Show Guild Rank Events Display Options
                        type = "dropdown",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_MISC_SHOWGUILDRANKDISPLAY)),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWGUILDRANKDISPLAY_TP),
                        choices = guildRankDisplayOptions,
                        getFunc = function() return guildRankDisplayOptions[LUIE.ChatAnnouncements.SV.guildRankDisplayOptions] end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.guildRankDisplayOptions = guildRankDisplayOptionsKeys[value] LUIE.ChatAnnouncements.RegisterGuildEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.MiscGuild and LUIE.ChatAnnouncements.SV.MiscGuildRank and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = guildRankDisplayOptions[1],
                    },
                    {
                        -- Show Guild MOTD Events
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_MISC_SHOWGUILDMOTD)),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWGUILDMOTD_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscGuildMOTD end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscGuildMOTD = value LUIE.ChatAnnouncements.RegisterGuildEvents() end,
                        width = "full",
                        disabled = function() return not (LUIE.ChatAnnouncements.SV.MiscGuild and LUIE.SV.ChatAnnouncements_Enable) end,
                        default = LUIE.ChatAnnouncements.D.MiscGuildMOTD,
                    },
                
                    {
                        -- Show Trade Events
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWTRADE),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWTRADE),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscTrade end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscTrade = value LUIE.ChatAnnouncements.RegisterLootEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.MiscTrade,
                    },
                    {
                        -- Show Duel Events
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_DUEL),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_DUEL_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscDuel end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscDuel = value LUIE.ChatAnnouncements.RegisterDuelEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.MiscDuel,
                    },
                    {
                        -- Duel Start Options
                        type = "dropdown",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_MISC_DUELSTART)),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_DUELSTART_TP),
                        choices = duelStartOptions,
                        getFunc = function() return duelStartOptions[LUIE.ChatAnnouncements.SV.MiscDuelStartOptions] end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscDuelStartOptions = duelStartOptionsKeys[value] end,
                        width = "full",
                        default = duelStartOptions[1],
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.MiscDuel) end,
                    },
                    {
                        -- Show Pledge of Mara Events
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_MARA),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_MARA_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscMara end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscMara = value LUIE.ChatAnnouncements.RegisterMaraEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.MiscMara,
                    },
                ---
                },
            }
                -- CA Group Announcements Submenu
                optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
                type = "submenu",
                name = GetString(SI_LUIE_LAM_CA_GROUP_HEADER),
                reference = "Chat_Announcements_Options_Group_Announcements_Submenu",
                controls = {
                    {
                        -- Show Group Events
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUP),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUP_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.GroupChatMsg end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.GroupChatMsg = value LUIE.ChatAnnouncements.RegisterGroupEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.GroupChatMsg,
                    },
                    {
                        -- Show Group Vote
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPVOTE),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPVOTE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.GroupVote end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.GroupVote = value LUIE.ChatAnnouncements.RegisterGroupEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.GroupVote,
                    },
                    {
                        -- Show LFG Status Events
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPLFG),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPLFG_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.GroupLFG end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.GroupLFG = value LUIE.ChatAnnouncements.RegisterGroupEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.GroupLFG,
                    },
                    {
                        -- Show LFG Activity Completed
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPLFGCOMPLETE),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPLFGCOMPLETE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.GroupLFGComplete end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.GroupLFGComplete = value LUIE.ChatAnnouncements.RegisterGroupEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.GroupLFGComplete,
                    },
                    {
                        -- Show Raid Notifications
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPRAID),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPRAID_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.GroupRaid end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.GroupRaid = value LUIE.ChatAnnouncements.RegisterGroupEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.GroupRaid,
                    },
                    {
                        -- Show Raid Score Updates
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPRAIDSCORE),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPRAIDSCORE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.GroupRaidScore end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.GroupRaidScore = value LUIE.ChatAnnouncements.RegisterGroupEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.GroupRaidScore,
                    },
                    {
                        -- Show Raid High Score
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPRAIDBESTSCORE),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPRAIDBESTSCORE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.GroupRaidBestScore end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.GroupRaidBestScore = value LUIE.ChatAnnouncements.RegisterGroupEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.GroupRaidBestScore,
                    },
                    {
                        -- Show Raid Revive Counter Changes
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPRAIDREVIVE),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWGROUPRAIDREVIVE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.GroupRaidRevive end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.GroupRaidRevive = value LUIE.ChatAnnouncements.RegisterGroupEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.GroupRaidRevive,
                    },
                },
            }
                -- CA Miscellaneous Announcements Submenu
                optionsDataChatAnnouncements[#optionsDataChatAnnouncements +1] = {
                type = "submenu",
                name = GetString(SI_LUIE_LAM_CA_MISC_HEADER),
                reference = "Chat_Announcements_Options_Misc_Announcements_Submenu",
                controls = {
                    {
                        -- Show Mail Events
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWMAIL),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWMAIL_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscMail end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscMail = value LUIE.ChatAnnouncements.RegisterMailEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.MiscMail,
                    },
                    
                    {
                        -- Mount Upgrade Message Color
                        type = "colorpicker",
                        name = "Bag/Bank Upgrade Message Color",
                        tooltip = "TODO",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.StorageRidingColor) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.StorageRidingColor = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.StorageRidingColor[1], g=LUIE.ChatAnnouncements.D.StorageRidingColor[2], b=LUIE.ChatAnnouncements.D.StorageRidingColor[3]}
                    },
                    {
                        -- Show Mount Upgrade (CA)
                        type = "checkbox",
                        name = "Show Mount Upgrade CA",
                        tooltip = "Show Mount Upgrade",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.StorageRidingCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.StorageRidingCA = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.StorageRidingCA,
                    },
                    {
                        -- Show Mount Upgrade (CSA)
                        type = "checkbox",
                        name = "Show Mount Upgrade CSA",
                        tooltip = "Show Mount Upgrade",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.StorageRidingCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.StorageRidingCSA = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.StorageRidingCSA,
                    },
                    {
                        -- Show Mount Upgrade (Alert)
                        type = "checkbox",
                        name = "Show Mount Upgrade Alert",
                        tooltip = "Show Mount Upgrade",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.StorageRidingAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.StorageRidingAlert = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.StorageRidingAlert,
                    },
                    
                    {
                        -- Bag/Bank Upgrade Message Color
                        type = "colorpicker",
                        name = "Bag/Bank Upgrade Message Color",
                        tooltip = "TODO",
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.StorageBagColor) end,
                        setFunc = function(r, g, b, a) LUIE.ChatAnnouncements.SV.StorageBagColor = { r, g, b, a } LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = {r=LUIE.ChatAnnouncements.D.StorageBagColor[1], g=LUIE.ChatAnnouncements.D.StorageBagColor[2], b=LUIE.ChatAnnouncements.D.StorageBagColor[3]}
                    },
                    {
                        -- Show Bag/Bank Upgrade (CA)
                        type = "checkbox",
                        name = "Show Bag/Bank Upgrade CA",
                        tooltip = "Show Bag/Bank Upgrade",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.StorageBagCA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.StorageBagCA = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.StorageBagCA,
                    },
                    {
                        -- Show Bag/Bank Upgrade (CSA)
                        type = "checkbox",
                        name = "Show Bag/Bank Upgrade CSA",
                        tooltip = "Show Bag/Bank Upgrade",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.StorageBagCSA end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.StorageBagCSA = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.StorageBagCSA,
                    },
                    {
                        -- Show Bag/Bank Upgrade (Alert)
                        type = "checkbox",
                        name = "Show Bag/Bank Upgrade Alert",
                        tooltip = "Show Bag/Bank Upgrade",
                        getFunc = function() return LUIE.ChatAnnouncements.SV.StorageBagAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.StorageBagAlert = value end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.StorageBagAlert,
                    },

                    {
                        -- Show Lockpick Events
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWLOCKPICK),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWLOCKPICK_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscLockpick end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscLockpick = value LUIE.ChatAnnouncements.RegisterLootEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.MiscLockpick,
                    },
                    {
                        -- Show Justice Events
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWJUSTICE),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWJUSTICE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscConfiscate end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscConfiscate = value LUIE.ChatAnnouncements.RegisterLootEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.MiscConfiscate,
                    },
                    {
                        -- Show Disguise Events
                        type = "checkbox",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWDISGUISE),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWDISGUISE_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscDisguise end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscDisguise = value LUIE.ChatAnnouncements.RegisterDisguiseEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.MiscDisguise,
                    },
                    {
                        -- Disguise Event Type
                        type = "dropdown",
                        name = GetString(SI_LUIE_LAM_CA_MISC_SHOWDISGUISEOPTION),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWDISGUISEOPTION_TP),
                        choices = disguiseNotifyOptions,
                        getFunc = function() return disguiseNotifyOptions[LUIE.ChatAnnouncements.SV.MiscDisguiseOption] end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscDisguiseOption = disguiseNotifyOptionsKeys[value] end,
                        width = "full",
                        default = disguiseNotifyOptions[3],
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.MiscDisguise) end,
                    },
                    
                    {
                        -- Show Disguise Alerts
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_MISC_SHOWDISGUISEALERT)),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWDISGUISEALERT_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscDisguiseAlert end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscDisguiseAlert = value end,
                        width = "full",
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.MiscDisguise) end,
                        default = LUIE.ChatAnnouncements.D.MiscDisguiseAlert,
                    },
                    {
                        -- Disguise Alert Color
                        type = "colorpicker",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_MISC_SHOWDISGUISEALERTCOLOR)),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWDISGUISEALERTCOLOR_TP),
                        getFunc = function() return unpack(LUIE.ChatAnnouncements.SV.DisguiseAlertColor) end,
                        setFunc = function(r,g,b,a) LUIE.ChatAnnouncements.SV.DisguiseAlertColor={r,g,b} LUIE.ChatAnnouncements.RegisterColorEvents() end,
                        width = "full",
                        default = { r=LUIE.ChatAnnouncements.D.DisguiseAlertColor[1], g=LUIE.ChatAnnouncements.D.DisguiseAlertColor[2], b=LUIE.ChatAnnouncements.D.DisguiseAlertColor[3] },
                        disabled = function() return not (LUIE.SV.ChatAnnouncements_Enable and LUIE.ChatAnnouncements.SV.MiscDisguise and LUIE.ChatAnnouncements.SV.MiscDisguiseAlert) end,
                    },
                    {
                        -- Show /Stuck Alerts
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_MISC_SHOWSTUCK)),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_SHOWSTUCK_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.MiscStuck end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.MiscStuck = value LUIE.ChatAnnouncements.RegisterStuckEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.MiscStuck,
                    },
                    {
                         -- Show Inventory Full
                        type = "checkbox",
                        name = strformat("\t\t\t\t<<1>>", GetString(SI_LUIE_LAM_CA_MISC_INVENTORYFULL)),
                        tooltip = GetString(SI_LUIE_LAM_CA_MISC_INVENTORYFULL_TP),
                        getFunc = function() return LUIE.ChatAnnouncements.SV.ShowLootFail end,
                        setFunc = function(value) LUIE.ChatAnnouncements.SV.ShowLootFail = value LUIE.ChatAnnouncements.RegisterLootEvents() end,
                        width = "full",
                        disabled = function() return not LUIE.SV.ChatAnnouncements_Enable end,
                        default = LUIE.ChatAnnouncements.D.ShowLootFail,                   
                    },
                },
            }
 
    -- Enable Unit Frames module
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_ENABLE),
        getFunc = function() return LUIE.SV.UnitFrames_Enabled end,
        setFunc = function(value) LUIE.SV.UnitFrames_Enabled = value end,
        width = "full",
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        default = LUIE.D.UnitFrames_Enabled,
    }
    -- Unit Frames module description
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "description",
        text = GetString(SI_LUIE_LAM_UF_DESCRIPTION),
    }
    -- ReloadUI Button
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "button",
        name = "Reload UI",
        tooltip = GetString(SI_LUIE_LAM_RELOADUI),
        func = function() ReloadUI("ingame") end,
        width = "full",
    }
    -- Shorten numbers
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_SHORTNUMBERS),
        tooltip = GetString(SI_LUIE_LAM_UF_SHORTNUMBERS_TP),
        getFunc = function() return LUIE.UnitFrames.SV.ShortenNumbers end,
        setFunc = function(value) LUIE.UnitFrames.SV.ShortenNumbers = value end,
        width = "full",
        default = LUIE.UnitFrames.D.ShortenNumbers,
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Default Frames header
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "header",
        name = GetString(SI_LUIE_LAM_UF_DFRAMES_HEADER),
        width = "full",
    }
    -- Default PLAYER frame
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_UF_DFRAMES_PLAYER),
        choices = LUIE.UnitFrames.GetDefaultFramesOptions('Player'),
        getFunc = function() return LUIE.UnitFrames.GetDefaultFramesSetting('Player') end,
        setFunc = function(value) LUIE.UnitFrames.SetDefaultFramesSetting('Player', value) end,
        width = "full",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        default = LUIE.UnitFrames.GetDefaultFramesSetting('Player', true),
    }
    -- Default TARGET frame
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_UF_DFRAMES_TARGET),
        choices = LUIE.UnitFrames.GetDefaultFramesOptions('Target'),
        getFunc = function() return LUIE.UnitFrames.GetDefaultFramesSetting('Target') end,
        setFunc = function(value) LUIE.UnitFrames.SetDefaultFramesSetting('Target', value) end,
        width = "full",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        default = LUIE.UnitFrames.GetDefaultFramesSetting('Target', true),
    }
    -- Default small GROUP frame
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_UF_DFRAMES_GROUPSMALL),
        choices = LUIE.UnitFrames.GetDefaultFramesOptions('Group'),
        getFunc = function() return LUIE.UnitFrames.GetDefaultFramesSetting('Group') end,
        setFunc = function(value) LUIE.UnitFrames.SetDefaultFramesSetting('Group', value) end,
        width = "full",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        default = LUIE.UnitFrames.GetDefaultFramesSetting('Group', true),
    }
    -- Reposition default player bars
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_DFRAMES_REPOSIT),
        tooltip = GetString(SI_LUIE_LAM_UF_DFRAMES_REPOSIT_TP),
        getFunc = function() return LUIE.UnitFrames.SV.RepositionFrames end,
        setFunc = function(value) LUIE.UnitFrames.SV.RepositionFrames = value end,
        width = "full",
        default = LUIE.UnitFrames.D.RepositionFrames,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Format label text
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_UF_DFRAMES_LABEL),
        tooltip = GetString(SI_LUIE_LAM_UF_DFRAMES_LABEL_TP),
        choices = formatOptions,
        getFunc = function() return LUIE.UnitFrames.SV.Format end,
        setFunc = function(var) LUIE.UnitFrames.SV.Format = var end,
        width = "full",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        default = LUIE.UnitFrames.D.Format,
    }
    -- Out-of-Combat bars transparency
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_DFRAMES_OOCTRANS),
        tooltip = GetString(SI_LUIE_LAM_UF_DFRAMES_OOCTRANS_TP),
        min = 0, max = 100, step = 5,
        getFunc = function() return LUIE.UnitFrames.SV.DefaultOocTransparency end,
        setFunc = function(value) LUIE.UnitFrames.SetDefaultFramesTransparency(value, nil) end,
        width = "full",
        default = LUIE.UnitFrames.D.DefaultOocTransparency,
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- In-Combat bars transparency
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_DFRAMES_INCTRANS),
        tooltip = GetString(SI_LUIE_LAM_UF_DFRAMES_INCTRANS_TP),
        min = 0, max = 100, step = 5,
        getFunc = function() return LUIE.UnitFrames.SV.DefaultIncTransparency end,
        setFunc = function(value) LUIE.UnitFrames.SetDefaultFramesTransparency(nil, value) end,
        width = "full",
        default = LUIE.UnitFrames.D.DefaultIncTransparency,
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- DefaultFrames Font
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_FONT),
        tooltip = GetString(SI_LUIE_LAM_UF_DFRAMES_FONT_TP),
        choices = FontsList,
        sort = "name-up",
        getFunc = function() return LUIE.UnitFrames.SV.DefaultFontFace end,
        setFunc = function(var) LUIE.UnitFrames.SV.DefaultFontFace = var LUIE.UnitFrames.DefaultFramesApplyFont() end,
        width = "full",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        default = LUIE.UnitFrames.D.DefaultFontFace,
    }
    -- DefaultFrames Font Size
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_FONT_SIZE),
        tooltip = GetString(SI_LUIE_LAM_UF_DFRAMES_FONT_SIZE_TP),
        min = 10, max = 30, step = 1,
        getFunc = function() return LUIE.UnitFrames.SV.DefaultFontSize end,
        setFunc = function(value) LUIE.UnitFrames.SV.DefaultFontSize = value LUIE.UnitFrames.DefaultFramesApplyFont() end,
        width = "full",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        default = LUIE.UnitFrames.D.DefaultFontSize,
    }
    -- DefaultFrames Font Style
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_FONT_STYLE),
        choices = { "normal", "outline", "shadow", "soft-shadow-thick", "soft-shadow-thin", "thick-outline" },
        sort = "name-up",
        getFunc = function() return LUIE.UnitFrames.SV.DefaultFontStyle end,
        setFunc = function(var) LUIE.UnitFrames.SV.DefaultFontStyle = var LUIE.UnitFrames.DefaultFramesApplyFont() end,
        width = "full",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        default = LUIE.UnitFrames.D.DefaultFontStyle,
    }
    -- Color of text labels
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "colorpicker",
        name = GetString(SI_LUIE_LAM_UF_DFRAMES_LABEL_COLOR),
        getFunc = function() return unpack(LUIE.UnitFrames.SV.DefaultTextColour) end,
        setFunc = function(r,g,b,a) LUIE.UnitFrames.SV.DefaultTextColour={r,g,b} LUIE.UnitFrames.DefaultFramesApplyColour() end,
        width = "full",
        default = { r=LUIE.UnitFrames.D.DefaultTextColour[1], g=LUIE.UnitFrames.D.DefaultTextColour[2], b=LUIE.UnitFrames.D.DefaultTextColour[3] },
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Target class icon
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_TARGET_ICON_CLASS),
        tooltip = GetString(SI_LUIE_LAM_UF_TARGET_ICON_CLASS_TP),
        getFunc = function() return LUIE.UnitFrames.SV.TargetShowClass end,
        setFunc = function(value) LUIE.UnitFrames.SV.TargetShowClass = value end,
        width = "full",
        default = LUIE.UnitFrames.D.TargetShowClass,
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Target ignore/friend/guild icon
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_TARGET_ICON_GFI),
        tooltip = GetString(SI_LUIE_LAM_UF_TARGET_ICON_GFI_TP),
        getFunc = function() return LUIE.UnitFrames.SV.TargetShowFriend end,
        setFunc = function(value) LUIE.UnitFrames.SV.TargetShowFriend = value end,
        width = "full",
        default = LUIE.UnitFrames.D.TargetShowFriend,
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Colour target name by reaction
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_TARGET_COLOR_REACTION),
        tooltip = GetString(SI_LUIE_LAM_UF_TARGET_COLOR_REACTION_TP),
        getFunc = function() return LUIE.UnitFrames.SV.TargetColourByReaction end,
        setFunc = LUIE.UnitFrames.TargetColourByReaction,
        width = "full",
        default = LUIE.UnitFrames.D.TargetColourByReaction,
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Custom Unit Frames Header
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "header",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_HEADER),
        width = "full",
    }
    -- Custom Unit Frames Unlock
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_UNLOCK),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMES_UNLOCK_TP),
        getFunc = function() return LUIE.UnitFrames.CustomFramesMovingState end,
        setFunc = LUIE.UnitFrames.CustomFramesSetMovingState,
        width = "half",
        default = false,
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        resetFunc = LUIE.UnitFrames.CustomFramesResetPosition,
    }
    -- Custom Unit Frames Reset position
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "button",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_RESETPOSIT),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMES_RESETPOSIT_TP),
        func = LUIE.UnitFrames.CustomFramesResetPosition,
        width = "half",
    }
    -- Custom Unit Frames format left label
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_FORMATTXT_LEFT),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMES_FORMATTXT_LEFT_TP),
        choices = formatOptions,
        getFunc = function() return LUIE.UnitFrames.SV.CustomFormatOne end,
        setFunc = function(var) LUIE.UnitFrames.SV.CustomFormatOne = var LUIE.UnitFrames.CustomFramesFormatLabels(true) end,
        width = "full",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        default = LUIE.UnitFrames.D.CustomFormatOne,
    }
    -- Custom Unit Frames format right label
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_FORMATTXT_RIGHT),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMES_FORMATTXT_RIGHT_TP),
        choices = formatOptions,
        getFunc = function() return LUIE.UnitFrames.SV.CustomFormatTwo end,
        setFunc = function(var) LUIE.UnitFrames.SV.CustomFormatTwo = var LUIE.UnitFrames.CustomFramesFormatLabels(true) end,
        width = "full",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        default = LUIE.UnitFrames.D.CustomFormatTwo,
    }
    -- Custom Unit Frames Font
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_FONT),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMES_FONT_TP),
        choices = FontsList,
        sort = "name-up",
        getFunc = function() return LUIE.UnitFrames.SV.CustomFontFace end,
        setFunc = function(var) LUIE.UnitFrames.SV.CustomFontFace = var LUIE.UnitFrames.CustomFramesApplyFont() end,
        width = "full",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        default = LUIE.UnitFrames.D.CustomFontFace,
    }
    -- Custom Unit Frames Font size labels
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_FONT_SIZE_LABELS),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMES_FONT_SIZE_LABELS_TP),
        min = 10, max = 30, step = 1,
        getFunc = function() return LUIE.UnitFrames.SV.CustomFontOther end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomFontOther = value LUIE.UnitFrames.CustomFramesApplyFont() end,
        width = "half",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        default = LUIE.UnitFrames.D.CustomFontOther,
    }
    -- Custom Unit Frames Font size bars
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_FONT_SIZE_BARS),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMES_FONT_SIZE_BARS_TP),
        min = 10, max = 30, step = 1,
        getFunc = function() return LUIE.UnitFrames.SV.CustomFontBars end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomFontBars = value LUIE.UnitFrames.CustomFramesApplyFont() end,
        width = "half",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        default = LUIE.UnitFrames.D.CustomFontBars,
    }
    -- Custom Unit Frames Font style
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_FONT_STYLE),
        choices = { "normal", "outline", "shadow", "soft-shadow-thick", "soft-shadow-thin", "thick-outline" },
        sort = "name-up",
        getFunc = function() return LUIE.UnitFrames.SV.CustomFontStyle end,
        setFunc = function(var) LUIE.UnitFrames.SV.CustomFontStyle = var LUIE.UnitFrames.CustomFramesApplyFont() end,
        width = "full",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        default = LUIE.UnitFrames.D.CustomFontStyle,
    }
    -- Custom Unit Frames Texture
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_TEXTURE),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMES_TEXTURE_TP),
        choices = StatusbarTexturesList,
        sort = "name-up",
        getFunc = function() return LUIE.UnitFrames.SV.CustomTexture end,
        setFunc = function(var) LUIE.UnitFrames.SV.CustomTexture = var LUIE.UnitFrames.CustomFramesApplyTexture() end,
        width = "full",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        default = LUIE.UnitFrames.D.CustomTexture,
    }
    -- Custom Unit Frames Display HoT / DoT Animations
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_HOTDOT),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMES_HOTDOT_TP),
        getFunc = function() return LUIE.UnitFrames.SV.CustomEnableRegen end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomEnableRegen = value end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomEnableRegen,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not LUIE.UnitFrames.SV.CustomEnableRegen end,
    }
    -- Custom Unit Frames Health Bar Colour
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "colorpicker",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_COLOR_HEALTH),
        getFunc = function() return unpack(LUIE.UnitFrames.SV.CustomColourHealth) end,
        setFunc = function(r,g,b,a) LUIE.UnitFrames.SV.CustomColourHealth={r,g,b} LUIE.UnitFrames.CustomFramesApplyColours(true) end,
        width = "full",
        default = { r=LUIE.UnitFrames.D.CustomColourHealth[1], g=LUIE.UnitFrames.D.CustomColourHealth[2], b=LUIE.UnitFrames.D.CustomColourHealth[3] },
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Custom Unit Frames Shield Bar Colour
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "colorpicker",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_COLOR_SHIELD),
        getFunc = function() return LUIE.UnitFrames.SV.CustomColourShield[1], LUIE.UnitFrames.SV.CustomColourShield[2], LUIE.UnitFrames.SV.CustomColourShield[3]  end,
        setFunc = function(r,g,b,a) LUIE.UnitFrames.SV.CustomColourShield={r,g,b} LUIE.UnitFrames.CustomFramesApplyColours(true) end,
        width = "full",
        default = { r=LUIE.UnitFrames.D.CustomColourShield[1], g=LUIE.UnitFrames.D.CustomColourShield[2], b=LUIE.UnitFrames.D.CustomColourShield[3] },
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Custom Unit Frames Magicka Bar Colour
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "colorpicker",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_COLOR_MAGICKA),
        getFunc = function() return unpack(LUIE.UnitFrames.SV.CustomColourMagicka) end,
        setFunc = function(r,g,b,a) LUIE.UnitFrames.SV.CustomColourMagicka={r,g,b} LUIE.UnitFrames.CustomFramesApplyColours(true) end,
        width = "full",
        default = { r=LUIE.UnitFrames.D.CustomColourMagicka[1], g=LUIE.UnitFrames.D.CustomColourMagicka[2], b=LUIE.UnitFrames.D.CustomColourMagicka[3] },
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Custom Unit Frames Stamina Bar Colour
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "colorpicker",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_COLOR_STAMINA),
        getFunc = function() return unpack(LUIE.UnitFrames.SV.CustomColourStamina) end,
        setFunc = function(r,g,b,a) LUIE.UnitFrames.SV.CustomColourStamina={r,g,b} LUIE.UnitFrames.CustomFramesApplyColours(true) end,
        width = "full",
        default = { r=LUIE.UnitFrames.D.CustomColourStamina[1], g=LUIE.UnitFrames.D.CustomColourStamina[2], b=LUIE.UnitFrames.D.CustomColourStamina[3] },
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Custom Unit Frames DPS Role Colour
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "colorpicker",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_COLOR_DPS),
        getFunc = function() return unpack(LUIE.UnitFrames.SV.CustomColourDPS) end,
        setFunc = function(r,g,b,a) LUIE.UnitFrames.SV.CustomColourDPS={r,g,b} LUIE.UnitFrames.CustomFramesApplyColours(true) end,
        width = "full",
        default = { r=LUIE.UnitFrames.D.CustomColourDPS[1], g=LUIE.UnitFrames.D.CustomColourDPS[2], b=LUIE.UnitFrames.D.CustomColourDPS[3] },
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and (LUIE.UnitFrames.SV.CustomFramesGroup or LUIE.UnitFrames.SV.CustomFramesRaid) and (LUIE.UnitFrames.SV.ColorRoleGroup or LUIE.UnitFrames.SV.ColorRoleRaid) ) end,
    }
    -- Custom Unit Frames Healer Role Colour
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "colorpicker",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_COLOR_HEALER),
        getFunc = function() return unpack(LUIE.UnitFrames.SV.CustomColourHealer) end,
        setFunc = function(r,g,b,a) LUIE.UnitFrames.SV.CustomColourHealer={r,g,b} LUIE.UnitFrames.CustomFramesApplyColours(true) end,
        width = "full",
        default = { r=LUIE.UnitFrames.D.CustomColourHealer[1], g=LUIE.UnitFrames.D.CustomColourHealer[2], b=LUIE.UnitFrames.D.CustomColourHealer[3] },
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and (LUIE.UnitFrames.SV.CustomFramesGroup or LUIE.UnitFrames.SV.CustomFramesRaid) and (LUIE.UnitFrames.SV.ColorRoleGroup or LUIE.UnitFrames.SV.ColorRoleRaid) ) end,
    }
     -- Custom Unit Frames Tank Role Colour
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "colorpicker",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_COLOR_TANK),
        getFunc = function() return unpack(LUIE.UnitFrames.SV.CustomColourTank) end,
        setFunc = function(r,g,b,a) LUIE.UnitFrames.SV.CustomColourTank={r,g,b} LUIE.UnitFrames.CustomFramesApplyColours(true) end,
        width = "full",
        default = { r=LUIE.UnitFrames.D.CustomColourTank[1], g=LUIE.UnitFrames.D.CustomColourTank[2], b=LUIE.UnitFrames.D.CustomColourTank[3] },
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and (LUIE.UnitFrames.SV.CustomFramesGroup or LUIE.UnitFrames.SV.CustomFramesRaid) and (LUIE.UnitFrames.SV.ColorRoleGroup or LUIE.UnitFrames.SV.ColorRoleRaid) ) end,
    }
    -- Custom Unit Frames Separate Shield Bar
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_SHIELD_SEPERATE),
        tooltip = strformat(GetString(SI_LUIE_LAM_UF_CFRAMES_SHIELD_SEPERATE_TP), GetString(SI_LUIE_LAM_UF_CFRAMES_SHIELD_SEPERATE_NOTE)),
        getFunc = function() return LUIE.UnitFrames.SV.CustomShieldBarSeparate end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomShieldBarSeparate = value end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomShieldBarSeparate,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end
    }
    -- Custom Unit Frames Separate Shield Bar Height
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_SHIELD_SEPERATE_HEIGHT),
        min = 4, max = 12, step = 1,
        getFunc = function() return LUIE.UnitFrames.SV.CustomShieldBarHeight end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomShieldBarHeight = value LUIE.UnitFrames.CustomFramesApplyLayoutPlayer() LUIE.UnitFrames.CustomFramesApplyLayoutGroup() end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomShieldBarHeight,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomShieldBarSeparate ) end,
    }
    -- Custom Unit Frames Overlay Full Height Shield Bar
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_SHIELD_OVERLAY),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMES_SHIELD_OVERLAY_TP),
        getFunc = function() return LUIE.UnitFrames.SV.CustomShieldBarFull end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomShieldBarFull = value end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomShieldBarFull,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and not LUIE.UnitFrames.SV.CustomShieldBarSeparate ) end,
    }
    -- Custom Unit Frames Smooth Bar Transition
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_SMOOTHBARTRANS),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMES_SMOOTHBARTRANS_TP),
        getFunc = function() return LUIE.UnitFrames.SV.CustomSmoothBar end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomSmoothBar = value end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomSmoothBar,
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Custom Unit Frames (Player, Target)
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "header",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_HEADER),
        width = "full",
    }
    -- Enable LUIE PLAYER frame
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_ENABLE_PLAYER),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_ENABLE_PLAYER_TP),
        getFunc = function() return LUIE.UnitFrames.SV.CustomFramesPlayer end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomFramesPlayer = value end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomFramesPlayer,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Enable LUIE Target frame
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_ENABLE_TARGET),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_ENABLE_TARGET_TP),
        getFunc = function() return LUIE.UnitFrames.SV.CustomFramesTarget end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomFramesTarget = value end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomFramesTarget,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Player Bars Width
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_WIDTH),
        min = 200, max = 500, step = 5,
        getFunc = function() return LUIE.UnitFrames.SV.PlayerBarWidth end,
        setFunc = function(value) LUIE.UnitFrames.SV.PlayerBarWidth = value LUIE.UnitFrames.CustomFramesApplyLayoutPlayer() end,
        width = "full",
        default = LUIE.UnitFrames.D.PlayerBarWidth,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer ) end,
    }
    -- Player Health Bar Height
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_HP_HIGHT),
        min = 20, max = 70, step = 1,
        getFunc = function() return LUIE.UnitFrames.SV.PlayerBarHeightHealth end,
        setFunc = function(value) LUIE.UnitFrames.SV.PlayerBarHeightHealth = value LUIE.UnitFrames.CustomFramesApplyLayoutPlayer() end,
        width = "full",
        default = LUIE.UnitFrames.D.PlayerBarHeightHealth,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer ) end,
    }
    -- Player Magicka Bar Height
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_MAG_HIGHT),
        min = 20, max = 70, step = 1,
        getFunc = function() return LUIE.UnitFrames.SV.PlayerBarHeightMagicka end,
        setFunc = function(value) LUIE.UnitFrames.SV.PlayerBarHeightMagicka = value LUIE.UnitFrames.CustomFramesApplyLayoutPlayer() end,
        width = "full",
        default = LUIE.UnitFrames.D.PlayerBarHeightMagicka,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer ) end,
    }
    -- Player Stamina Bar Height
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_STAM_HIGHT),
        min = 20, max = 70, step = 1,
        getFunc = function() return LUIE.UnitFrames.SV.PlayerBarHeightStamina end,
        setFunc = function(value) LUIE.UnitFrames.SV.PlayerBarHeightStamina = value LUIE.UnitFrames.CustomFramesApplyLayoutPlayer() end,
        width = "full",
        default = LUIE.UnitFrames.D.PlayerBarHeightStamina,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer ) end,
    }
    -- Hide Player Magicka Bar Label
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_MAG_NOLABEL),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_MAG_NOLABEL_TP),
        getFunc = function() return LUIE.UnitFrames.SV.HideLabelMagicka end,
        setFunc = function(value) LUIE.UnitFrames.SV.HideLabelMagicka = value LUIE.UnitFrames.SV.HideBarMagicka = false end,
        width = "full",
        default = LUIE.UnitFrames.D.HideLabelMagicka,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer ) end,
    }
    -- Hide Player Magicka Bar
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_MAG_NOBAR),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_MAG_NOBAR_TP),
        getFunc = function() return LUIE.UnitFrames.SV.HideBarMagicka end,
        setFunc = function(value) LUIE.UnitFrames.SV.HideBarMagicka = value end,
        width = "full",
        default = LUIE.UnitFrames.D.HideBarMagicka,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer and LUIE.UnitFrames.SV.HideLabelMagicka ) end,
    }
    -- Hide Player Stamina Bar Label
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_STAM_NOLABEL),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_STAM_NOLABEL_TP),
        getFunc = function() return LUIE.UnitFrames.SV.HideLabelStamina end,
        setFunc = function(value) LUIE.UnitFrames.SV.HideLabelStamina = value LUIE.UnitFrames.SV.HideBarStamina = false end,
        width = "full",
        default = LUIE.UnitFrames.D.HideLabelStamina,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer ) end,
    }
    -- Hide Player Stamina Bar
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_STAM_NOBAR),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_STAM_NOBAR_TP),
        getFunc = function() return LUIE.UnitFrames.SV.HideBarStamina end,
        setFunc = function(value) LUIE.UnitFrames.SV.HideBarStamina = value end,
        width = "full",
        default = LUIE.UnitFrames.D.HideBarStamina,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer and LUIE.UnitFrames.SV.HideLabelStamina ) end,
    }
    -- Spacing between Player Bars
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_SPACING),
        min = -1, max = 4, step = 1,
        getFunc = function() return LUIE.UnitFrames.SV.PlayerBarSpacing end,
        setFunc = function(value) LUIE.UnitFrames.SV.PlayerBarSpacing = value LUIE.UnitFrames.CustomFramesApplyLayoutPlayer() end,
        width = "full",
        default = LUIE.UnitFrames.D.PlayerBarSpacing,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer ) end,
    }
    -- Display self name on Player Frame
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_NAMESELF),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_PLAYER_NAMESELF_TP),
        getFunc = function() return LUIE.UnitFrames.SV.PlayerEnableYourname end,
        setFunc = function(value) LUIE.UnitFrames.SV.PlayerEnableYourname = value LUIE.UnitFrames.CustomFramesApplyLayoutPlayer() end,
        width = "full",
        default = LUIE.UnitFrames.D.PlayerEnableYourname,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer ) end,
    }
    -- Display Mount/Siege/Werewolf Bar
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_MOUNTSIEGEWWBAR),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_MOUNTSIEGEWWBAR_TP),
        getFunc = function() return LUIE.UnitFrames.SV.PlayerEnableAltbarMSW end,
        setFunc = function(value) LUIE.UnitFrames.SV.PlayerEnableAltbarMSW = value LUIE.UnitFrames.CustomFramesSetupAlternative() end,
        width = "full",
        default = LUIE.UnitFrames.D.PlayerEnableAltbarMSW,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer ) end,
    }
    -- Display XP/Champion XP Bar
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_XPCPBAR),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_XPCPBAR_TP),
        getFunc = function() return LUIE.UnitFrames.SV.PlayerEnableAltbarXP end,
        setFunc = function(value) LUIE.UnitFrames.SV.PlayerEnableAltbarXP = value LUIE.UnitFrames.CustomFramesSetupAlternative() end,
        width = "full",
        default = LUIE.UnitFrames.D.PlayerEnableAltbarXP,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer ) end,
    }
    -- Champion XP Bar Point-Type Colour
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_XPCPBARCOLOR),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_XPCPBARCOLOR_TP),
        getFunc = function() return LUIE.UnitFrames.SV.PlayerChampionColour end,
        setFunc = function(value) LUIE.UnitFrames.SV.PlayerChampionColour = value LUIE.UnitFrames.OnChampionPointGained() end,
        width = "full",
        default = LUIE.UnitFrames.D.PlayerChampionColour,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer and LUIE.UnitFrames.SV.PlayerEnableAltbarXP ) end,
    }
    -- Display Armor stat change
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_ARMORCHANGE),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_ARMORCHANGE_TP),
        getFunc = function() return LUIE.UnitFrames.SV.PlayerEnableArmor end,
        setFunc = function(value) LUIE.UnitFrames.SV.PlayerEnableArmor = value end,
        width = "full",
        default = LUIE.UnitFrames.D.PlayerEnableArmor,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and ( LUIE.UnitFrames.SV.CustomFramesPlayer or LUIE.UnitFrames.SV.CustomFramesTarget ) ) end,
    }
    --[[Display Weapon Power stat change
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = "Display Weapon Power stat change",
        tooltip = "Display additional icon on unit health bar when unit has its weapon power affected.",
        getFunc = function() return LUIE.UnitFrames.SV.PlayerEnableWeaponPower end,
        setFunc = function(value) LUIE.UnitFrames.SV.PlayerEnableWeaponPower = value end,
        width = "full",
        default = LUIE.UnitFrames.D.PlayerEnableWeaponPower,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and ( LUIE.UnitFrames.SV.CustomFramesPlayer or LUIE.UnitFrames.SV.CustomFramesTarget ) ) end,
    }]]--
    --[[Display Spell Power stat change
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = "Display Spell Power stat change",
        tooltip = "Display additional icon on unit health bar when unit has its spell power affected.",
        getFunc = function() return LUIE.UnitFrames.SV.PlayerEnableSpellPower end,
        setFunc = function(value) LUIE.UnitFrames.SV.PlayerEnableSpellPower = value end,
        width = "full",
        default = LUIE.UnitFrames.D.PlayerEnableSpellPower,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and ( LUIE.UnitFrames.SV.CustomFramesPlayer or LUIE.UnitFrames.SV.CustomFramesTarget ) ) end,
    }]]--
    -- Out-of-Combat frame opacity
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_OOCPACITY),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_OOCPACITY_TP),
        min = 0, max = 100, step = 5,
        getFunc = function() return LUIE.UnitFrames.SV.CustomOocAlpha end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomOocAlpha = value LUIE.UnitFrames.CustomFramesApplyInCombat() end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomOocAlpha,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and ( LUIE.UnitFrames.SV.CustomFramesPlayer or LUIE.UnitFrames.SV.CustomFramesTarget ) ) end,
    }
    -- In-Combat frame opacity
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_ICPACITY),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_ICPACITY_TP),
        min = 0, max = 100, step = 5,
        getFunc = function() return LUIE.UnitFrames.SV.CustomIncAlpha end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomIncAlpha = value LUIE.UnitFrames.CustomFramesApplyInCombat() end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomIncAlpha,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and ( LUIE.UnitFrames.SV.CustomFramesPlayer or LUIE.UnitFrames.SV.CustomFramesTarget ) ) end,
    }
    -- Treat Missing Power as In-Combat
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_MISSPOWERCOMBAT),
        getFunc = function() return LUIE.UnitFrames.SV.CustomOocAlphaPower end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomOocAlphaPower = value LUIE.UnitFrames.CustomFramesApplyInCombat() end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomOocAlphaPower,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and ( LUIE.UnitFrames.SV.CustomFramesPlayer or LUIE.UnitFrames.SV.CustomFramesTarget ) ) end,
    }
    -- Apply same opacity to Target frame
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_TARGETOPACITY),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_TARGETOPACITY_TP),
        getFunc = function() return LUIE.UnitFrames.SV.CustomOocAlphaTarget end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomOocAlphaTarget = value LUIE.UnitFrames.CustomFramesApplyInCombat() end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomOocAlphaTarget,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesTarget ) end,
    }
    -- Target Bars Width
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_TARGET_WIDTH),
        min = 200, max = 500, step = 5,
        getFunc = function() return LUIE.UnitFrames.SV.TargetBarWidth end,
        setFunc = function(value) LUIE.UnitFrames.SV.TargetBarWidth = value LUIE.UnitFrames.CustomFramesApplyLayoutPlayer() end,
        width = "full",
        default = LUIE.UnitFrames.D.TargetBarWidth,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesTarget ) end,
    }
    -- Target Bars Height
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_TARGET_HEIGHT),
        min = 20, max = 70, step = 1,
        getFunc = function() return LUIE.UnitFrames.SV.TargetBarHeight end,
        setFunc = function(value) LUIE.UnitFrames.SV.TargetBarHeight = value LUIE.UnitFrames.CustomFramesApplyLayoutPlayer() end,
        width = "full",
        default = LUIE.UnitFrames.D.TargetBarHeight,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesTarget ) end,
    }
    -- Display Target class label
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_TARGET_CLASSLABEL),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_TARGET_CLASSLABEL_TP),
        getFunc = function() return LUIE.UnitFrames.SV.TargetEnableClass end,
        setFunc = function(value) LUIE.UnitFrames.SV.TargetEnableClass = value end,
        width = "full",
        default = LUIE.UnitFrames.D.TargetEnableClass,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesTarget ) end,
    }
    -- Execute Health % Threshold
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_EXETHRESHOLD),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_EXETHRESHOLD_TP),
        min = 0, max = 50, step = 5,
        getFunc = function() return LUIE.UnitFrames.SV.ExecutePercentage end,
        setFunc = function(value) LUIE.UnitFrames.SV.ExecutePercentage = value end,
        width = "full",
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        default = LUIE.UnitFrames.D.ExecutePercentage,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesPlayer ) end,
    }
    -- Display Skull Execute Texture
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPT_EXETEXTURE),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPT_EXETEXTURE_TP),
        getFunc = function() return LUIE.UnitFrames.SV.TargetEnableSkull end,
        setFunc = function(value) LUIE.UnitFrames.SV.TargetEnableSkull = value end,
        width = "full",
        default = LUIE.UnitFrames.D.TargetEnableSkull,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesTarget ) end,
    }
    -- Custom Unit Frames (Group)
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "header",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESG_HEADER),
        width = "full",
    }
    -- Enable This Addon GROUP frames
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESG_LUIEFRAMESENABLE),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESG_LUIEFRAMESENABLE_TP),
        getFunc = function() return LUIE.UnitFrames.SV.CustomFramesGroup end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomFramesGroup = value end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomFramesGroup,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Enable Default GROUP frames
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESG_DEFFRAMESENABLE),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESG_DEFFRAMESENABLE_TP),
        getFunc = function() return not ( LUIE.UnitFrames.SV.GroupDisableDefault and (LUIE.UnitFrames.SV.CustomFramesGroup or LUIE.UnitFrames.SV.CustomFramesRaid) ) end,
        setFunc = function(value) LUIE.UnitFrames.SV.GroupDisableDefault = not value LUIE.UnitFrames.CustomFramesGroupUpdate() end,
        width = "full",
        default = not LUIE.UnitFrames.D.GroupDisableDefault,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and (LUIE.UnitFrames.SV.CustomFramesGroup or LUIE.UnitFrames.SV.CustomFramesRaid) ) end,
    }
    -- Include Player in Group Frame
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESG_INCPLAYERS),
        getFunc = function() return not LUIE.UnitFrames.SV.GroupExcludePlayer end,
        setFunc = function(value) LUIE.UnitFrames.SV.GroupExcludePlayer = (not value) LUIE.UnitFrames.CustomFramesGroupUpdate() end,
        width = "full",
        default = not LUIE.UnitFrames.D.GroupExcludePlayer,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesGroup ) end,
    }
    -- Group Bars Width
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESG_WIDTH),
        min = 100, max = 400, step = 5,
        getFunc = function() return LUIE.UnitFrames.SV.GroupBarWidth end,
        setFunc = function(value) LUIE.UnitFrames.SV.GroupBarWidth = value LUIE.UnitFrames.CustomFramesApplyLayoutGroup() end,
        width = "full",
        default = LUIE.UnitFrames.D.GroupBarWidth,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesGroup ) end,
    }
    -- Group Bars Height
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESG_HEIGHT),
        min = 20, max = 70, step = 1,
        getFunc = function() return LUIE.UnitFrames.SV.GroupBarHeight end,
        setFunc = function(value) LUIE.UnitFrames.SV.GroupBarHeight = value LUIE.UnitFrames.CustomFramesApplyLayoutGroup() end,
        width = "full",
        default = LUIE.UnitFrames.D.GroupBarHeight,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesGroup ) end,
    }
    -- Spacing between Group Bars
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESG_SPACING),
        min = 20, max = 80, step = 2,
        getFunc = function() return LUIE.UnitFrames.SV.GroupBarSpacing end,
        setFunc = function(value) LUIE.UnitFrames.SV.GroupBarSpacing = value LUIE.UnitFrames.CustomFramesApplyLayoutGroup() end,
        width = "full",
        default = LUIE.UnitFrames.D.GroupBarSpacing,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesGroup ) end,
    }
    -- Show Role Icon on Group Frames
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESG_ROLEICON),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESG_ROLEICON_TP),
        getFunc = function() return LUIE.UnitFrames.SV.RoleIconSmallGroup end,
        setFunc = function(value) LUIE.UnitFrames.SV.RoleIconSmallGroup = value LUIE.UnitFrames.CustomFramesApplyLayoutGroup() end,
        width = "full",
        default = LUIE.UnitFrames.D.RoleIconSmallGroup,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and (LUIE.UnitFrames.SV.CustomFramesGroup or LUIE.UnitFrames.SV.CustomFramesRaid) ) end,
    }
    -- Custom Unit Frames Group Color Player Role
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_COLOR_GFRAMESBYROLE),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMES_COLOR_GFRAMESBYROLE_TP),
        getFunc = function() return LUIE.UnitFrames.SV.ColorRoleGroup end,
        setFunc = function(value) LUIE.UnitFrames.SV.ColorRoleGroup = value LUIE.UnitFrames.CustomFramesApplyColours(true) end,
        width = "full",
        default = LUIE.UnitFrames.D.ColorRoleGroup,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and (LUIE.UnitFrames.SV.CustomFramesGroup or LUIE.UnitFrames.SV.CustomFramesRaid) ) end,
    }
    -- Custom Unit Frames (Raid)
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "header",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESR_HEADER),
        width = "full",
    }
    -- Enable This Addon RAID frames
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESR_LUIEFRAMESENABLE),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESR_LUIEFRAMESENABLE_TP),
        getFunc = function() return LUIE.UnitFrames.SV.CustomFramesRaid end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomFramesRaid = value end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomFramesRaid,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Enable Default RAID frames
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESR_DEFFRAMESENABLE),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESR_DEFFRAMESENABLE_TP),
        getFunc = function() return not ( LUIE.UnitFrames.SV.RaidDisableDefault and LUIE.UnitFrames.SV.CustomFramesRaid ) end,
        setFunc = function(value) LUIE.UnitFrames.SV.RaidDisableDefault = not value LUIE.UnitFrames.CustomFramesGroupUpdate() end,
        width = "full",
        default = not LUIE.UnitFrames.D.RaidDisableDefault,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesRaid ) end,
    }
    -- Raid Bars Width
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESR_WIDTH),
        min = 100, max = 500, step = 5,
        getFunc = function() return LUIE.UnitFrames.SV.RaidBarWidth end,
        setFunc = function(value) LUIE.UnitFrames.SV.RaidBarWidth = value LUIE.UnitFrames.CustomFramesApplyLayoutRaid() end,
        width = "full",
        default = LUIE.UnitFrames.D.RaidBarWidth,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesRaid ) end,
    }
    -- Raid Bars Height
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESR_HEIGHT),
        min = 20, max = 70, step = 1,
        getFunc = function() return LUIE.UnitFrames.SV.RaidBarHeight end,
        setFunc = function(value) LUIE.UnitFrames.SV.RaidBarHeight = value LUIE.UnitFrames.CustomFramesApplyLayoutRaid() end,
        width = "full",
        default = LUIE.UnitFrames.D.RaidBarHeight,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesRaid ) end,
    }
    
  optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESR_NAMECLIP),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESR_NAMECLIP_TP),
        min = 0, max = 200, step = 1,
        getFunc = function() return LUIE.UnitFrames.SV.RaidNameClip end,
        setFunc = function(value) LUIE.UnitFrames.SV.RaidNameClip = value LUIE.UnitFrames.CustomFramesApplyLayoutRaid() end,
        width = "full",
        default = LUIE.UnitFrames.D.RaidNameClip,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesRaid ) end,
    }  
    
    
    -- Raid Frame Layout
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESR_LAYOUT),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESR_LAYOUT_TP),
        choices = { "1 x 24", "2 x 12", "3 x 8", "4 x 6", "6 x 4" },
        -- sort = "name-up",
        getFunc = function() return LUIE.UnitFrames.SV.RaidLayout end,
        setFunc = function(var) LUIE.UnitFrames.SV.RaidLayout = var LUIE.UnitFrames.CustomFramesApplyLayoutRaid() end,
        width = "full",
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesRaid ) end,
        default = LUIE.UnitFrames.D.RaidLayout,
    }
    --[[Sort Raid Frame
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = "Sort Raid Frame",
        tooltip = "Perform alphabetic sort of members in raid-size group. This is a default UI behaviour. If for any reason you prefer to have raid members sorted according to internal game numbering, you can switch off this option.",
        getFunc = function() return LUIE.UnitFrames.SV.RaidSort end,
        setFunc = function(value) LUIE.UnitFrames.SV.RaidSort = value LUIE.UnitFrames.CustomFramesGroupUpdate() end,
        width = "full",
        default = LUIE.UnitFrames.D.RaidSort,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesRaid ) end,
    } ]]--
    -- Add Spacer for every 4 members
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESR_SPACER),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESR_SPACER_TP),
        getFunc = function() return LUIE.UnitFrames.SV.RaidSpacers end,
        setFunc = function(value) LUIE.UnitFrames.SV.RaidSpacers = value LUIE.UnitFrames.CustomFramesApplyLayoutRaid() end,
        width = "full",
        default = LUIE.UnitFrames.D.RaidSpacers,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.CustomFramesRaid ) end,
    }
    -- Show Role Icon on Raid Frames
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESR_ROLEICON),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESR_ROLEICON_TP),
        getFunc = function() return LUIE.UnitFrames.SV.RoleIconRaid end,
        setFunc = function(value) LUIE.UnitFrames.SV.RoleIconRaid  = value LUIE.UnitFrames.CustomFramesApplyLayoutRaid() end,
        width = "full",
        default = LUIE.UnitFrames.D.RoleIconRaid,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and (LUIE.UnitFrames.SV.CustomFramesGroup or LUIE.UnitFrames.SV.CustomFramesRaid) ) end,
    }
    -- Custom Unit Frames Raid Color Player Role
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMES_COLOR_RFRAMESBYROLE),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMES_COLOR_RFRAMESBYROLE_TP),
        getFunc = function() return LUIE.UnitFrames.SV.ColorRoleRaid end,
        setFunc = function(value) LUIE.UnitFrames.SV.ColorRoleRaid = value LUIE.UnitFrames.CustomFramesApplyColours(true) end,
        width = "full",
        default = LUIE.UnitFrames.D.ColorRoleRaid,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and (LUIE.UnitFrames.SV.CustomFramesGroup or LUIE.UnitFrames.SV.CustomFramesRaid) ) end,
    }
    -- Custom Unit Frames (Boss)
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "header",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESB_HEADER),
        width = "full",
    }
    -- Enable This Addon BOSS frames
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESB_LUIEFRAMESENABLE),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESB_LUIEFRAMESENABLE_TP),
        getFunc = function() return LUIE.UnitFrames.SV.CustomFramesBosses end,
        setFunc = function(value) LUIE.UnitFrames.SV.CustomFramesBosses = value end,
        width = "full",
        default = LUIE.UnitFrames.D.CustomFramesBosses,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Custom Unit Frames (PvP Target Frame)
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "header",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPVP_HEADER),
        width = "full",
    }
    -- Enable additional PvP Target frame
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPVP_TARGETFRAME),
        tooltip = GetString(SI_LUIE_LAM_UF_CFRAMESPVP_TARGETFRAME_TP),
        getFunc = function() return LUIE.UnitFrames.SV.AvaCustFramesTarget end,
        setFunc = function(value) LUIE.UnitFrames.SV.AvaCustFramesTarget = value end,
        width = "full",
        default = LUIE.UnitFrames.D.AvaCustFramesTarget,
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- PvP Target Bars Width
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPVP_TARGETFRAME_WIDTH),
        min = 300, max = 700, step = 5,
        getFunc = function() return LUIE.UnitFrames.SV.AvaTargetBarWidth end,
        setFunc = function(value) LUIE.UnitFrames.SV.AvaTargetBarWidth = value LUIE.UnitFrames.CustomFramesApplyLayoutPlayer() end,
        width = "full",
        default = LUIE.UnitFrames.D.AvaTargetBarWidth,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.AvaCustFramesTarget ) end,
    }
    -- PvP Target Bars Height
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "slider",
        name = GetString(SI_LUIE_LAM_UF_CFRAMESPVP_TARGETFRAME_HEIGHT),
        min = 20, max = 70, step = 1,
        getFunc = function() return LUIE.UnitFrames.SV.AvaTargetBarHeight end,
        setFunc = function(value) LUIE.UnitFrames.SV.AvaTargetBarHeight = value LUIE.UnitFrames.CustomFramesApplyLayoutPlayer() end,
        width = "full",
        default = LUIE.UnitFrames.D.AvaTargetBarHeight,
        disabled = function() return not ( LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.AvaCustFramesTarget ) end,
    }
    -- Common options
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "header",
        name = GetString(SI_LUIE_LAM_UF_COMMON_HEADER),
        width = "full",
    }
    -- Player Name Display Method
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = GetString(SI_LUIE_LAM_NAMEDISPLAYMETHOD),
        warning = GetString(SI_LUIE_LAM_RELOADUI_WARNING),
        tooltip = GetString(SI_LUIE_LAM_UF_COMMON_NAMEDISPLAYMETHOD_TP),
        choices = nameDisplayOptions,
        getFunc = function() return nameDisplayOptions[LUIE.UnitFrames.SV.DisplayOptions] end,
        setFunc = function(value) LUIE.UnitFrames.SV.DisplayOptions = nameDisplayOptionsKeys[value] end,
        width = "full",
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
        default = nameDisplayOptions[2]
    }
    -- Default Caption Colour
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "colorpicker",
        name = GetString(SI_LUIE_LAM_UF_COMMON_CAPTIONCOLOR),
        getFunc = function() return unpack(LUIE.UnitFrames.SV.Target_FontColour) end,
        setFunc = function(r,g,b,a) LUIE.UnitFrames.SV.Target_FontColour={r,g,b} end,
        width = "full",
        default = { r=LUIE.UnitFrames.D.Target_FontColour[1], g=LUIE.UnitFrames.D.Target_FontColour[2], b=LUIE.UnitFrames.D.Target_FontColour[3] },
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Friendly NPC Font Colour
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "colorpicker",
        name = GetString(SI_LUIE_LAM_UF_COMMON_NPCFONTCOLOR),
        getFunc = function() return unpack(LUIE.UnitFrames.SV.Target_FontColour_FriendlyNPC) end,
        setFunc = function(r,g,b,a) LUIE.UnitFrames.SV.Target_FontColour_FriendlyNPC={r,g,b} end,
        width = "full",
        default = { r=LUIE.UnitFrames.D.Target_FontColour_FriendlyNPC[1], g=LUIE.UnitFrames.D.Target_FontColour_FriendlyNPC[2], b=LUIE.UnitFrames.D.Target_FontColour_FriendlyNPC[3] },
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Friendly Player Font Colour
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "colorpicker",
        name = GetString(SI_LUIE_LAM_UF_COMMON_PLAYERFONTCOLOR),
        getFunc = function() return unpack(LUIE.UnitFrames.SV.Target_FontColour_FriendlyPlayer) end,
        setFunc = function(r,g,b,a) LUIE.UnitFrames.SV.Target_FontColour_FriendlyPlayer={r,g,b} end,
        width = "full",
        default = { r=LUIE.UnitFrames.D.Target_FontColour_FriendlyPlayer[1], g=LUIE.UnitFrames.D.Target_FontColour_FriendlyPlayer[2], b=LUIE.UnitFrames.D.Target_FontColour_FriendlyPlayer[3] },
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Hostile Font Colour
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "colorpicker",
        name = GetString(SI_LUIE_LAM_UF_COMMON_HOSTILEFONTCOLOR),
        getFunc = function() return unpack(LUIE.UnitFrames.SV.Target_FontColour_Hostile) end,
        setFunc = function(r,g,b,a) LUIE.UnitFrames.SV.Target_FontColour_Hostile={r,g,b} end,
        width = "full",
        default = { r=LUIE.UnitFrames.D.Target_FontColour_Hostile[1], g=LUIE.UnitFrames.D.Target_FontColour_Hostile[2], b=LUIE.UnitFrames.D.Target_FontColour_Hostile[3] },
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Apply same settings to reticle
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "checkbox",
        name = GetString(SI_LUIE_LAM_UF_COMMON_RETICLECOLOR),
        tooltip = GetString(SI_LUIE_LAM_UF_COMMON_RETICLECOLOR_TP),
        getFunc = function() return LUIE.UnitFrames.SV.ReticleColourByReaction end,
        setFunc = LUIE.UnitFrames.ReticleColourByReaction,
        width = "full",
        default = LUIE.UnitFrames.D.ReticleColourByReaction,
        disabled = function() return not LUIE.SV.UnitFrames_Enabled end,
    }
    -- Interactible Reticle Colour
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "colorpicker",
        name = GetString(SI_LUIE_LAM_UF_COMMON_RETICLECOLORINTERACT),
        getFunc = function() return unpack(LUIE.UnitFrames.SV.ReticleColour_Interact) end,
        setFunc = function(r,g,b,a) LUIE.UnitFrames.SV.ReticleColour_Interact={r,g,b} end,
        width = "full",
        default = { r=LUIE.UnitFrames.D.ReticleColour_Interact[1], g=LUIE.UnitFrames.D.ReticleColour_Interact[2], b=LUIE.UnitFrames.D.ReticleColour_Interact[3] },
        disabled = function() return not (LUIE.SV.UnitFrames_Enabled and LUIE.UnitFrames.SV.ReticleColourByReaction) end,
    }
    --[[Font Style
    optionsDataUnitFrames[#optionsDataUnitFrames + 1] = {
        type = "dropdown",
        name = "Font Style",
        choices = { "normal", "outline", "shadow", "soft-shadow-thick", "soft-shadow-thin", "thick-outline" },
        sort = "name-up",
        getFunc = function() return LUIE.SpellCastBuffs.SV.BuffFontStyle end,
        setFunc = function(var) LUIE.SpellCastBuffs.SV.BuffFontStyle = var LUIE.SpellCastBuffs.ApplyFont() end,
        width = "full",
        default = LUIE.SpellCastBuffs.D.BuffFontStyle,
        disabled = function() return not ( LUIE.SV.SpellCastBuff_Enable and LUIE.SpellCastBuffs.SV.RemainingText ) end,
    }
    ]]--

    LAM2:RegisterAddonPanel('LUIEAddonOptions', panelData)
    LAM2:RegisterOptionControls('LUIEAddonOptions', optionsData)

    LAM2:RegisterAddonPanel('LUIEUnitFramesOptions', panelDataUnitFrames)
    LAM2:RegisterOptionControls('LUIEUnitFramesOptions', optionsDataUnitFrames)
    
    LAM2:RegisterAddonPanel('LUIEChatAnnouncementOptions', panelDataChatAnnouncements)
    LAM2:RegisterOptionControls('LUIEChatAnnouncementOptions', optionsDataChatAnnouncements)
    
    LAM2:RegisterAddonPanel('LUIEBuffsAndDebuffsOptions', panelDataBuffsDebuffs)
    LAM2:RegisterOptionControls('LUIEBuffsAndDebuffsOptions', optionsDataBuffsDebuffs)
    
end

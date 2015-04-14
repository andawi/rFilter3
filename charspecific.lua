
  -----------------------------
  -- INIT
  -----------------------------

  --get the addon namespace
  local addon, ns = ...
  local cfg = ns.cfg

  -----------------------------
  -- CHARSPECIFIC REWRITES
  -----------------------------

  local player_name, _ = UnitName("player")
  local _, player_class = UnitClass("player")

  -- this file allows you to override default class settings with special settings for your own character
  -- ATTENTION: if you character name contains UTF-8 characters like âôû and such. Make sure this files is saved in UTF-8 file format

  if player_name == "Sergath" and player_class == "PRIEST" then
    --Rothars Buff List
    cfg.rf3_BuffList = {
      --[[
      {
        spellid = 469, -- +10% STA
        spelllist = { 469, 90364, 109773, 21562, },
        spec = nil,
        size = 32,
        pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = -50, y = 0 },
        unit = "player",
        validate_unit   = true,
        ismine          = false,
        desaturate      = true,
        move_ingame     = false,
        hide_ooc        = false,
		setToCursor 		= false,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,
          },
        },
      },
	  
	  {
		spellid = 17, -- PW:S
		spec = nil,
		size = 32,
		pos = { a1 = "CENTER", a2 = "CENTER", af = "UIParent", x = 50, y = 0 },
		unit = "player",
		validate_unit   = true,
		ismine          = false,
		desaturate      = true,
		move_ingame     = false,
		hide_ooc        = false,
		setToCursor 		= false,
		alpha = {
		  found = {
			frame = 1,
			icon = 1,
		  },
		  not_found = {
			frame = 0,
			icon = 1,
		  },
		},
	  },
	  
	  	]]  
     }

	 
	 

    cfg.rf3_DebuffList = {
      
    }
	
	cfg.rf3_CooldownList = {
		{spellid             = 47540,    --penance                  --NUMBER, the spellid to track this will represent the icon if none is found
		--spelllist           = { 123, 456, 789, },       --TABLE (optional), you can check a list of spell cooldowns (nice for talents of the same talent-tier)
		spec                = nil,                      --nil, 1, 2 or 3 (optional), will only display the icon if your current specilization matches the setting
		--visibility_state    = ,  --(optional) attribute that lets you show/hide the frame on a given macro condition. example: "[stance:2] show; hide"
		glow				= true,						-- show Blizzard GlowOverlay#
		glowtrail			= 5,						-- glow off after x seconds
		border				= nil,
		sound				= "Interface\\Addons\\SharedMedia_MyMedia\\sound\\neoM_mrmba.ogg", 
		size                = 26,                       --NUMBER, the size of the icon
		hide_ooc            = false,                     --true/false (optional), hide icon out of combat
		desaturate          = false,                     --true/false (optional), desaturate the icon if not found
		move_ingame         = false,                     --true/false (optional), in case you want to move the frame ingame,
		setToCursor 		= true,
		--The size will be the MINIMUM frame size you can resize to, so adjust the size in case you need lower minimum size ingame
	  pos                 = {                         --TABLE, the position of the icon (http://www.wowwiki.com/API_Region_SetPoint)
							  a1 = "CENTER",
							  a2 = "CENTER",
							  af = "UIParent",
							  x = -30,
							  y = 30
							},
	  alpha           = {                             --TABLE, Set the alpha values of your icons (transparency)
						  cooldown = {
							frame = 1,
							icon = 0.1,
						  },
						  no_cooldown = {
							frame = 1,
							icon = 1,
						  },
						},

		},
		
		{spellid             = 121135,     --cascade                 --NUMBER, the spellid to track this will represent the icon if none is found
		--spelllist           = { 123, 456, 789, },       --TABLE (optional), you can check a list of spell cooldowns (nice for talents of the same talent-tier)
		spec                = nil,                      --nil, 1, 2 or 3 (optional), will only display the icon if your current specilization matches the setting
		--visibility_state    = ,  --(optional) attribute that lets you show/hide the frame on a given macro condition. example: "[stance:2] show; hide"
		glow				= true,						-- show Blizzard GlowOverlay
		border				= nil,
		sound				= nil, 
		size                = 26,                       --NUMBER, the size of the icon
		hide_ooc            = false,                     --true/false (optional), hide icon out of combat
		desaturate          = false,                     --true/false (optional), desaturate the icon if not found
		move_ingame         = false,                     --true/false (optional), in case you want to move the frame ingame,
		setToCursor 		= true,
		--The size will be the MINIMUM frame size you can resize to, so adjust the size in case you need lower minimum size ingame
	  pos                 = {                         --TABLE, the position of the icon (http://www.wowwiki.com/API_Region_SetPoint)
							  a1 = "CENTER",
							  a2 = "CENTER",
							  af = "UIParent",
							  x = 0,
							  y = 30
							},
	  alpha           = {                             --TABLE, Set the alpha values of your icons (transparency)
						  cooldown = {
							frame = 1,
							icon = 0.1,
						  },
						  no_cooldown = {
							frame = 1,
							icon = 1,
						  },
						},

		},
	
	{spellid             = 129250,    -- PW: Solace                  --NUMBER, the spellid to track this will represent the icon if none is found
		spelllist           = { 14914 },    --Holy Fire   --TABLE (optional), you can check a list of spell cooldowns (nice for talents of the same talent-tier)
		spec                = nil,                      --nil, 1, 2 or 3 (optional), will only display the icon if your current specilization matches the setting
		--visibility_state    = ,  --(optional) attribute that lets you show/hide the frame on a given macro condition. example: "[stance:2] show; hide"
		glow				= true,						-- show Blizzard GlowOverlay#
		glowtrail			= 5,						-- glow off after x seconds
		border				= nil,
		--sound				= "Interface\\Addons\\SharedMedia_MyMedia\\sound\\Flowers-notification_sound.ogg", 
		sound				= "Interface\\Addons\\SharedMedia_MyMedia\\sound\\8bit_notification.ogg", 
		size                = 26,                       --NUMBER, the size of the icon
		hide_ooc            = false,                     --true/false (optional), hide icon out of combat
		desaturate          = false,                     --true/false (optional), desaturate the icon if not found
		move_ingame         = false,                     --true/false (optional), in case you want to move the frame ingame,
		setToCursor 		= true,
		--The size will be the MINIMUM frame size you can resize to, so adjust the size in case you need lower minimum size ingame
	  pos                 = {                         --TABLE, the position of the icon (http://www.wowwiki.com/API_Region_SetPoint)
							  a1 = "CENTER",
							  a2 = "CENTER",
							  af = "UIParent",
							  x = 30,
							  y = 30
							},
	  alpha           = {                             --TABLE, Set the alpha values of your icons (transparency)
						  cooldown = {
							frame = 1,
							icon = 0.1,
						  },
						  no_cooldown = {
							frame = 1,
							icon = 1,
						  },
						},

		},
	}

  end
  
  

Vamp = LibStub("AceAddon-3.0"):NewAddon("Vamp", "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceComm-3.0", "AceSerializer-3.0")
Vamp.MINOR_VERSION = tonumber(("$Revision: 103 $"):match("%d+"))
local L = LibStub("AceLocale-3.0"):GetLocale("Vamp")
local Vamp = Vamp
local mod = Vamp
--


--[[
      VARIABLES ----------------------------------------------------------------------------------------------------------------
  ]]

local isEnabled = false
local POLLING_FREQUENCY = 1.0
local LIST_SIZE = 30
local guildList = {}
local raid = {}
local marks = {}
local ver = {}
local vampireDebuff = GetSpellInfo(70867) -- Essence of the Blood Queen
local vampireFrenzyDebuff = GetSpellInfo(71474) -- Frenzied Bloodthirst
local mindControlledDebuff = GetSpellInfo(70923) -- Uncontrollable Frenzy
local testDebuff
--[===[@debug@
testDebuff = 58600 -- Restricted Flight Area
--@end-debug@]===]
Vamp.inCombat = false
local lastRaidWarning = 0
local TOKEN = "<VAMP>"
local commPrefix = "VampArrow-1.0"
local pullNPCs = { 37955 }
local defeatNPCs = { 37955 }



--[[
      UPVALUES -----------------------------------------------------------------------------------------------------------------
  ]]
  
local _G = getfenv(0)
local pairs = _G.pairs
local strlower = _G.strlower
local strupper = _G.strupper
local format = _G.format



--[[
      UTILITIES ----------------------------------------------------------------------------------------------------------------
  ]]

local outgoingFilter = function(self, event, msg, ...)
	if msg:find(TOKEN) then return true end
end
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", outgoingFilter)


local newOrder
do
	local current = 0
	function newOrder()
		current = current + 1
		return current
	end
end


local function colorize(s, color, highlight)
	if color and s then
		if highlight then
			return string.format("|cff%02x%02x%02x%s|r", (color.r or 1) * 128 + 127, (color.g or 1) * 128 + 127, (color.b or 1) * 128 + 127, s)
		else
			return string.format("|cff%02x%02x%02x%s|r", (color.r or 1) * 255, (color.g or 1) * 255, (color.b or 1) * 255, s)
		end
	else
		return s
	end
end



--[[
      OPTIONS ------------------------------------------------------------------------------------------------------------------
  ]]

Vamp.defaults = {
 profile = {
		choiceMethod = 1,
		enabled = true,
		biteUnlisted = true,
		raidWarn = true,
		raidWarnThrottle = 10,
		assignmentDelay = 10,
		clearMarks = false,
		reverseMarks = false,
		filterOutgoing = true,
		log = false,
		outputTo = "SELF",
		channel = "",
		verboseLog = false,
		enableChatLogging = false,
		arrowAnnounce = true,
		melee = {},
		ranged = {},
		ranged2 = {},
		healers = {},
		tanks = {},
 },
}

Vamp.options = {
	name = "Vamp         r|cff20ff20"..Vamp.MINOR_VERSION.."|r",
	handler = Vamp,
	type = "group",
	childGroups = "tab",
	args = {		

		choiceMethod = {
			type = "select",
			name = L["Choose players based on"],
			values = function()
				local numRanks = GuildControlGetNumRanks()
				local t = {}
				t[1] = L["Players in raid only"]
				for i = 1, numRanks do
					t[i + 1] = L["Guild rank: "]..GuildControlGetRankName(i)..L[" (or higher)"]
				end
				return t
			end,
			get = function() return Vamp.db.profile.choiceMethod end,
			set = function(self, val)
				Vamp.db.profile.choiceMethod = val
				LibStub("AceConfigRegistry-3.0"):NotifyChange("Vamp")
			end,
			order = newOrder(),
		}, -- choiceMethod

		clear = {
			type = "execute",
			name = L["Clear all players"],
			desc = L["Clears all player lists."],
			confirm = true,
			confirmText = L["Are you sure you want to clear all player lists?"],
			func = function(self) Vamp:ClearAllLists() end,
			order = newOrder(),
		}, -- clear


--[[ General ]]----------------------------------------------------------------------------------------------------------------------

		options = {
			type = "group",
			name = L["Options"],
			order = newOrder(),
			childGroups = "tree",
			args = {
			
				enable = {
					type = "toggle",
					name = L["Enable Vamp"],
					get = function() return Vamp.db.profile.enabled end,
					set = function(self, val)
						Vamp.db.profile.enabled = val
						isEnabled = val
					end,
					order = newOrder(),
				}, -- enable
				
				
				general = {
					type = "group",
					name = L["General"],
					order = newOrder(),
					args = {
					
						biteUnlisted = {
							order = newOrder(),
							type = "toggle",
							name = L["Bite unlisted players"],
							desc = L["Players in raid groups 1-5, but not listed in any priority list, will be considered valid bite targets. They will be prioritized above the healers."],
							get = function() return Vamp.db.profile.biteUnlisted end,
							set = function(self, val) Vamp.db.profile.biteUnlisted = val end,
						}, -- biteUnlisted
					
						assignmentDelay = {
							order = newOrder(),
							type = "range",
							name = L["Assignment delay"],
							desc = L["Bite assignments will be delayed X seconds after a player becomes a vampire. 10 seconds is recommended, as that ensures that all bites have gone out before any assignments are given."],
							min = 2,
							max = 30,
							step = 1,
							get = function() return Vamp.db.profile.assignmentDelay end,
							set = function(self, val) Vamp.db.profile.assignmentDelay = val end,
						}, -- assignmentDelay

						clearMarks = {
							order = newOrder(),
							type = "toggle",
							name = L["Clear marks when fight starts"],
							desc = L["When combat begins, clears all raid marks from players. Vamp doesn't actually check to see if you're fighting Blood-Queen Lana'thel or not. If this is on and Vamp is enabled, marks on players will be cleared when ANY fight starts in a raid."],
							get = function() return Vamp.db.profile.clearMarks end,
							set = function(self, val) Vamp.db.profile.clearMarks = val end,
						}, -- clearMarks

						reverseMarks = {
							order = newOrder(),
							type = "toggle",
							name = L["Reverse marks"],
							desc = L["Causes the player doing the biting to be marked, instead of the player to be bitten. This can be useful for strategies where the bite target must find the biter."],
							get = function() return Vamp.db.profile.reverseMarks end,
							set = function(self, val) Vamp.db.profile.reverseMarks = val end,
						}, -- reverseMarks

						filterOutgoing = {
							order = newOrder(),
							type = "toggle",
							name = L["Filter outgoing whispers"],
							desc = L["When checked, you will not see outgoing whispers sent from Vamp."],
							get = function() return Vamp.db.profile.filterOutgoing end,
							set = function(self, val) Vamp.db.profile.filterOutgoing = val end,
						}, -- filterOutgoing
					}
				}, -- general


				raidWarnings = {
					type = "group",
					name = L["Raid Warnings"],
					order = newOrder(),
					args = {
					
						raidWarn = {
							order = newOrder(),
							type = "toggle",
							name = L["Send raid warnings"],
							desc = L["Sends a raid warning when a bite target dies or disconnects. Warnings will only be sent every several seconds, configured below."],
							get = function() return Vamp.db.profile.raidWarn end,
							set = function(self, val) Vamp.db.profile.raidWarn = val end,
						}, -- raidWarn
						
						raidWarnThrottle = {
							order = newOrder(),
							type = "range",
							name = L["Raid warning throttle"],
							desc = L["Raid warnings about dead or disconnected bite targets will only be sent once every X seconds, configured here. If players die or disconnect during the throttle period, no warning will appear."],
							min = 0,
							max = 360,
							step = 1,
							get = function() return Vamp.db.profile.raidWarnThrottle end,
							set = function(self, val) Vamp.db.profile.raidWarnThrottle = val end,
						}, -- raidWarnThrottle
					
					}
				}, -- raidWarnings
				
				
				log = {
					type = "group",
					name = L["Log"],
					order = newOrder(),
					args = {
					
						log = {
							order = newOrder(),
							type = "toggle",
							name = L["Enable log"],
							desc = L["Outputs a log of everything that happens during the fight, including who is bitten and who they are assigned to bite next."],
							get = function() return Vamp.db.profile.log end,
							set = function(self, val) Vamp.db.profile.log = val end,
						}, -- log
						
						outputTo = {
							type = "select",
							name = L["Output to"],
							values = {
								SAY = L["Say"],
								RAID = L["Raid"],
								GUILD = L["Guild"],
								PARTY = L["Party"],
								OFFICER = L["Officer"],
								CHANNEL = L["Channel"],
								SELF = L["Self"],
							},
							get = function() return Vamp.db.profile.outputTo end,
							set = function(self, val) Vamp.db.profile.outputTo = val end,
							order = newOrder(),
						}, -- outputTo
					
      channel = {
							order = newOrder(),
       type = "input",
       name = L["Channel"],
       desc = L["The channel to output to. Only applicable if Channel is selected as the output type."],
							get = function() return Vamp.db.profile.channel end,
							set = function(self, val)
								if val:find(L["General"]) or val:find(L["Trade"]) or val:find(L["LocalDefense"]) then return end
								Vamp.db.profile.channel = val
							end,
      }, -- channel

						verboseLog = {
							order = newOrder(),
							type = "toggle",
							name = L["Verbose log"],
							desc = L["Fight logging will include a lot of extra information."],
							get = function() return Vamp.db.profile.verboseLog end,
							set = function(self, val) Vamp.db.profile.verboseLog = val end,
						}, -- verboseLog
						
						enableChatLogging = {
							order = newOrder(),
							type = "toggle",
							name = L["Auto-enable chat logging"],
							desc = L["When any player is bit, Vamp will turn on WoW's chat logging. This writes all chat channels to WoWChatLog.txt. Chat logging will not be turned off unless you log out."],
							get = function() return Vamp.db.profile.enableChatLogging end,
							set = function(self, val) Vamp.db.profile.enableChatLogging = val end,
						}, -- enableChatLogging
						
					}
				}, -- log


				arrow = {
					type = "group",
					name = L["Arrow"],
					order = newOrder(),
					args = {
					
						arrowAnnounce = {
							order = newOrder(),
							type = "toggle",
							name = L["Targets announce themselves"],
							desc = L["When enabled, any bite targets running the VampArrow add-on will announce themselves in /yell. This acts as another visual aid to help locate the player."],
							get = function() return Vamp.db.profile.arrowAnnounce end,
							set = function(self, val) Vamp.db.profile.arrowAnnounce = val end,
						}, -- arrowAnnounce
					
					}
				}, -- arrow


			}
		},


--[[ Melee DPS ]]--------------------------------------------------------------------------------------------------------------------

		melee = {
			type = "group",
			name = L["Melee"],
			order = newOrder(),
			args = {
				desc = {
					order = 0,
					type = "description",
					name = format(L["Choose up to %d players who act as melee DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.\n\nHigher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot)."], LIST_SIZE),
				},
			}
		},


--[[ Ranged DPS ]]-------------------------------------------------------------------------------------------------------------------

		ranged = {
			type = "group",
			name = L["Ranged A"],
			order = newOrder(),
			args = {
				desc = {
					order = 0,
					type = "description",
					name = format(L["Choose up to %d players who act as ranged DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.\n\nHigher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot)."].."\n\n"..L["Ranged can be split into two groups for positioning purposes. Ranged A members will always try to bite Ranged A members, etc."].."\n\n"..L["The Ranged A group has a higher priority than Ranged B at the beginning of the fight."], LIST_SIZE),
				},
			}
		},
		
		ranged2 = {
			type = "group",
			name = L["Ranged B"],
			order = newOrder(),
			args = {
				desc = {
					order = 0,
					type = "description",
					name = format(L["Choose up to %d players who act as ranged DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.\n\nHigher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot)."], LIST_SIZE),
				},
			}
		},


--[[ Healers ]]----------------------------------------------------------------------------------------------------------------------

		healers = {
			type = "group",
			name = L["Healers"],
			order = newOrder(),
			args = {
				desc = {
					order = 0,
					type = "description",
					name = L["Choose up to 10 players who act as healers for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.\n\nHigher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to DPS mid-raid, just empty them out of the slot)."],
				},
			}
		},


--[[ Tanks ]]------------------------------------------------------------------------------------------------------------------------

		tanks = {
			type = "group",
			name = L["Tanks"],
			order = newOrder(),
			args = {
			
				desc = {
					order = 0,
					type = "description",
					name = L["The off-tank will be chosen once all melee and ranged DPS have been bitten (or died). After that, all healers will be chosen. The main tank is the very last player chosen to be bitten."],
				},

				mainTank = {
					order = newOrder(),
					type = "select",
					name = L["Main tank"],
					values = function() return Vamp:GetUnitsForDropdown("tanks", 1) end,
					get = function() return Vamp.db.profile.tanks[1] end,
					set = function(self, val) Vamp.db.profile.tanks[1] = val end,
				}, -- mainTank
				
				offTank = {
					order = newOrder(),
					type = "select",
					name = L["Off tank"],
					values = function() return Vamp:GetUnitsForDropdown("tanks", 2) end,
					get = function() return Vamp.db.profile.tanks[2] end,
					set = function(self, val) Vamp.db.profile.tanks[2] = val end,
				}, -- offTank
				
			}
		},

	}
}



-- Generate unit options
for i = 1, LIST_SIZE do
	Vamp.options.args.melee.args["melee"..i] = {
		order = i,
		type = "select",
		name = L["Priority "]..tostring(i),
		values = function() return Vamp:GetUnitsForDropdown("melee", i) end,
		get = function() return Vamp.db.profile.melee[i] end,
		set = function(self, val) Vamp.db.profile.melee[i] = val end,
	}
end

for i = 1, LIST_SIZE do
	Vamp.options.args.ranged.args["ranged"..i] = {
		order = i,
		type = "select",
		name = L["Priority "]..tostring(i),
		values = function() return Vamp:GetUnitsForDropdown("ranged", i) end,
		get = function() return Vamp.db.profile.ranged[i] end,
		set = function(self, val) Vamp.db.profile.ranged[i] = val end,
	}
end

for i = 1, LIST_SIZE do
	Vamp.options.args.ranged2.args["ranged2"..i] = {
		order = i,
		type = "select",
		name = L["Priority "]..tostring(i),
		values = function() return Vamp:GetUnitsForDropdown("ranged2", i) end,
		get = function() return Vamp.db.profile.ranged2[i] end,
		set = function(self, val) Vamp.db.profile.ranged2[i] = val end,
	}
end

for i = 1, 10 do
	Vamp.options.args.healers.args["healers"..i] = {
		order = i,
		type = "select",
		name = L["Priority "]..tostring(i),
		values = function() return Vamp:GetUnitsForDropdown("healers", i) end,
		get = function() return Vamp.db.profile.healers[i] end,
		set = function(self, val) Vamp.db.profile.healers[i] = val end,
	}
end



function Vamp:GetUnitsForDropdown(type, num)
	local t = { [""] = "" }
	
	if Vamp.db.profile[type][num] then
		local playerName = Vamp.db.profile[type][num]
		t[playerName] = colorize(playerName, GRAY_FONT_COLOR)
	end
	
	if Vamp.db.profile.choiceMethod == 1 then
		if not UnitInRaid("player") then return t end
			local numRaid = GetNumRaidMembers()
			for i = 1, numRaid do
				local playerName, rank, subgroup, level, class, fileName, zone, online, isDead, role, isML = GetRaidRosterInfo(i)
				local found = false
				for index, playerName2 in pairs(Vamp.db.profile.melee) do
					if playerName2 == playerName and ((type == "melee" and index ~= num) or type ~= "melee") then
						found = true
						break
					end
				end
				for index, playerName2 in pairs(Vamp.db.profile.ranged) do
					if playerName2 == playerName and ((type == "ranged" and index ~= num) or type ~= "ranged") then
						found = true
						break
					end
				end
				for index, playerName2 in pairs(Vamp.db.profile.ranged2) do
					if playerName2 == playerName and ((type == "ranged2" and index ~= num) or type ~= "ranged2") then
						found = true
						break
					end
				end
				for index, playerName2 in pairs(Vamp.db.profile.healers) do
					if playerName2 == playerName and ((type == "healers" and index ~= num) or type ~= "healers") then
						found = true
						break
					end
				end
				for index, playerName2 in pairs(Vamp.db.profile.tanks) do
					if playerName2 == playerName and ((type == "tanks" and index ~= num) or type ~= "tanks") then
						found = true
						break
					end
				end
				if not found and playerName and playerName ~= "" then t[playerName] = colorize(playerName, (RAID_CLASS_COLORS[({UnitClass(playerName)})[2]])) end
			end
			
	else
		for playerName, attributes in pairs(guildList) do
			if (attributes[1] + 1) <= (Vamp.db.profile.choiceMethod - 1) then
				local found = false
				for index, playerName2 in pairs(Vamp.db.profile.melee) do
					if playerName2 == playerName and ((type == "melee" and index ~= num) or type ~= "melee") then
						found = true
						break
					end
				end
				for index, playerName2 in pairs(Vamp.db.profile.ranged) do
					if playerName2 == playerName and ((type == "ranged" and index ~= num) or type ~= "ranged") then
						found = true
						break
					end
				end
				for index, playerName2 in pairs(Vamp.db.profile.ranged2) do
					if playerName2 == playerName and ((type == "ranged2" and index ~= num) or type ~= "ranged2") then
						found = true
						break
					end
				end
				for index, playerName2 in pairs(Vamp.db.profile.healers) do
					if playerName2 == playerName and ((type == "healers" and index ~= num) or type ~= "healers") then
						found = true
						break
					end
				end
				for index, playerName2 in pairs(Vamp.db.profile.tanks) do
					if playerName2 == playerName and ((type == "tanks" and index ~= num) or type ~= "tanks") then
						found = true
						break
					end
				end
				if not found then t[playerName] = colorize(playerName, RAID_CLASS_COLORS[attributes[2]]) end
			end
		end
	end
	return t
end


function Vamp:ClearAllLists()
	self.db.profile.melee = {}
	self.db.profile.ranged = {}
	self.db.profile.ranged2 = {}
	self.db.profile.healers = {}
	self.db.profile.tanks = {}
	LibStub("AceConfigRegistry-3.0"):NotifyChange("Vamp")
end



--[[
      INITIALIZATION -----------------------------------------------------------------------------------------------------------
  ]]

function Vamp:OnInitialize()
 self.db = LibStub("AceDB-3.0"):New("VampDB", self.defaults, "Default")
	self.db.RegisterCallback(self, "OnProfileChanged", "OnProfileChanged")
	self.db.RegisterCallback(self, "OnProfileCopied", "OnProfileChanged")
	self.db.RegisterCallback(self, "OnProfileReset", "OnProfileChanged")
	self.db.RegisterCallback(self, "OnProfileDeleted", "OnProfileChanged")
		
	LibStub("AceConfig-3.0"):RegisterOptionsTable("Vamp", Vamp.options)
	Vamp.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Vamp", "Vamp")
	LibStub("AceConfig-3.0"):RegisterOptionsTable("Vamp-Profiles", LibStub("AceDBOptions-3.0"):GetOptionsTable(Vamp.db))
	Vamp.profilesFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Vamp-Profiles", "Profiles", "Vamp")

	self:RegisterChatCommand("vamp", "ChatCommand")
end


function Vamp:OnEnable()
	self:UnregisterAllEvents()
	self:RegisterEvent("GUILD_ROSTER_UPDATE", "OnEvent")
	self:RegisterEvent("RAID_ROSTER_UPDATE", "OnEvent")
	self:RegisterEvent("PLAYER_REGEN_DISABLED", "OnEvent")
	self:RegisterEvent("CHAT_MSG_MONSTER_YELL", "OnEvent")

	self:UnregisterAllComm()
	self:RegisterComm(commPrefix, "OnCommReceived")

	GuildRoster()
	self:UpdateRaid()
	isEnabled = self.db.profile.enabled

	--[===[@debug@
	self:Print("Loaded")
	--@end-debug@]===]
end


function Vamp:ChatCommand(input)
	if strlower(input) == "ver" then
		self:VersionCheck()
	else
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
	end
end


function Vamp:OnProfileChanged(event, database, newProfileKey)
	--[===[@debug@
	self:Print("Profile modified, rebooting")
	--@end-debug@]===]
	
 self:Disable()
 self:Enable() 
end


function Vamp:VersionCheck()
	if UnitInRaid("player") then
		ver = {}
		self:SendCommMessage(commPrefix, self:Serialize({ c = "VER_REQ" }), "RAID")
		self:ScheduleTimer("OnVersionCheckFinished", 5)
	end
end


function Vamp:OnVersionCheckFinished()
	if UnitInRaid("player") then
		local count = 0
		for k, v in pairs(ver) do count = count + 1 end
		local numNot = GetNumRaidMembers() - count
		if numNot < 0 then numNot = 0 end
		self:Print(format(L["%d player(s) are running VampArrow. %d player(s) are not."], count, numNot))
	end
end


function Vamp:StartFight()
	if not self.inCombat and isEnabled then
		self.inCombat = true
		self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED", "OnCombatEvent")
		self:ResetFight()
		self:ScheduleRepeatingTimer("OnTimer", POLLING_FREQUENCY)
	end
end


function Vamp:EndFight()
	self.inCombat = false
	self:CancelAllTimers()
	self:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
end


function Vamp:CheckMonsterYell(chatMsg, chatAuthor)
	if chatMsg and chatAuthor and chatMsg == L["YELL_AGGRO"] and chatAuthor == L["Blood-Queen Lana'thel"] then
		mod:StartFight()
	end
end


do -- Pull detection
	local t = { "target", "targettarget", "focus", "focustarget", "mouseover", "mouseovertarget" }
	for i = 1, 4 do t[#t+1] = format("party%dtarget", i) end
	for i = 1, 40 do t[#t+1] = format("raid%dtarget", i) end
	
	local function doCheckForPull(id, num)
		
		for _, unit in pairs(t) do
			if UnitExists(unit) and not UnitIsPlayer(unit) and tonumber(UnitGUID(unit):sub(-12, -7), 16) == id then
				if UnitAffectingCombat(unit) then
					mod:StartFight()
					return true
				elseif num < 30 then
					mod:ScheduleTimer(function() doCheckForPull(id, num + 1) end, 1)
				end
				return
			end
		end
	end

	function mod:CheckForPull()
		if UnitInRaid("player") then 
			if mod.inCombat then return end
			
			for _, id in pairs(pullNPCs) do 
				if doCheckForPull(id, 0) then 
					return 
				end 
			end 
		end
	end
end

do -- Wipe/defeat detection
	local function doCheckForWipe()
		for i = 0, GetNumRaidMembers() do
			local id = (i == 0 and "player") or "raid"..i
			if UnitAffectingCombat(id) and not UnitIsDeadOrGhost(id) then return false end
		end
		return true
	end

	local possibleWipe = false
	function mod:CheckForWipe()
		if doCheckForWipe() and not possibleWipe then
			possibleWipe = true
			self:ScheduleTimer(function()
				if doCheckForWipe() then
					possibleWipe = false
					mod:EndFight()
				end
			end, 5)
		end
	end
	
	local dead = {}
	function mod:CheckForDefeat(guid)
		if bit.band(guid:sub(1, 5), 16) == 3 or bit.band(guid:sub(1, 5), 16) == 5 then
			local id = tonumber(guid:sub(9, 12), 16)
			for _, v in pairs(defeatNPCs) do
				if id == v then dead[v] = true end
				if not dead[v] then return end
			end
			dead = {}
			mod:EndFight()
		end
	end
end



--[[
      EVENTS -------------------------------------------------------------------------------------------------------------------
  ]]

function Vamp:OnCommReceived(prefix, message, distribution, sender)
 local success, o = self:Deserialize(message)
 if success == false then
		--[===[@debug@
  self:Print("[OnCommReceived] Failed to deserialize message")
		--@end-debug@]===]
  return
 else
		if o.c then
		
			if o.c == "VER" then
				if o.v then
					ver[sender] = o.v
					self:Print(format(L["%s is using VampArrow r%s"], sender, o.v))
				end
			end
			
		end
 end
end


function Vamp:OnEvent(event, ...)
	if event == "GUILD_ROSTER_UPDATE" then
		local num = GetNumGuildMembers(true)
		guildList = {}
		for i = 1, num do
			local name, rank, rankIndex, level, class, zone, note, officernote, online, status, classFileName = GetGuildRosterInfo(i)
			if level >= 80 then guildList[name] = { rankIndex, classFileName } end
		end
	elseif event == "RAID_ROSTER_UPDATE" then
		self:UpdateRaid()
	elseif event == "PLAYER_REGEN_DISABLED" and isEnabled then
		self:CheckForPull()			
	elseif event == "CHAT_MSG_MONSTER_YELL" and isEnabled then 	-- ... = chatMsg, chatAuthor
		self:CheckMonsterYell(...)
	end
end


function Vamp:UpdateRaid()
	if UnitInRaid("player") then
		if not self.inCombat then raid = {} end
		local numRaid = GetNumRaidMembers()
		for i = 1, numRaid do
			local playerName, rank, subgroup, level, class, fileName, zone, online, isDead, role, isML = GetRaidRosterInfo(i)
			if playerName then
				if not self.inCombat then
					raid[playerName] = {}
					raid[playerName].group = subgroup
					raid[playerName].rank = rank
					raid[playerName].isVampire = false
					raid[playerName].isBiting = false
					raid[playerName].mindControlled = false
				else
					if not raid[playerName] then raid[playerName] = {} end
					raid[playerName].group = subgroup
					raid[playerName].rank = rank

					if not online or isDead then
						-- Someone died or disconnected during combat. Let's see if it's someone we care about
						if raid[playerName] and raid[playerName].group <= 5 then
						
							-- Status
							if isDead then
								raid[playerName].isVampire = false
								raid[playerName].isBiting = false
								raid[playerName].mindControlled = false
							end

							-- Clear any victim this player had
							if raid[playerName].yourVictim then
								raid[raid[playerName].yourVictim].isVictim = false
							end
							raid[playerName].yourVictim = nil
							
							-- Clear any marks this player was assigned to
							if raid[playerName].yourIcon then
								marks[raid[playerName].yourIcon] = ""
							end
							raid[playerName].yourIcon = nil

							-- If the disconnected person was a bite target, find out who was biting them and give them a new assignment
							if raid[playerName].isVictim then
								raid[playerName].isVictim = nil
								for k, v in pairs(raid) do
									if v.yourVictim == playerName then
										local reason = L["disconnected"]
										if isDead then reason = L["died"] end
										self:Log(false, "%s "..reason, playerName)
										self:AssignTarget(k, playerName, reason)
										break
									end
								end
							end -- was a bite victim
							
						end -- was a player in groups 1-5
					end -- disconnected player
				end -- in combat
			end -- playerName not nil
		end -- player loop
	end -- we're in a raid
end



--[[
      FIGHT LOGIC --------------------------------------------------------------------------------------------------------------
  ]]

function Vamp:Log(verbose, s, ...)
	if verbose and not self.db.profile.verboseLog then return end
	if self.db.profile.log then
  if self.db.profile.outputTo == "SELF" then
   DEFAULT_CHAT_FRAME:AddMessage(format(s, ...))
  else
			local channel
			if self.db.profile.outputTo == "CHANNEL" then
				channel = GetChannelName(self.db.profile.channel)
				if channel == nil or channel == "" then return end
			end
			ChatThrottleLib:SendChatMessage("NORMAL", "Vamp", format(s, ...), self.db.profile.outputTo, GetDefaultLanguage("player"), channel)
  end
	end
end


function Vamp:ResetFight()
	marks = {
		[1] = "",
		[2] = "",
		[3] = "",
		[4] = "",
		[5] = "",
		[6] = "",
		[7] = "",
		[8] = "",
	}
	
	if self.db.profile.clearMarks then
		local numRaid = GetNumRaidMembers()
		for i = 1, numRaid do
			local name, rank, subgroup, level, class, fileName, zone, online, isDead, role, isML = GetRaidRosterInfo(i)
			SetRaidTarget(name, 0)
		end
	end
end


function Vamp:OnTimer()
	-- Set raid marks
	for mark, player in pairs(marks) do
		if player ~= "" then
			if GetRaidTargetIndex(player) ~= mark then
				SetRaidTarget(player, mark)
			end
		end
	end
	
	self:UpdateRaid()
	self:CheckForWipe()
end


function Vamp:ShouldEnable()
	local s = UnitName("player")
	if UnitInRaid("player") and s and raid[s] and raid[s].rank and raid[s].rank > 0 then return true end
	return false
end
 

function Vamp:AssignTarget(playerName, deadPlayer, reason)
	local message, log, markMessage, victimMessage, prefix

	if isEnabled and not UnitIsDead(playerName) and UnitIsConnected(playerName) and not raid[playerName].mindControlled and self:ShouldEnable() then
		if self.db.profile.filterOutgoing then prefix = TOKEN.." " else prefix = "" end
		local biteTarget = self:GetBiteTarget(playerName)
		if biteTarget then
		
			raid[playerName].yourVictim = biteTarget
			raid[biteTarget].isVictim = true
			raid[playerName].yourIcon = nil
			raid[playerName].yourIcon = self:GetRaidIcon()
			
			message = "---->> "..strupper(biteTarget).."  "
			victimMessage = format(L["%s is coming to bite you!"].."  ", playerName)
			if self.db.profile.reverseMarks then victimMessage = format(L["Feed yourself to %s!"].."  ", strupper(playerName)) end
			log = format(L["%s assigned to bite %s (who is a %s)  "], playerName, biteTarget, self:GetPlayerType(biteTarget) or "unknown")
			if reason then message = "---->> "..format(L["Your bite target %s. Please bite -->> "], reason)..strupper(biteTarget).."  " end
			markMessage = L["(No raid mark)"]
			if raid[playerName].yourIcon then
				markMessage = "{rt"..raid[playerName].yourIcon.."} {rt"..raid[playerName].yourIcon.."} {rt"..raid[playerName].yourIcon.."}"
				if self.db.profile.reverseMarks then
					marks[raid[playerName].yourIcon] = playerName
				else
					marks[raid[playerName].yourIcon] = biteTarget
				end
			end
			if self.db.profile.reverseMarks then
				victimMessage = victimMessage..markMessage
			else
				message = message..markMessage
			end
			log = log..markMessage

			local announceA = self.db.profile.arrowAnnounce
			local announceB = self.db.profile.arrowAnnounce
			local reverse = false
			local doMarkA = true
			local doMarkB = true
			if self.db.profile.reverseMarks then
				reverse = true
				announceB = false
				doMarkA = false
			else
				announceA = false
				doMarkB = false
			end
			
			self:SendCommMessage(commPrefix, self:Serialize({ c = "SET", t = biteTarget, a = announceA, r = reverse, m = raid[playerName].yourIcon, dm = doMarkA }), "WHISPER", playerName)
			self:SendCommMessage(commPrefix, self:Serialize({ c = "SET", t = playerName, a = announceB, r = reverse, m = raid[playerName].yourIcon, dm = doMarkB }), "WHISPER", biteTarget)
			ChatThrottleLib:SendChatMessage("NORMAL", "Vamp", prefix..message, "WHISPER", GetDefaultLanguage("player"), playerName)
			ChatThrottleLib:SendChatMessage("NORMAL", "Vamp", prefix..victimMessage, "WHISPER", GetDefaultLanguage("player"), biteTarget)
			self:Log(false, log)
		else
			if reason then
				ChatThrottleLib:SendChatMessage("NORMAL", "Vamp", prefix..format(L["Your bite target %s. There is no bite target left for you!"], reason), "WHISPER", GetDefaultLanguage("player"), playerName)
			else
				ChatThrottleLib:SendChatMessage("NORMAL", "Vamp", prefix..L["No bite target left for you!"], "WHISPER", GetDefaultLanguage("player"), playerName)
			end
			self:Log(false, L["%s could not be assigned any bite target"], playerName)
		end
	end
	if reason and self.db.profile.raidWarn and GetTime() - lastRaidWarning >= self.db.profile.raidWarnThrottle then
		lastRaidWarning = GetTime()
		ChatThrottleLib:SendChatMessage("NORMAL", "Vamp", L["One or more bite targets died or were disconnected. Check for new assignments."], "RAID_WARNING")
	end
end


function Vamp:GetPlayerType(playerName)
	for k, v in pairs(self.db.profile.melee) do
		if playerName == v then return "melee" end
	end
	for k, v in pairs(self.db.profile.ranged) do
		if playerName == v then return "ranged" end
	end
	for k, v in pairs(self.db.profile.ranged2) do
		if playerName == v then return "ranged2" end
	end
	for k, v in pairs(self.db.profile.healers) do
		if playerName == v then return "healer" end
	end
	for k, v in pairs(self.db.profile.tanks) do
		if playerName == v then return "tank" end
	end
	return "unlisted"
end


function Vamp:AnyMeleeBit()
	for k, v in pairs(self.db.profile.melee) do
		if raid[v] and raid[v].group <= 5 and (raid[v].isVampire or raid[v].isVictim) and not raid[v].mindControlled and not UnitIsDead(v) and UnitIsConnected(v) then return true end
	end
	return false
end


function Vamp:AnyRangedBit()
	for k, v in pairs(self.db.profile.ranged) do
		if raid[v] and raid[v].group <= 5 and (raid[v].isVampire or raid[v].isVictim) and not raid[v].mindControlled and not UnitIsDead(v) and UnitIsConnected(v) then return true end
	end
	for k, v in pairs(self.db.profile.ranged2) do
		if raid[v] and raid[v].group <= 5 and (raid[v].isVampire or raid[v].isVictim) and not raid[v].mindControlled and not UnitIsDead(v) and UnitIsConnected(v) then return true end
	end
	return false
end


function Vamp:AnyRanged1Bit()
	for k, v in pairs(self.db.profile.ranged) do
		if raid[v] and raid[v].group <= 5 and (raid[v].isVampire or raid[v].isVictim) and not raid[v].mindControlled and not UnitIsDead(v) and UnitIsConnected(v) then return true end
	end
	return false
end


function Vamp:AnyRanged2Bit()
	for k, v in pairs(self.db.profile.ranged2) do
		if raid[v] and raid[v].group <= 5 and (raid[v].isVampire or raid[v].isVictim) and not raid[v].mindControlled and not UnitIsDead(v) and UnitIsConnected(v) then return true end
	end
	return false
end


function Vamp:AnyHealerBit()
	for k, v in pairs(self.db.profile.healers) do
		if raid[v] and raid[v].group <= 5 and (raid[v].isVampire or raid[v].isVictim) and not raid[v].mindControlled and not UnitIsDead(v) and UnitIsConnected(v) then return true end
	end
	return false
end


function Vamp:GetRaidIcon()
	for i = 1, 8 do
		local used = false
		for k, v in pairs(raid) do
			if v.group <= 5 and v.yourIcon and v.yourIcon == i then used = true end
		end
		if not used then return i end
	end
	return nil
end


function Vamp:FindTarget(type)
	if type == "unlisted" then
		for k, v in pairs(raid) do
			if self:GetPlayerType(k) == "unlisted" and self:IsValidTarget(k) then
				return k
			end
		end
	else
		for i = 1, LIST_SIZE do
			if self.db.profile[type][i] and self.db.profile[type][i] ~= "" and self:IsValidTarget(self.db.profile[type][i]) then
				return self.db.profile[type][i]
			end
		end
	end
	return nil
end


function Vamp:IsValidTarget(name)
	if raid[name] and raid[name].group <= 5 and not raid[name].isVampire and not raid[name].isVictim and not raid[name].isBiting and not UnitIsDead(name) and UnitIsConnected(name) and not raid[name].mindControlled then
		return true
	else
		return false
	end
end


function Vamp:GetBiteTarget(playerName)
 -- Check which type of player is doing the biting and decide which type they should bite.
 -- NOTE: "desiredVictimType" in this case does NOT correspond to all of the configurable player types
 -- (melee, ranged, ranged2, tank, healer, unlisted). It actually just comes down to a binary decision
 -- between melee or ranged. We then look at the actual playerType of the biter to determine if
 -- we need to bite somebody special. This is where we'll decide to seed Melee or Ranged if needed.
 local playerType = self:GetPlayerType(playerName)
 local desiredVictimType = "melee"
 if playerType == "healer" then
		if self:AnyMeleeBit() then desiredVictimType = "ranged" else desiredVictimType = "melee" end
 elseif playerType == "tank" then desiredVictimType = "melee"
 elseif playerType == "ranged" or playerType == "ranged2" then
		if self:AnyMeleeBit() then desiredVictimType = "ranged" else desiredVictimType = "melee" end
 elseif playerType == "melee" then
		if self:AnyRangedBit() or self:AnyHealerBit() then desiredVictimType = "melee" else desiredVictimType = "ranged" end
 end
 
 self:Log(true, L["%s is %s; desired victim type is %s"], playerName, playerType, desiredVictimType)

	-- Get a target. Here's where we look at the actual playerType of the biter
	-- to determine if we should bite someone special. This is where we'll decide to
	-- seed Ranged A or Ranged B if needed.
	if desiredVictimType == "melee" then
		local target = self:FindTarget("melee")
		if target then return target end
		if playerType == "ranged2" then
			target = self:FindTarget("ranged2")
			if target then return target end
			target = self:FindTarget("ranged")
			if target then return target end
		else
			target = self:FindTarget("ranged")
			if target then return target end
			target = self:FindTarget("ranged2")
			if target then return target end
		end
		if self.db.profile.tanks[2] and self.db.profile.tanks[2] ~= "" and self:IsValidTarget(self.db.profile.tanks[2]) then return self.db.profile.tanks[2] end
		if self.db.profile.biteUnlisted then
			target = self:FindTarget("unlisted")
			if target then return target end
		end
		target = self:FindTarget("healers")
		if target then return target end
		if self.db.profile.tanks[1] and self.db.profile.tanks[1] ~= "" and self:IsValidTarget(self.db.profile.tanks[1]) then return self.db.profile.tanks[1] end
		
	else
		if playerType == "ranged2" then
			if self:AnyRanged1Bit() then
				target = self:FindTarget("ranged2")
				if target then return target end
				target = self:FindTarget("ranged")
				if target then return target end
			else
				target = self:FindTarget("ranged")
				if target then return target end
				target = self:FindTarget("ranged2")
				if target then return target end
			end
		else
			if self:AnyRanged2Bit() then
				target = self:FindTarget("ranged")
				if target then return target end
				target = self:FindTarget("ranged2")
				if target then return target end
			else
				target = self:FindTarget("ranged2")
				if target then return target end
				target = self:FindTarget("ranged")
				if target then return target end
			end
		end
		target = self:FindTarget("melee")
		if target then return target end
		if self.db.profile.tanks[2] and self.db.profile.tanks[2] ~= "" and self:IsValidTarget(self.db.profile.tanks[2]) then return self.db.profile.tanks[2] end
		if self.db.profile.biteUnlisted then
			target = self:FindTarget("unlisted")
			if target then return target end
		end
		target = self:FindTarget("healers")
		if target then return target end
		if self.db.profile.tanks[1] and self.db.profile.tanks[1] ~= "" and self:IsValidTarget(self.db.profile.tanks[1]) then return self.db.profile.tanks[1] end

	end
	
	-- Couldn't find a target
	return nil
end


function Vamp:OnCombatEvent(event, timestamp, eventType, srcGuid, srcName, srcFlags, dstGuid, dstName, dstFlags, spellId, spellName, spellSchool, auraType)
	if isEnabled then
	
		if eventType == "SPELL_AURA_APPLIED" or eventType == "SPELL_AURA_REFRESH" then
			local playerName = dstName
			if raid[playerName] then
				
				---------------------------- Player was just bit or successfully bit another player
				if spellName == vampireDebuff or spellId == testDebuff then
				
					-- Turn on chat logging if necessary
					if self.db.profile.enableChatLogging then
						if not LoggingChat() then
							self:Print(L["Enabling chat logging"])
							LoggingChat(1)
						end
					end
				
					-- Status
					raid[playerName].isVampire = true
					raid[playerName].isBiting = false
					
					-- Clear any victim this player had
					if raid[playerName].yourVictim then
						raid[raid[playerName].yourVictim].isVictim = false
					end
					raid[playerName].yourVictim = nil
					
					-- Clear any marks this player was assigned to
					if raid[playerName].yourIcon then
						marks[raid[playerName].yourIcon] = ""
					end
					raid[playerName].yourIcon = nil
	    
	    -- Schedule a bite assignment
	    if not raid[playerName].mindControlled then
						if srcName == dstName then
							self:Log(true, L["%s bit someone else successfully, renewing their vampirism"], playerName)
						else
							self:Log(true, L["%s was bitten by %s"], playerName, srcName or L["Unknown"])
							if raid[srcName] and raid[srcName].frenzyTime then
								self:Log(true, L["%s took %d seconds to bite another player"], srcName, GetTime() - raid[srcName].frenzyTime)
								raid[srcName].frenzyTime = nil
							end
						end
						self:ScheduleTimer(function() Vamp:AssignTarget(playerName) end, self.db.profile.assignmentDelay)
					end
							
		
				---------------------------- Player is in frenzy mode, they must bite someone
				elseif spellName == vampireFrenzyDebuff then

					raid[playerName].isVampire = false
					raid[playerName].isBiting = true
					if raid[playerName] then raid[playerName].frenzyTime = GetTime() end
					self:Log(true, L["%s entered frenzy mode, and must bite someone soon"], playerName)

				
				---------------------------- Player was MCed
				elseif spellName == mindControlledDebuff then
				
					-- Status
					raid[playerName].isVampire = false
					raid[playerName].isBiting = false
					raid[playerName].mindControlled = true
					
					-- Clear any victim this player had
					if raid[playerName].yourVictim then
						raid[raid[playerName].yourVictim].isVictim = false
					end
					raid[playerName].yourVictim = nil
					
					-- Clear any marks this player was assigned to
					if raid[playerName].yourIcon then
						marks[raid[playerName].yourIcon] = ""
					end
					raid[playerName].yourIcon = nil
					
					self:Log(false, L["%s was mind controlled"], playerName)


				end -- spell
			end -- player is someone we care about
			
		elseif eventType == "UNIT_DIED" or eventType == "UNIT_DESTROYED" then
			self:CheckForDefeat(dstGuid)
		
		end -- eventType
	end -- addon enabled
end


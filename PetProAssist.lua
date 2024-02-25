-- Library of GUI Hub
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Pet Simulator 99", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Hi! It's best script for Pet Sim 99!"})

-- 1 Level
local ws = game:GetService("Workspace")
local rs = game:GetService("ReplicatedStorage")

-- 2 Level
local th = ws["__THINGS"]
local nw = rs.Network

-- 3 Level
local bu = th.Breakables
local b_pdd = nw["Breakables_PlayerDealDamage"]

-- Removing unnecessary objects that interfere with the script
bu.Highlight:Destroy()

-- Global variables controlling the operation of repeating functions
_G.autoTap = false

-- Functions
local function FS(fun, args)
    fun:FireServer(unpack(args))
end

local function IS(fun, args)
    fun:InvokeServer(unpack(args))
end

local function AutoTap()
    while _G.autoTap do
        for i,v in ipairs(bu:GetChildren()) do
            if not _G.autoTap then return end
            tab = {[1] = v.Name}
            FS(b_pdd, tab)
            wait(0.000000001)
        end
        wait(0.000000001)
    end
end

    -- Tabs
    local TabAutoFarm = Window:MakeTab({
	    Name = "AutoFarm",
	    Icon = "rbxassetid://12767693169",
	    PremiumOnly = false
    })

        -- Sections
        local STAF = TabAutoFarm:AddSection({
	        Name = "Farm"
        })

            -- Toggles
            TabAutoFarm:AddToggle({
	            Name = "AutoTap Buildings",
	            Default = false,
	            Callback = function(Value)
		            _G.autoTap = Value
		            AutoTap()
	            end    
            })

-- Library of GUI Hub
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Pet Simulator 99", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Hi! It's best script for Pet Sim 99!"})

-- 1 Level
local ws = game:GetService("Workspace")
local rs = game:GetService("ReplicatedStorage")
local p = game:GetService("Players")

-- 2 Level
local th = ws["__THINGS"]
local nw = rs.Network
local lp = p.LocalPlayer

-- 3 Level
local bu = th.Breakables
local b_pdd = nw["Breakables_PlayerDealDamage"]

-- Global variables controlling the operation of repeating functions
_G.autoTap = false
_G.posOfPlayer = nil

-- Functions
local function GP()
    if lp.Character then
        h = lp.Character:FindFirstChild("HumanoidRootPart")
        if h then return true else return false end
    end
end

local function FS(fun, args)
    fun:FireServer(unpack(args))
end

local function IS(fun, args)
    fun:InvokeServer(unpack(args))
end

local function SD(ob)
    if ob then ob:Destroy() end
end

local function CR(n)
    if _G.posOfPlayer then
        region = Region3.new(_G.posOfPlayer - Vector3.new(n, n, n), _G.posOfPlayer + Vector3.new(n, n, n))
        return workspace:FindPartsInRegion3(region, nil, math.huge)
    end
end

local function AutoTap()
    while _G.autoTap do
        tab = CR(10)
        for i,v in ipairs(tab) do
            if not _G.autoTap then return end
            tab = {[1] = v.Name}
            FS(b_pdd, tab)
            wait(0.000000001)
        end
        wait(0.000000001)
    end
end

-- Removing unnecessary objects that interfere with the script
SD(bu:FindFirstChild("Highlight"))

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

            TabAutoFarm:AddButton({
	            Name = "Setup Position",
	            Callback = function()
                    if GP() then
      		            _G.posOfPlayer = lp.Character.HumanoidRootPart.Position
                    end
  	            end    
            })

-- Init (REQUIRED)
OrionLib:Init()

-- Library of GUI Hub
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

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

-- Local variables
local Rmi = nil
local Rma = nil

-- Functions
local function GP()
    if lp.Character then
        local h = lp.Character:FindFirstChild("HumanoidRootPart")
        if h then return true else return false end
    end
end

local function SR(n)
    Rmi = _G.posOfPlayer - Vector3.new(n, n, n)
    Rma = _G.posOfPlayer + Vector3.new(n, n, n)
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

local function CR()
    if _G.posOfPlayer then
        local TRP2 = {}
        local CB = bu:GetChildren()
        for i = 1, #CB do
			local OPP = CB[i].PrimaryPart
            if OPP then
                local OPP2 = OPP.Position
                if OPP2.X >= Rmi.X and OPP2.X <= Rma.X and OPP2.Y >= Rmi.Y and OPP2.Y <= Rma.Y and OPP2.Z >= Rmi.Z and OPP2.Z <= Rma.Z then
                    table.insert(TRP2, CB[i].Name)
                end
            end
        end
        return TRP2
    end
end

local function AutoTap()
    while _G.autoTap do
        SR(100)
        local TRP = CR()
        for i = 1, #TRP do
	        print(TRP[i])
            if not _G.autoTap then return end
            FS(b_pdd, {[1] = TRP[i]})
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

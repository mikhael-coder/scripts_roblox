local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Pet Simulator 99", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Hi! It's best script for Pet Sim 99!"})

local ws = game:GetService("Workspace")
local rs = game:GetService("ReplicatedStorage")

local th = ws["__THINGS"]
local nw = rs.Network

local bu = th.Breakables
local b_pdd = nw["Breakables_PlayerDealDamage"]

_G.autoTap = false

local function FS(fun, args)
    fun:FireServer(unpack(args))
end

local function IS(fun, args)
    fun:InvokeServer(unpack(args))
end

local function AutoTap()
    while _G.autoTap do
        bu.Highlight:Destroy()
        for i,v in ipairs(bu:GetChildren()) do
            if not _G.autoTap then return end
            tab = {[1] = v.Name}
            FS(b_pdd, tab)
            wait(0.001)
        end
        wait(0.001)
    end
end

    local TabAutoFarm = Window:MakeTab({
	    Name = "AutoFarm",
	    Icon = "rbxassetid://12767693169",
	    PremiumOnly = false
    })

        local STAF = TabAutoFarm:AddSection({
	        Name = "Farm"
        })

            TabAutoFarm:AddToggle({
	            Name = "AutoTap Buildings",
	            Default = false,
	            Callback = function(Value)
		            _G.autoTap = Value
		            AutoTap()
	            end    
            })

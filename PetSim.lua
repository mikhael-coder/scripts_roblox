local networkService = game:GetService("ReplicatedStorage"):WaitForChild("Network")
local scripts = game:GetService("ReplicatedStorage"):WaitForChild("__DIRECTORY")
local space = game:GetService("Workspace")
local keyboard = game:GetService("VirtualInputManager")
local mineDig = networkService:WaitForChild("Instancing_FireCustomFromClient")
local merchantRequest = networkService:WaitForChild("Merchant_RequestPurchase")
local claimGift = networkService:WaitForChild("Redeem Free Gift")
local claimVending = networkService:WaitForChild("VendingMachines_Purchase")
local claimCoin = networkService:WaitForChild("Orbs: Collect")
local vendingMachines = scripts:WaitForChild("VendingMachines")
local PotionVendingMachine1 = vendingMachines["VendingMachine | PotionVendingMachine1"]
local PotionVendingMachine2 = vendingMachines["VendingMachine | PotionVendingMachine2"]
local RarePotionsVendingMachine1 = vendingMachines["VendingMachine | RarePotionsVendingMachine1"]
local OPPotionsVendingMachine1 = vendingMachines["VendingMachine | OPPotionsVendingMachine1"]
local EnchantVendingMachine1 = vendingMachines["VendingMachine | EnchantVendingMachine1"]
local EnchantVendingMachine2 = vendingMachines["VendingMachine | EnchantVendingMachine2"]
local RareEnchantsVendingMachine1 = vendingMachines["VendingMachine | RareEnchantsVendingMachine1"]
local FruitVendingMachine1 = vendingMachines["VendingMachine | FruitVendingMachine1"]
local FruitVendingMachine2 = vendingMachines["VendingMachine | FruitVendingMachine2"]
local Orbs = space.__THINGS.Orbs
local ActiveContainer = space.__THINGS.__INSTANCE_CONTAINER.Active
local player = game:GetService("Players").LocalPlayer

_G.autoBuyRegularMerchant = false
_G.autoBuyAdvancedMerchant = false
_G.autoBuyGardenMerchant = false
_G.autoBuySnowMerchant = false
_G.autoClaimGifts = false
_G.autoClaimSmallDiamonds = false
_G.autoClaimFreePotions = false
_G.autoClaimFreeEnchants = false
_G.autoClaimFreeItems = false
_G.autoClaimBigDiamonds = false
_G.autoClaimVending1 = false
_G.autoClaimVending2 = false
_G.autoClaimVending3 = false
_G.autoClaimVending4 = false
_G.autoClaimVending5 = false
_G.autoClaimVending6 = false
_G.autoClaimVending7 = false
_G.autoClaimVending8 = false
_G.autoClaimVending9 = false
_G.autoCollect = false
_G.autoAFK = false
_G.typeMine = ""
_G.autoMine = false

local function GetPlayer()
    playerHumanoid = player.Character
    if playerHumanoid then
        RootPart = playerHumanoid:FindFirstChild("HumanoidRootPart")
	return RootPart
    elseif playerHumanoid == nil then
	return nil
    end
end

local function AutoBuyRegularMerchant()
    while _G.autoBuyRegularMerchant do
        RootPart = GetPlayer()
        if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(368.82782, 17.6504326, 543.36051)
            wait(0.1)
            for i = 1,6 do
                for j = 1,10 do
                    merchantRequest:InvokeServer("RegularMerchant", i)
                    wait(0.0001)
                end
                wait(0.001)                    
            end
            wait(0.1)
            RootPart.CFrame = CFrame.new(CFramePart)
        end
    wait(220)
    end
end

local function AutoBuyAdvancedMerchant()
    while _G.autoBuyAdvancedMerchant do
        RootPart = GetPlayer()
        if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(818.6481323, 17.66573, 1539.2429199)
            wait(0.1)
            for i = 1,6 do
                for j = 1,10 do
                    merchantRequest:InvokeServer("AdvancedMerchant", i)
                    wait(0.0001)
                end
                wait(0.001)                    
            end
            wait(0.1)
            RootPart.CFrame = CFrame.new(CFramePart)
        end
    wait(230)
    end
end

local function AutoBuyGardenMerchant()
    while _G.autoBuyGardenMerchant do
        RootPart = GetPlayer()
        if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(259.746124267, 17.6442584, 2073.28051757)
            wait(0.1)
            for i = 1,6 do
                for j = 1,10 do
                    merchantRequest:InvokeServer("GardenMerchant", i)
                    wait(0.0001)
                end
                wait(0.001)                    
            end
            wait(0.1)
            RootPart.CFrame = CFrame.new(CFramePart)
        end
    wait(240)
    end
end

local function AutoBuySnowMerchant()
    while _G.autoBuySnowMerchant do
        RootPart = GetPlayer()
        if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(1258.35363769531, 17.64980506, 2649.2119140625)
            wait(0.1)
            for i = 2,6 do
                for j = 1,10 do
                        merchantRequest:InvokeServer("SnowMerchant", i)
                    wait(0.0001)
                end
                wait(0.001)                    
            end
            wait(0.1)
            RootPart.CFrame = CFrame.new(CFramePart)
        end
    wait(250)
    end
end

local function AutoClaimGifts()
    for i = 1, 12 do
        claimGift:InvokeServer(i)
        wait(0.1)
    end
end

local function AutoClaimSmallDiamonds()
    while _G.autoClaimSmallDiamonds do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(561.092224, 17.6505299, -148.544724)
            wait(3)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(260)
    end
end

local function AutoClaimFreePotions()
    while _G.autoClaimFreePotions do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(695.568, 21.601, 559.959)
            wait(3)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(270)
    end
end

local function AutoClaimFreeEnchants()
    while _G.autoClaimFreeEnchants do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(212.173, -29.367, 844.209)
            wait(3)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(280)
    end
end

local function AutoClaimFreeItems()
    while _G.autoClaimFreeItems do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(810.242, 20.559, 846.899)
            wait(3)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(290)
    end
end

local function AutoClaimBigDiamonds()
    while _G.autoClaimBigDiamonds do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(512.058, 20.628, 1316.557)
            wait(3)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(300)
    end
end

local function AutoClaimVending1()
    while _G.autoClaimVending1 do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(894.108, 17.653, -8.541)
            wait(0.3)
	    for i = 1, 4 do
	        claimVending:InvokeServer("PotionVendingMachine1", 1)
	    end
	    wait(0.5)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(310)
    end
end

local function AutoClaimVending2()
    while _G.autoClaimVending2 do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(367.222, 17.650, 78.061)
            wait(0.3)
	    for i = 1, 4 do
	        claimVending:InvokeServer("EnchantVendingMachine1", 1)
	    end
	    wait(0.5)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(320)
    end
end

local function AutoClaimVending3()
    while _G.autoClaimVending3 do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(695.167, 17.650, 315.120)
            wait(0.3)
	    for i = 1, 4 do
	        claimVending:InvokeServer("FruitVendingMachine1", 1)
	    end
	    wait(0.5)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(330)
    end
end

local function AutoClaimVending4()
    while _G.autoClaimVending4 do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(1021.298, 17.648, 1032.59)
            wait(0.3)
	    for i = 1, 4 do
	        claimVending:InvokeServer("FruitVendingMachine2", 1)
	    end
	    wait(0.5)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(340)
    end
end

local function AutoClaimVending5()
    while _G.autoClaimVending5 do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(987.965, 17.665, 1302.139)
            wait(0.3)
	    for i = 1, 4 do
	        claimVending:InvokeServer("PotionVendingMachine2", 1)
	    end
	    wait(0.5)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(350)
    end
end

local function AutoClaimVending6()
    while _G.autoClaimVending6 do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(793.054, 17.665, 1779.194)
            wait(0.3)
	    for i = 1, 4 do
	        claimVending:InvokeServer("EnchantVendingMachine2", 1)
	    end
	    wait(0.5)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(360)
    end
end

local function AutoClaimVending7()
    while _G.autoClaimVending7 do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(1468.531, 17.657, 1927.468)
            wait(0.3)
	    claimVending:InvokeServer("RarePotionsVendingMachine1", 1)
	    wait(0.5)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(370)
    end
end

local function AutoClaimVending8()
    while _G.autoClaimVending8 do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(854.337, 20.497, 2109.328)
            wait(0.3)
	    claimVending:InvokeServer("RareEnchantsVendingMachine1", 1)
	    wait(0.5)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(380)
    end
end

local function AutoClaimVending9()
    while _G.autoClaimVending9 do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(1167.327, 17.665, 2855.184)
            wait(0.3)
	    claimVending:InvokeServer("OPPotionsVendingMachine1", 1)
	    wait(0.5)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(390)
    end
end

local function AutoCollect()
    while _G.autoCollect do
        RootPart = GetPlayer()
	if RootPart then
	    for i,v in ipairs(Orbs:GetChildren()) do
	        if v ~= nil then
		    v.CFrame = RootPart.CFrame
                    claimCoin:FireServer(v.Name)
		end
		wait(0.00000001)
	    end
	end
        wait(0.001)
    end
end

local function AutoAFK()
    while _G.autoAFK do
        keyboard:SendKeyEvent(true, "W", false, game)
	wait(0.1)
	keyboard:SendKeyEvent(false, "W", false, game)
	wait(300)
    end
end

local function AutoMine()
    while _G.autoMine do
	Mine = ActiveContainer:WaitForChild("Digsite"):WaitForChild("Important")
	if Mine == nil then
	    return
	elseif Mine ~= nil then
	    MineBlocks = Mine:WaitForChild("ActiveBlocks")
            MineChests = Mine:WaitForChild("ActiveChests")
	end
        if _G.typeMine == "All" then
            RootPart = GetPlayer()
	    if RootPart then
		i = 0
		while i <= #MineBlocks:GetChildren() do
		    v = MineBlocks:GetChildren()[i]
                    if v ~= nil then
                        ore = v:FindFirstChild("Ore")
                    end
		    if #MineChests:GetChildren() > 0 then
			for i1,v1 in ipairs(MineChests:GetChildren()) do
			    while v1 do
	                        RootPart.CFrame = CFrame.new(v1:FindFirstChild("Bottom").Position)
		                coord = v1:GetAttribute("Coord")
		                mineDig:FireServer("Digsite", "DigChest", coord)
		                wait(0.01)
			    end
			    i = i - 1
		        end
		    elseif ore ~= nil then
			while v do
			    RootPart.CFrame = CFrame.new(v.Position)
		            coord = v:GetAttribute("Coord")
		            mineDig:FireServer("Digsite", "DigBlock", coord)
		            wait(0.01)
			end
		    elseif v then
			while v do
			    RootPart.CFrame = CFrame.new(v.Position)
		            coord = v:GetAttribute("Coord")
		            mineDig:FireServer("Digsite", "DigBlock", coord)
		            wait(0.01)
			end
		    end
                    i = i + 1
                    wait(0.000001)
		end
            end
	end
	wait(0.01)
    end
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Pet Simulator 99", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Hi! It's best script for Pet Sim 99!"})

    local TabAutoFarm = Window:MakeTab({
	    Name = "AutoFarm",
	    Icon = "rbxassetid://12767693169",
	    PremiumOnly = false
    })

        local Section6 = TabAutoFarm:AddSection({
	    Name = "Farm"
        })

            TabAutoFarm:AddToggle({
	        Name = "AutoCollect Tokens",
	        Default = false,
	        Callback = function(Value)
		    _G.autoCollect = Value
		    AutoCollect()
	        end    
            })

    local TabMine = Window:MakeTab({
	    Name = "Mine",
	    Icon = "rbxassetid://12767693169",
	    PremiumOnly = false
    })

        local Section7 = TabMine:AddSection({
	    Name = "Mine"
        })

            TabMine:AddDropdown({
	        Name = "Dropdown",
	        Default = "All",
	        Options = {"All", "Only blocks", "Only ores", "Only chests", "Only blocks/chests", "Only blocks/ores", "Only ores/chests"},
	        Callback = function(Value)
		    _G.typeMine = Value
	        end    
            })

            TabMine:AddParagraph("Type mine", "Mining priority goes like this: 1) Chest; 2) Ore; 3) Block.")

            TabMine:AddToggle({
	        Name = "AutoMine",
	        Default = false,
	        Callback = function(Value)
		    _G.autoMine = Value
		    AutoMine()
	        end    
            })

    local TabMerchant = Window:MakeTab({
	    Name = "Merchant",
	    Icon = "rbxassetid://12767693169",
	    PremiumOnly = false
    })

        local Section1 = TabMerchant:AddSection({
	    Name = "Merchant"
        })

            TabMerchant:AddToggle({
	        Name = "AutoBuy Regular Merchant",
	        Default = false,
	        Callback = function(Value)
		    _G.autoBuyRegularMerchant = Value
		    AutoBuyRegularMerchant()
	        end    
            })

            TabMerchant:AddToggle({
	        Name = "AutoBuy Advanced Merchant",
	        Default = false,
	        Callback = function(Value)
		    _G.autoBuyAdvancedMerchant = Value
		    AutoBuyAdvancedMerchant()
	        end    
            })

            TabMerchant:AddToggle({
	        Name = "AutoBuy Garden Merchant",
	        Default = false,
	        Callback = function(Value)
		    _G.autoBuyGardenMerchant = Value
		    AutoBuyGardenMerchant()
	        end    
            })

            TabMerchant:AddToggle({
	        Name = "AutoBuy Snow Merchant",
	        Default = false,
	        Callback = function(Value)
		    _G.autoBuySnowMerchant = Value
		    AutoBuySnowMerchant()
	        end    
            })

    local TabVendingMachine = Window:MakeTab({
	    Name = "Vending Machines",
	    Icon = "rbxassetid://12767693169",
	    PremiumOnly = false
    })

        local Section5 = TabVendingMachine:AddSection({
	    Name = "Vending Machines"
        })

            TabVendingMachine:AddToggle({
	        Name = "AutoBuy Potion Vending I",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimVending1 = Value
		    AutoClaimVending1()
	        end    
            })

            TabVendingMachine:AddToggle({
	        Name = "AutoBuy Enchant Vending I",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimVending2 = Value
		    AutoClaimVending2()
	        end    
            })

            TabVendingMachine:AddToggle({
	        Name = "AutoBuy Fruit Vending I",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimVending3 = Value
		    AutoClaimVending3()
	        end    
            })

            TabVendingMachine:AddToggle({
	        Name = "AutoBuy Fruit Vending II",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimVending4 = Value
		    AutoClaimVending4()
	        end    
            })

            TabVendingMachine:AddToggle({
	        Name = "AutoBuy Potion Vending II",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimVending5 = Value
		    AutoClaimVending5()
	        end    
            })

            TabVendingMachine:AddToggle({
	        Name = "AutoBuy Enchant Vending II",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimVending6 = Value
		    AutoClaimVending6()
	        end    
            })

            TabVendingMachine:AddToggle({
	        Name = "AutoBuy Rare Potion Vending",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimVending7 = Value
		    AutoClaimVending7()
	        end    
            })

            TabVendingMachine:AddToggle({
	        Name = "AutoBuy Rare Enchant Vending",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimVending8 = Value
		    AutoClaimVending8()
	        end    
            })

            TabVendingMachine:AddToggle({
	        Name = "AutoBuy OP Potion Vending",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimVending9 = Value
		    AutoClaimVending9()
	        end    
            })

    local TabItems = Window:MakeTab({
	    Name = "Items",
	    Icon = "rbxassetid://12767693169",
	    PremiumOnly = false
    })

        local Section4 = TabItems:AddSection({
	    Name = "Items"
        })

            TabItems:AddToggle({
	        Name = "AutoClaim Small Diamonds",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimSmallDiamonds = Value
		    AutoClaimSmallDiamonds()
	        end    
            })

            TabItems:AddToggle({
	        Name = "AutoClaim Free Potions",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimFreePotions = Value
		    AutoClaimFreePotions()
	        end    
            })

            TabItems:AddToggle({
	        Name = "AutoClaim Free Enchants",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimFreeEnchants = Value
		    AutoClaimFreeEnchants()
	        end    
            })

            TabItems:AddToggle({
	        Name = "AutoClaim Free Items",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimFreeItems = Value
		    AutoClaimFreeItems()
	        end    
            })

            TabItems:AddToggle({
	        Name = "AutoClaim Big Diamonds",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimBigDiamonds = Value
		    AutoClaimBigDiamonds()
	        end    
            })

    local TabOther = Window:MakeTab({
	    Name = "Other",
	    Icon = "rbxassetid://12767693169",
	    PremiumOnly = false
    })

        local Section2 = TabOther:AddSection({
	    Name = "Scripts"
        })

            TabOther:AddButton({
	        Name = "IY",
	        Callback = function()
      		    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))();
  	        end    
            })

        local Section6 = TabOther:AddSection({
	    Name = "Other Functions"
        })

            TabOther:AddToggle({
	        Name = "AntiAFK",
	        Default = false,
	        Callback = function(Value)
		    _G.autoAFK = Value
		    AutoAFK()
	        end    
            })

            TabOther:AddToggle({
	        Name = "AutoClaim Gifts",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimGifts = Value
		    AutoClaimGifts()
	        end    
            })

            TabOther:AddButton({
	        Name = "Destroy GUI",
	        Callback = function()
	            OrionLib:Destroy()
	        end    
	    })

OrionLib:Init()

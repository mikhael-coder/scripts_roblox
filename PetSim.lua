local networkService = game:GetService("ReplicatedStorage"):WaitForChild("Network")
local merchantRequest = networkService:WaitForChild("Merchant_RequestPurchase")
local claimGift = networkService:WaitForChild("Redeem Free Gift")
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
                    wait(0.001)
                end
                wait(0.01)                    
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
                    wait(0.001)
                end
                wait(0.01)                    
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
                    wait(0.001)
                end
                wait(0.01)                    
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
                    wait(0.001)
                end
                wait(0.01)                    
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
            wait(0.5)
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
            wait(0.5)
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
            wait(0.5)
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
            wait(0.5)
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
            wait(0.5)
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
            RootPart.CFrame = CFrame.new(894.693, 20.556, -11.465)
            wait(0.3)
	    -- claimVending:InvokeServer("PotionVendingMachine1", 4)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(500)
    end
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Pet Simulator 99", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Hi! It's best script for Pet Sim 99!"})

    local TabAutoDo = Window:MakeTab({
	    Name = "AutoDo",
	    Icon = "rbxassetid://12767693169",
	    PremiumOnly = false
    })

        local Section1 = TabAutoDo:AddSection({
	    Name = "Merchant"
        })

            TabAutoDo:AddToggle({
	        Name = "AutoBuy Regular Merchant",
	        Default = false,
	        Callback = function(Value)
		    _G.autoBuyRegularMerchant = Value
		    AutoBuyRegularMerchant()
	        end    
            })

            TabAutoDo:AddToggle({
	        Name = "AutoBuy Advanced Merchant",
	        Default = false,
	        Callback = function(Value)
		    _G.autoBuyAdvancedMerchant = Value
		    AutoBuyAdvancedMerchant()
	        end    
            })

            TabAutoDo:AddToggle({
	        Name = "AutoBuy Garden Merchant",
	        Default = false,
	        Callback = function(Value)
		    _G.autoBuyGardenMerchant = Value
		    AutoBuyGardenMerchant()
	        end    
            })

            TabAutoDo:AddToggle({
	        Name = "AutoBuy Snow Merchant",
	        Default = false,
	        Callback = function(Value)
		    _G.autoBuySnowMerchant = Value
		    AutoBuySnowMerchant()
	        end    
            })

        local Section3 = TabAutoDo:AddSection({
	    Name = "Gifts"
        })

            TabAutoDo:AddToggle({
	        Name = "AutoClaim Gifts",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimGifts = Value
		    AutoClaimGifts()
	        end    
            })

        local Section4 = TabAutoDo:AddSection({
	    Name = "Diamonds/Items"
        })

            TabAutoDo:AddToggle({
	        Name = "AutoClaim Small Diamonds",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimSmallDiamonds = Value
		    AutoClaimSmallDiamonds()
	        end    
            })

            TabAutoDo:AddToggle({
	        Name = "AutoClaim Free Potions",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimFreePotions = Value
		    AutoClaimFreePotions()
	        end    
            })

            TabAutoDo:AddToggle({
	        Name = "AutoClaim Free Enchants",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimFreeEnchants = Value
		    AutoClaimFreeEnchants()
	        end    
            })

            TabAutoDo:AddToggle({
	        Name = "AutoClaim Free Items",
	        Default = false,
	        Callback = function(Value)
		    _G.autoClaimFreeItems = Value
		    AutoClaimFreeItems()
	        end    
            })

            TabAutoDo:AddToggle({
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

OrionLib:Init()

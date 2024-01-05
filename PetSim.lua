local networkService = game:GetService("ReplicatedStorage"):WaitForChild("Network")
local merchantRequest = networkService:WaitForChild("Merchant_RequestPurchase")
local claimPlant = networkService:WaitForChild("Instancing_FireCustomFromClient")
local player = game:GetService("Players").LocalPlayer

_G.autoBuyRegularMerchant = false
_G.autoBuyAdvancedMerchant = false
_G.autoBuyGardenMerchant = false
_G.autoBuySnowMerchant = false

local function AutoBuyRegularMerchant()
    while _G.autoBuyRegularMerchant do
        playerHumanoid = player.Character
        if playerHumanoid then
            RootPart = playerHumanoid:FindFirstChild("HumanoidRootPart")
            if RootPart then
                CFramePart = RootPart.Position
                RootPart.CFrame = CFrame.new(368.82782, 17.6504326, 543.36051)
                wait(0.1)
                for i = 1,6 do
                    for j = 1,10 do
                        merchantRequest:InvokeServer("RegularMerchant", i)
                        wait(0.001)
                    end
                    wait(0.2)                    
                end
                wait(0.1)
                RootPart.CFrame = CFrame.new(CFramePart)
            end
        end
        wait(100)
    end
end

local function AutoBuyAdvancedMerchant()
    while _G.autoBuyAdvancedMerchant do
        playerHumanoid = player.Character
        if playerHumanoid then
            RootPart = playerHumanoid:FindFirstChild("HumanoidRootPart")
            if RootPart then
                CFramePart = RootPart.Position
                RootPart.CFrame = CFrame.new(818.6481323, 17.66573, 1539.2429199)
                wait(0.1)
                for i = 1,6 do
                    for j = 1,10 do
                        merchantRequest:InvokeServer("AdvancedMerchant", i)
                        wait(0.001)
                    end
                    wait(0.2)                    
                end
                wait(0.1)
                RootPart.CFrame = CFrame.new(CFramePart)
            end
        end
        wait(100)
    end
end

local function AutoBuyGardenMerchant()
    while _G.autoBuyGardenMerchant do
        playerHumanoid = player.Character
        if playerHumanoid then
            RootPart = playerHumanoid:FindFirstChild("HumanoidRootPart")
            if RootPart then
                CFramePart = RootPart.Position
                RootPart.CFrame = CFrame.new(259.746124267, 17.6442584, 2073.28051757)
                wait(0.1)
                for i = 1,6 do
                    for j = 1,10 do
                        merchantRequest:InvokeServer("GardenMerchant", i)
                        wait(0.001)
                    end
                    wait(0.2)                    
                end
                wait(0.1)
                RootPart.CFrame = CFrame.new(CFramePart)
            end
        end
        wait(100)
    end
end

local function AutoBuySnowMerchant()
    while _G.autoBuySnowMerchant do
        playerHumanoid = player.Character
        if playerHumanoid then
            RootPart = playerHumanoid:FindFirstChild("HumanoidRootPart")
            if RootPart then
                CFramePart = RootPart.Position
                RootPart.CFrame = CFrame.new(1258.35363769531, 17.64980506, 2649.2119140625)
                wait(0.1)
                for i = 2,6 do
                    for j = 1,10 do
                        merchantRequest:InvokeServer("SnowMerchant", i)
                        wait(0.001)
                    end
                    wait(0.2)                    
                end
                wait(0.1)
                RootPart.CFrame = CFrame.new(CFramePart)
            end
        end
        wait(100)
    end
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Pet Simulator 99", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Hi! It's best script for Pet Sim 99!", IntroIcon = "rbxassetid://13074964538"})

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

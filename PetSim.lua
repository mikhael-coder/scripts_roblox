local networkService = game:GetService("ReplicatedStorage"):WaitForChild("Network")
local merchantRequest = networkService:WaitForChild("Merchant_RequestPurchase")
local claimPlant = networkService:WaitForChild("Instancing_FireCustomFromClient")
local player = game:GetService("Players").LocalPlayer

local function BuyMerchant(Name, Pos, State, NameFun)
    while true do
        playerHumanoid = player.Character
        if playerHumanoid then
            RootPart = playerHumanoid:FindFirstChild("HumanoidRootPart")
            if RootPart then
                CFramePart = RootPart.Position
                RootPart.CFrame = Pos
                wait(0.1)
                if NameFun == "Sno" then
                    for i = 2,6 do
                        for j = 1,10 do
                             merchantRequest:InvokeServer(Name, i)
                             wait(0.001)
                        end
                        wait(0.2) 
                    end
                else
                    for i = 1,6 do
                        for j = 1,10 do
                             merchantRequest:InvokeServer(Name, i)
                             wait(0.001)
                        end
                        wait(0.2)                    
                    end
                    wait(0.1)
                    RootPart.CFrame = CFrame.new(CFramePart)
                end
            end
        end
        wait(100)
    end
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Pet Simulator 99", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Hi! It's best script for Pet Sim 99!", IntroIcon = "rbxassetid://13074964538", Icon = "rbxassetid://13074964538"})

    local TabAutoDo = Window:MakeTab({
	    Name = "AutoDo",
	    Icon = "rbxassetid://12767693169",
	    PremiumOnly = false
    })

        local Section1 = TabAutoDo:AddSection({
	        Name = "Merchant"
        })

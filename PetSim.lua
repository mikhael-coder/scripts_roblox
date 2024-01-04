local networkService = game:GetService("ReplicatedStorage"):WaitForChild("Network")
local merchantRequest = networkService:WaitForChild("Merchant_RequestPurchase")
local claimPlant = networkService:WaitForChild("Instancing_FireCustomFromClient")
local player = game:GetService("Players").LocalPlayer

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Pet Simulator 99", "RJTheme2")

    local Tab = Window:NewTab("AutoDo")

        local Section = Tab:NewSection("AutoBuy Merchant")

        Section:NewToggle("AutoBuy Merchant", "...", function(state)
            while true do
                if state then
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
                end
                wait(100)
            end
        end)

        Section:NewToggle("AutoBuy Advanced Merchant", "...", function(state)
            while true do
                if state then
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
                end
                wait(100)
            end
        end)

        Section:NewToggle("AutoBuy Garden Merchant", "...", function(state)
            while true do
                if state then
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
                end
                wait(100)
            end
        end)

        Section:NewToggle("AutoBuy Snow Merchant", "...", function(state)
            while true do
                if state then
                    playerHumanoid = player.Character
                    if playerHumanoid then
                        RootPart = playerHumanoid:FindFirstChild("HumanoidRootPart")
                        if RootPart then
                            CFramePart = RootPart.Position
                            RootPart.CFrame = CFrame.new(1258.35363769531, 17.64980506, 2649.2119140625)
                            wait(0.1)
                            for i = 2,6 do
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
                end
                wait(100)
            end
        end)

        local Section = Tab:NewSection("AutoPlants")

        Section:NewToggle("AutoClaim Plants", "...", function(state)
            while state do
                for i = 1,10 do
                    claimPlant:InvokeServer("FlowerGarden", "ClaimPlant", i)
                    wait(0.2)                    
                end
                wait(100)
            end
        end)

    local Tab = Window:NewTab("Other")

        local Section = Tab:NewSection("Scripts")

        Section:NewButton("Infinite Yield", "...", function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))();
        end)

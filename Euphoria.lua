local placeId = game.PlaceId
if placeId == 2753915549 or placeId == 4442272183 or placeId == 7449423635 then
    BF = true
end
if placeId == 2753915549 then
    first_sea = true
end
if placeId == 4442272183 then
    second_sea = true
end
if placeId == 7449423635 then
    third_sea = true
end
if BF == true then
    repeat wait() until game:IsLoaded()
    function Notification(text)
        local StarterGui = game:GetService("StarterGui")
        StarterGui:SetCore("SendNotification", {
            Title = "Euphoria";
            Text = text
        })
    end
    load_script = 1
    if _G.EuphoriaLoaded == 1 then
        load_script = 0
        Notification("Another instance of Euphoria already loaded")
        print("Another instance of Euphoria already loaded")
    end
    if load_script == 1 then
        if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
            game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
        end
        if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
            game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
        end
        task = task or getrenv().task;
        fastSpawn,fastWait,delay = task.spawn,task.wait,task.delay
        local Nonquest = false

        _G.SelectWeapon = "Melee"
        _G.EuphoriaLoaded = 1
        wait(1)
        Notification("Euphoria Loaded Successfully")
        print("Euphoria Loaded Successfully")
        
        spawn(function()
        while wait() do
            if _G.Auto_Farm then
                FastAttack = true
            else
                FastAttack = false
            end
        end
        end)
        local function QuestCheck()
            local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
            if Lvl >= 1 and Lvl <= 9 then
                if tostring(game.Players.LocalPlayer.Team) == "Marines" then
                    MobName = "Trainee [Lv. 5]"
                    QuestName = "MarineQuest"
                    QuestLevel = 1
                    Mon = "Trainee"
                    NPCPosition = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
                elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
                    MobName = "Bandit [Lv. 5]"
                    Mon = "Bandit"
                    QuestName = "BanditQuest1"
                    QuestLevel = 1
                    NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
                end
                return {
                    [1] = QuestLevel,
                    [2] = NPCPosition,
                    [3] = MobName,
                    [4] = QuestName,
                    [5] = LevelRequire,
                    [6] = Mon,
                    [7] = MobCFrame
                }
            end
            
            if Lvl >= 210 and Lvl <= 249 then
                MobName = "Dangerous Prisoner [Lv. 210]"
                QuestName = "PrisonerQuest"
                QuestLevel = 2
                Mon = "Dangerous Prisoner"
                NPCPosition = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                local matchingCFrames = {}
                local result = string.gsub(MobName, "Lv. ", "")
                local result2 = string.gsub(result, "[%[%]]", "")
                local result3 = string.gsub(result2, "%d+", "")
                local result4 = string.gsub(result3, "%s+", "")
                
                for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
                    if v.Name == result4 then
                        table.insert(matchingCFrames, v.CFrame)
                    end
                    MobCFrame = matchingCFrames
                end
                return {
                    [1] = QuestLevel,
                    [2] = NPCPosition,
                    [3] = MobName,
                    [4] = QuestName,
                    [5] = LevelRequire,
                    [6] = Mon,
                    [7] = MobCFrame
                }
            end
            
            --game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
            local Quests = require(game:GetService("ReplicatedStorage").Quests)
            for i,v in pairs(GuideModule["Data"]["NPCList"]) do
                for i1,v1 in pairs(v["Levels"]) do
                    if Lvl >= v1 then
                        if not LevelRequire then
                            LevelRequire = 0
                        end
                        if v1 > LevelRequire then
                            NPCPosition = i["CFrame"]
                            QuestLevel = i1
                            LevelRequire = v1
                        end
                        if #v["Levels"] == 3 and QuestLevel == 3 then
                            NPCPosition = i["CFrame"]
                            QuestLevel = 2
                            LevelRequire = v["Levels"][2]
                        end
                    end
                end
            end
            if Lvl >= 375 and Lvl <= 399 then -- Fishman Warrior
                MobCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
                if _G.StartFarm and (MobCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                    return
                end
            end
            
            if Lvl >= 400 and Lvl <= 449 then -- Fishman Commando
                MobCFrame = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
                if _G.StartFarm and (MobCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                    return
                end
            end
            for i,v in pairs(Quests) do
                for i1,v1 in pairs(v) do
                    if v1["LevelReq"] == LevelRequire and i ~= "CitizenQuest" then
                        QuestName = i
                        for i2,v2 in pairs(v1["Task"]) do
                            MobName = i2
                            Mon = string.split(i2," [Lv. ".. v1["LevelReq"] .. "]")[1]
                        end
                    end
                end
            end
            if QuestName == "MarineQuest2" then
                QuestName = "MarineQuest2"
                QuestLevel = 1
                MobName = "Chief Petty Officer [Lv. 120]"
                Mon = "Chief Petty Officer"
                LevelRequire = 120
            elseif QuestName == "ImpelQuest" then
                QuestName = "PrisonerQuest"
                QuestLevel = 2
                MobName = "Dangerous Prisoner [Lv. 190]"
                Mon = "Dangerous Prisoner"
                LevelRequire = 210
                NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
            elseif QuestName == "SkyExp1Quest" then
                if QuestLevel == 1 then
                    NPCPosition = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
                elseif QuestLevel == 2 then
                    NPCPosition = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                end
            elseif QuestName == "Area2Quest" and QuestLevel == 2 then
                QuestName = "Area2Quest"
                QuestLevel = 1
                MobName = "Swan Pirate [Lv. 775]"
                Mon = "Swan Pirate"
                LevelRequire = 775
            end
            MobName = MobName:sub(1,#MobName)
            if not MobName:find("Lv") then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    MonLV = string.match(v.Name, "%d+")
                    if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
                        MobName = v.Name
                    end
                end
            end
            if not MobName:find("Lv") then
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    MonLV = string.match(v.Name, "%d+")
                    if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
                        MobName = v.Name
                        Mon = a
                    end
                end
            end
            
            local matchingCFrames = {}
            local result = string.gsub(MobName, "Lv. ", "")
            local result2 = string.gsub(result, "[%[%]]", "")
            local result3 = string.gsub(result2, "%d+", "")
            local result4 = string.gsub(result3, "%s+", "")
            
            for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
                if v.Name == result4 then
                    table.insert(matchingCFrames, v.CFrame)
                end
                MobCFrame = matchingCFrames
            end
            
            return {
                [1] = QuestLevel,
                [2] = NPCPosition,
                [3] = MobName,
                [4] = QuestName,
                [5] = LevelRequire,
                [6] = Mon,
                [7] = MobCFrame,
                [8] = MonQ,
                [9] = MobCFrameNuber
            }
            end
            function Bypass(Point)
                toposition(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                wait(1.5)
                _G.StopTween = true
                _G.StertScript = false
            
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                game.Players.LocalPlayer.Character.Head:Destroy()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
                wait(.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
                wait(.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                wait(.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
                wait(0.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(900,900,900)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            
                _G.StopTween = false
                _G.StertScript = false
                _G.Clip = false
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                end
                _G.Clip = false
            end
            
        local function toTarget(...)
            local RealtargetPos = {...}
            local targetPos = RealtargetPos[1]
            local RealTarget
            if type(targetPos) == "vector" then
                RealTarget = CFrame.new(targetPos)
            elseif type(targetPos) == "userdata" then
                RealTarget = targetPos
            elseif type(targetPos) == "number" then
                RealTarget = CFrame.new(unpack(RealtargetPos))
            end
        
            if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then if tween then tween:Cancel() end repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2) end
        
            local tweenfunc = {}
            local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
            if Distance < 1000 then
                Speed = 315
            elseif Distance >= 1000 then
                Speed = 300
            end
        
            if _G.Settings.Configs["Bypass TP"] then
                if Distance > 3000 and not AutoFarmMaterial and not _G.Settings.FightingStyle["Auto God Human"] and not _G.Settings.Raids["Auto Raids"] and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") then
                    pcall(function()
                        tween:Cancel()
                        fkwarp = false
        
                        if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then 
                            wait(.1)
                            Com("F_","TeleportToSpawn")
                        elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                            game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                            wait(0.1)
                            repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                        else
                            if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                                if fkwarp == false then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                                end
                                fkwarp = true
                            end
                            wait(.08)
                            game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                            repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                            wait(.1)
                            Com("F_","SetSpawnPoint")
                        end
                        wait(0.2)
        
                        return
                    end)
                end
            end
        
            local tween_s = game:service"TweenService"
            local info = TweenInfo.new((RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
            local tweenw, err = pcall(function()
                tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
                tween:Play()
            end)
        
            function tweenfunc:Stop()
                tween:Cancel()
            end 
        
            function tweenfunc:Wait()
                tween.Completed:Wait()
            end 
        
            return tweenfunc
        end
        function InMyNetWork(object)
            if isnetworkowner then
                return isnetworkowner(object)
            else
                if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then 
                    return true
                end
                return false
            end
        end
        spawn(function()
            while true do wait()
                if setscriptable then
                    setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                end
                if sethiddenproperty then
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                end
            end
        end)

        spawn(function()
            while task.wait() do
                pcall(function()
                    if _G.Auto_Farm and BringMobFarm then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 400 then
                                if InMyNetWork(v.HumanoidRootPart) then
                                    v.HumanoidRootPart.CFrame = PosMon
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                end
                            end
                        end
                    end
                end)
            end
        end)
        function EquipWeapon(Tool)
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then 
                    local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) 
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
                end
            end)
        end
        function UnEquipWeapon(Weapon)
            if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
                _G.NotAutoEquip = true
                wait(.5)
                game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
                wait(.1)
                _G.NotAutoEquip = false
            end
        end

        spawn(function()
            while wait() do 
                local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
                if _G.Auto_Farm then
                    if QuestC.Visible == true then
                        if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 3000 then
                            Bypass(QuestCheck()[2])
                        end
                        if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == QuestCheck()[3] then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            else
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                BringMobFarm = true
                                                EquipWeapon(_G.Settings.Configs["Select Weapon"])
                                                v.HumanoidRootPart.Transparency = 1
                                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                            end
                                        until not _G.Auto_Farm or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
                                    end
                                end
                            end
                        else
                            UnEquipWeapon(_G.Settings.Configs["Select Weapon"])
                            toTarget(QuestCheck()[7][SetCFarme] * CFrame.new(0,30,5))
                            if (QuestCheck()[7][SetCFarme].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                if SetCFarme == nil or SetCFarme == '' then
                                    SetCFarme = 1
                                    print(SetCFarme)
                                elseif SetCFarme >= #QuestCheck()[7] then
                                    SetCFarme = 1
                                    print(SetCFarme)
                                end
                                SetCFarme =  SetCFarme + 1
        
                                print(SetCFarme)
                                wait(0.5)
                            end
                        end
                    else
                        wait(0.5)
                        if game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value == tostring(GetIsLand(QuestCheck()[7][1])) then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5)
                            toTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
                        else
                            if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 3000 then
                                Bypass(QuestCheck()[2])
                            else
                                repeat wait() toTarget(QuestCheck()[2]) until (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.StartFarm
                            end
                            repeat wait() toTarget(QuestCheck()[2]) until (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.StartFarm
                            if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                                BringMobFarm = false
                                wait(0.2)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5)
                                toTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
                            end
                        end
                    end
                end
            end
        end)

    

        local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
        local Window = OrionLib:MakeWindow({Name = "Euphoria 0_o", HidePremium = false, SaveConfig = true, ConfigFolder = "euphoriacfg"})
        local Main = Window:MakeTab({
            Name = "Main",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        _G.Auto_Farm = false

        local AutoFarmSection = Main:AddSection({
            Name = "Farm"
        })
        Main:AddToggle({
            Name = "Auto Farm",
            Default = false,
            Callback = function(value)
                _G.Auto_Farm = value
                MainAutoFarmFunction:UpdateFarmMode("AutoFarmLevel")
                if _G.Auto_Farm then
                    MainAutoFarmFunction:Start()
                else
                    MainAutoFarmFunction:Stop()
                end
            end,
            Save = true
        })
        Main:AddDropdown({
            Name = "Select Weapon",
            Default = 'Melee',
            Options = {"Melee","Sword","Fruit"},
            Callback = function(value)
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == value then
                        _G.SelectWeapon = v.Name
                    end
                end
            end
        })
        Main:AddToggle({
            Name = "Fast Attack",
            Default = true,
            Callback = function(value)
                _G.FastAttack = value
            end,
            Save = true
        })
        Main:AddToggle({
            Name = "Fast Tween",
            Default = true,
            Callback = function(value)
                _G.FastTween = value
            end,
            Save = true
        })
        -- ФРУКТ МЕНЮ
        local Fruit = Window:MakeTab({
            Name = "Fruit",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        Fruit:AddButton({
            Name = "Open Fruit Shop",
            Callback = function()
                local args = {
                    [1] = "GetFruits"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
            end
        })
        -- СЕРВЕР МЕНЮ
        local Server = Window:MakeTab({
            Name = "Server",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        Server:AddButton({
            Name = "Rejoin Server",
            Callback = function()
                local ts = game:GetService("TeleportService") local p = game.Players.LocalPlayer ts:Teleport(game.PlaceId, p) 
            end
        })
        
        -- ДЕБАГ МЕНЮ
        local DebugTab = Window:MakeTab({
            Name = "Debug",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })

        local DebugSection = DebugTab:AddSection({
            Name = "Debug"
        })

        DebugTab:AddButton({
            Name = "IY ADMIN",
            Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
            end    
        })

        DebugTab:AddButton({
            Name = "CMD-X",
            Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
            end    
        })

        local Section = DebugTab:AddSection({
            Name = "DEX"
        })

        DebugTab:AddButton({
            Name = "dark dex",
            Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
            end    
        })

        local Section = DebugTab:AddSection({
            Name = "Spy"
        })

        DebugTab:AddButton({
            Name = "Simple Spy",
            Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"))()
            end    
        })

    end
end

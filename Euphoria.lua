local placeId = game.PlaceId
if placeId == 2753915549 or placeId == 4442272183 or placeId == 7449423635 then
    BF = true
end
if placeId == 2753915549 then
    local first_sea = true
end
if placeId == 4442272183 then
    local second_sea = true
end
if placeId == 7449423635 then
    local third_sea = true
end
if BF == true then
    print("BF TRUE")
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
        print("Euphoria Loaded Successfully")
    end
    if load_script == 1 then
        _G.EuphoriaLoaded = 1
        wait(1)
        Notification("Euphoria Loaded Successfully")
        print("Euphoria Loaded Successfully")
	

 
        local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
        local Window = OrionLib:MakeWindow({Name = "Euphoria 0_o", HidePremium = false, SaveConfig = true, ConfigFolder = "euphoriacfg"})
        local Main = Window:MakeTab({
            Name = "MainTab",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })

        local Section = Tab:AddSection({
            Name = "MainSection"
        })

        Tab:AddSlider({
            Name = "WalkSpeed",
            Min = 16,
            Max = 1000,
            Default = 5,
            Color = Color3.fromRGB(255,255,255),
            Increment = 1,
            ValueName = "WS",
            Callback = function(Value)
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
            end    
        })

        local Section = Tab:AddSection({
            Name = "JumpPower"
        })

        Tab:AddSlider({
            Name = "JumpPower",
            Min = 50,
            Max = 1000,
            Default = 5,
            Color = Color3.fromRGB(255,255,255),
            Increment = 1,
            ValueName = "JP",
            Callback = function(Value)
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
            end    
        })

        local Section = Tab:AddSection({
            Name = "Admin"
        })

        Tab:AddButton({
            Name = "IY ADMIN",
            Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
            end    
        })

        Tab:AddButton({
            Name = "CMD-X",
            Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
            end    
        })

        local Section = Tab:AddSection({
            Name = "DEX"
        })

        Tab:AddButton({
            Name = "dark dex",
            Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
            end    
        })

        local Section = Tab:AddSection({
            Name = "Spy"
        })

        Tab:AddButton({
            Name = "Simple Spy",
            Callback = function()
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"))()
            end    
        })

        -- local MainAutoFarmFunction = AutoFarm(Ms,NameQuest,LevelQuest,NameMon,CFrameMon,CFrameQuest,"AutoFarmLevel")
    end
end

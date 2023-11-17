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
            Name = "Main",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        local AutoFarmSection = Main:AddSection({
            Name = "Farm"
        })
        Main:AddToggle({
            Name = "Auto Farm",
            Default = false,
            Callback = function(value)
                _G.AutoFarm = value
                print("AutoFarm set to " .. _G.AutoFarm)
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

        -- local MainAutoFarmFunction = AutoFarm(Ms,NameQuest,LevelQuest,NameMon,CFrameMon,CFrameQuest,"AutoFarmLevel")
    end
end

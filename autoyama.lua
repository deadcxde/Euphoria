repeat wait() until game:IsLoaded()
if placeId ~= 7449423635 then return end
if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
        if _G.Team == "Pirate" then
            for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
                v.Function()
            end
        elseif _G.Team == "Marine" then
            for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton.Activated)) do                                                                                                
                v.Function()
            end
        else
            for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
                v.Function()
            end
        end
    end
end
until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() 

loadstring(game:HttpGet("https://raw.githubusercontent.com/Minhtriettt/Free-Script/main/MTriet-Hub.lua"))()
_G.AutoElitehunter = true
_G.AutoYama = true
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
wait(.5)
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then 
    HopServer()
else
    _G.BossDead = false
    repeat wait(1)
        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then _G.BossDead = true end
    until _G.BossDead == true
    HopServer()
end




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
        task = task or getrenv().task;
        fastSpawn,fastWait,delay = task.spawn,task.wait,task.delay
        local Nonquest = false
        function CheckQuest()
            local MyLevel = game.Players.LocalPlayer.Data.Level.Value
            if _G.FastTween then
                if first_sea then
                    if MyLevel == 1 or MyLevel <= 9 then -- Bandit
                        Nonquest = false
                        Ms = "Bandit"
                        NameQuest = "BanditQuest1"
                        LevelQuest = 1
                        NameMon = "Bandit"
                        CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
                        CFrameMon = CFrame.new(1353.44885, 3.40935516, 1376.92029, 0.776053488, -6.97791975e-08, 0.630666852, 6.99138596e-08, 1, 2.4612488e-08, -0.630666852, 2.49917598e-08, 0.776053488)
                    elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
                        Nonquest = false
                        Ms = "Monkey"
                        NameQuest = "JungleQuest"
                        LevelQuest = 1
                        NameMon = "Monkey"
                        CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        CFrameMon = CFrame.new(-1402.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
                    elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
                        Nonquest = false
                        Ms = "Gorilla"
                        NameQuest = "JungleQuest"
                        LevelQuest = 2
                        NameMon = "Gorilla"
                        CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        CFrameMon = CFrame.new(-1267.89001, 66.2034225, -531.818115, -0.813996196, -5.25169774e-08, -0.580869019, -5.58769671e-08, 1, -1.21082593e-08, 0.580869019, 2.26011476e-08, -0.813996196)
                    elseif MyLevel == 30 or MyLevel <= 89 then -- Galley Captain
                        Nonquest = true
                        Ms = "Galley Captain"
                        NameQuest = "FountainQuest"
                        LevelQuest = 2
                        NameMon = "Galley Captain"
                        CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                        CFrameMon = CFrame.new(5782.90186, 94.5326462, 4716.78174, 0.361808896, -1.24757526e-06, -0.932252586, 2.16989656e-06, 1, -4.96097414e-07, 0.932252586, -1.84339774e-06, 0.361808896)
                    elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
                        Nonquest = false
                        Ms = "Snow Bandit"
                        NameQuest = "SnowQuest"
                        LevelQuest = 1
                        NameMon = "Snow Bandits"
                        CFrameQuest = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                        CFrameMon = CFrame.new(1412.92346, 55.3503647, -1260.62036, -0.246266365, -0.0169920288, -0.969053388, 0.000432241941, 0.999844253, -0.0176417865, 0.969202161, -0.00476344163, -0.246220857)
                    elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
                        Nonquest = false
                        Ms = "Snowman"
                        NameQuest = "SnowQuest"
                        LevelQuest = 2
                        NameMon = "Snowman"
                        CFrameQuest = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                        CFrameMon = CFrame.new(1376.86401, 97.2779999, -1396.93115, -0.986755967, 7.71178321e-08, -0.162211925, 7.71531674e-08, 1, 6.08143536e-09, 0.162211925, -6.51427134e-09, -0.986755967)
                    elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
                        Nonquest = false
                        Ms = "Chief Petty Officer"
                        NameQuest = "MarineQuest2"
                        LevelQuest = 1
                        NameMon = "Chief Petty Officer"
                        CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
                    elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
                        Nonquest = false
                        Ms = "Sky Bandit"
                        NameQuest = "SkyQuest"
                        LevelQuest = 1
                        NameMon = "Sky Bandit"
                        CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                        CFrameMon = CFrame.new(-4959.51367, 365.39267, -2974.56812, 0.964867651, 7.74418396e-08, 0.262737453, -6.95931988e-08, 1, -3.91783708e-08, -0.262737453, 1.95171506e-08, 0.964867651)
                    elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
                        Nonquest = false
                        Ms = "Dark Master"
                        NameQuest = "SkyQuest"
                        LevelQuest = 2
                        NameMon = "Dark Master"
                        CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                        CFrameMon = CFrame.new(-5079.98096, 376.477356, -2194.17139, 0.465965867, -3.69776352e-08, 0.884802461, 3.40249851e-09, 1, 4.00000886e-08, -0.884802461, -1.56281423e-08, 0.465965867)
                    elseif MyLevel == 190 or MyLevel <= 209 then
                        Nonquest = false
                        Ms = "Prisoner"
                        LevelQuest = 1
                        NameQuest = "PrisonerQuest"
                        NameMon = "Prisoner"
                        CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                        CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                    elseif MyLevel == 210 or MyLevel <= 249 then
                        Nonquest = false
                        Ms = "Dangerous Prisoner"
                        LevelQuest = 2
                        NameQuest = "PrisonerQuest"
                        NameMon = "Dangerous Prisoner"
                        CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                        CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                    elseif MyLevel == 250 or MyLevel <= 274 then -- Toga Warrior
                        Nonquest = false
                        Ms = "Toga Warrior"
                        NameQuest = "ColosseumQuest"
                        LevelQuest = 1
                        NameMon = "Toga Warrior"
                        CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                        CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
                    elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
                        Nonquest = false
                        Ms = "Gladiator"
                        NameQuest = "ColosseumQuest"
                        LevelQuest = 2
                        NameMon = "Gladiato"
                        CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                        CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
                    elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
                        Nonquest = false
                        Ms = "Military Soldier"
                        NameQuest = "MagmaQuest"
                        LevelQuest = 1
                        NameMon = "Military Soldier"
                        CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                        CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
                    elseif MyLevel == 330 or MyLevel <= 374 then -- Military Spy
                        Nonquest = false
                        Ms = "Military Spy"
                        NameQuest = "MagmaQuest"
                        LevelQuest = 2
                        NameMon = "Military Spy"
                        CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                        CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
                    elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
                        Nonquest = false
                        Ms = "Fishman Warrior"
                        NameQuest = "FishmanQuest"
                        LevelQuest = 1
                        NameMon = "Fishman Warrior"
                        CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
                        CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
                    elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
                        Nonquest = false
                        Ms = "Fishman Commando"
                        NameQuest = "FishmanQuest"
                        LevelQuest = 2
                        NameMon = "Fishman Commando"
                        CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504)
                        CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.916871)
                    elseif MyLevel == 450 or MyLevel <= 474 then 
                        Nonquest = false
                        Ms = "God's Guard"
                        NameQuest = "SkyExp1Quest"
                        LevelQuest = 1
                        NameMon = "God's Guards"
                        CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105)
                        CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
                    elseif MyLevel == 475 or MyLevel <= 524 then 
                        Nonquest = false
                        Ms = "Shanda"
                        NameQuest = "SkyExp1Quest"
                        LevelQuest = 2
                        NameMon = "Shandas"
                        CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                        CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973, 0.65171206, 5.11171692e-08, 0.758466363, -4.76232476e-09, 1, -6.33034247e-08, -0.758466363, 3.76435416e-08, 0.65171206)
                    elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
                        Nonquest = false
                        Ms = "Royal Squad"
                        NameQuest = "SkyExp2Quest"
                        LevelQuest = 1
                        NameMon = "Royal Squad"
                        CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        CFrameMon = CFrame.new(-7555.04199, 5606.90479, -1303.24744, -0.896107852, -9.6057462e-10, -0.443836004, -4.24974544e-09, 1, 6.41599973e-09, 0.443836004, 7.63560326e-09, -0.896107852)
                    elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
                        Nonquest = false
                        Ms = "Royal Soldier"
                        NameQuest = "SkyExp2Quest"
                        LevelQuest = 2
                        NameMon = "Royal Soldier"
                        CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        CFrameMon = CFrame.new(-7837.31152, 5649.65186, -1791.08582, -0.716008604, 0.0104285581, -0.698013008, 5.02521061e-06, 0.99988848, 0.0149335321, 0.69809103, 0.0106890313, -0.715928733)
                    elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
                        Nonquest = false
                        Ms = "Galley Pirate"
                        NameQuest = "FountainQuest"
                        LevelQuest = 1
                        NameMon = "Galley Pirate"
                        CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                        CFrameMon = CFrame.new(5569.80518, 38.5269432, 3849.01196, 0.896460414, 3.98027495e-08, 0.443124533, -1.34262139e-08, 1, -6.26611296e-08, -0.443124533, 5.02237434e-08, 0.896460414)
                    elseif MyLevel >= 650 then -- Galley Captain
                        Nonquest = false
                        Ms = "Galley Captain"
                        NameQuest = "FountainQuest"
                        LevelQuest = 2
                        NameMon = "Galley Captain"
                        CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                        CFrameMon = CFrame.new(5782.90186, 94.5326462, 4716.78174, 0.361808896, -1.24757526e-06, -0.932252586, 2.16989656e-06, 1, -4.96097414e-07, 0.932252586, -1.84339774e-06, 0.361808896)
                    end
                end
                if NewWorld then
                    Nonquest = false
                    if MyLevel == 700 or MyLevel <= 724 then -- Raider
                        Ms = "Raider"
                        NameQuest = "Area1Quest"
                        LevelQuest = 1
                        NameMon = "Raider"
                        CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                        CFrameMon = CFrame.new(-737.026123, 10.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
                    elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary
                        Ms = "Mercenary"
                        NameQuest = "Area1Quest"
                        LevelQuest = 2
                        NameMon = "Mercenary"
                        CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                        CFrameMon = CFrame.new(-1022.21271, 72.9855194, 1891.39148, -0.990782857, 0, -0.135460541, 0, 1, 0, 0.135460541, 0, -0.990782857)
                    elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate
                        Ms = "Swan Pirate"
                        NameQuest = "Area2Quest"
                        LevelQuest = 1
                        NameMon = "Swan Pirate"
                        CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                        CFrameMon = CFrame.new(976.467651, 111.174057, 1229.1084, 0.00852567982, -4.73897828e-08, -0.999963999, 1.12251888e-08, 1, -4.7295778e-08, 0.999963999, -1.08215579e-08, 0.00852567982)
                    elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff
                        Ms = "Factory Staff"
                        NameQuest = "Area2Quest"
                        LevelQuest = 2
                        NameMon = "Factory Staff"
                        CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                        CFrameMon = CFrame.new(336.74585, 73.1620483, -224.129272, 0.993632793, 3.40154607e-08, 0.112668738, -3.87658332e-08, 1, 3.99718729e-08, -0.112668738, -4.40850592e-08, 0.993632793)
                    elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant
                        Ms = "Marine Lieutenant"
                        NameQuest = "MarineQuest3"
                        LevelQuest = 1
                        NameMon = "Marine Lieutenant"
                        CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                        CFrameMon = CFrame.new(-2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, 0.64724648, 0, -0.762281299)
                    elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain
                        Ms = "Marine Captain"
                        NameQuest = "MarineQuest3"
                        LevelQuest = 2
                        NameMon = "Marine Captain"
                        CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                        CFrameMon = CFrame.new(-1814.70313, 72.9919434, -3208.86621, -0.900422215, 7.93464423e-08, -0.435017526, 3.68856199e-08, 1, 1.06050372e-07, 0.435017526, 7.94441988e-08, -0.900422215)
                    elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie
                        Ms = "Zombie"
                        NameQuest = "ZombieQuest"
                        LevelQuest = 1
                        NameMon = "Zombie"
                        CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                        CFrameMon = CFrame.new(-5649.23438, 126.0578, -737.773743, 0.355238914, -8.10359282e-08, 0.934775114, 1.65461245e-08, 1, 8.04023372e-08, -0.934775114, -1.3095117e-08, 0.355238914)
                    elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire
                        Ms = "Vampire"
                        NameQuest = "ZombieQuest"
                        LevelQuest = 2
                        NameMon = "Vampire"
                        CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                        CFrameMon = CFrame.new(-6030.32031, 0.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
                    elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper **
                        Ms = "Snow Trooper"
                        NameQuest = "SnowMountainQuest"
                        LevelQuest = 1
                        NameMon = "Snow Trooper"
                        CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                        CFrameMon = CFrame.new(621.003418, 391.361053, -5335.43604, 0.481644779, 0, 0.876366913, 0, 1, 0, -0.876366913, 0, 0.481644779)
                    elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior
                        Ms = "Winter Warrior"
                        NameQuest = "SnowMountainQuest"
                        LevelQuest = 2
                        NameMon = "Winter Warrior"
                        CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                        CFrameMon = CFrame.new(1295.62683, 429.447784, -5087.04492, -0.698032081, -8.28980049e-08, -0.71606636, -1.98835952e-08, 1, -9.63858184e-08, 0.71606636, -5.30424877e-08, -0.698032081)
                    elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate
                        Ms = "Lab Subordinate"
                        NameQuest = "IceSideQuest"
                        LevelQuest = 1
                        NameMon = "Lab Subordinate"
                        CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                        CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
                    elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior
                        Ms = "Horned Warrior"
                        NameQuest = "IceSideQuest"
                        LevelQuest = 2
                        NameMon = "Horned Warrior"
                        CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                        CFrameMon = CFrame.new(-6401.27979, 15.9775667, -5948.24316, 0.388303697, 0, -0.921531856, 0, 1, 0, 0.921531856, 0, 0.388303697)
                    elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja
                        Ms = "Magma Ninja"
                        NameQuest = "FireSideQuest"
                        LevelQuest = 1
                        NameMon = "Magma Ninja"
                        CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                        CFrameMon = CFrame.new(-5466.06445, 57.6952019, -5837.42822, -0.988835871, 0, -0.149006829, 0, 1, 0, 0.149006829, 0, -0.988835871)
                    elseif MyLevel == 1200 or MyLevel <= 1249 then 
                        Ms = "Lava Pirate"
                        NameQuest = "FireSideQuest"
                        LevelQuest = 2
                        NameMon = "Lava Pirate"
                        CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
                        CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
                    elseif MyLevel == 1250 or MyLevel <= 1274 then 
                        Ms = "Ship Deckhand"
                        NameQuest = "ShipQuest1"
                        LevelQuest = 1
                        NameMon = "Ship Deckhand"
                        CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                        CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
                    elseif MyLevel == 1275 or MyLevel <= 1299 then 
                        Ms = "Ship Engineer"
                        NameQuest = "ShipQuest1"
                        LevelQuest = 2
                        NameMon = "Ship Engineer"
                        CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                        CFrameMon = CFrame.new(921.30249023438, 125.400390625, 32937.34375)
                    elseif MyLevel == 1300 or MyLevel <= 1324 then 
                        Ms = "Ship Steward"
                        NameQuest = "ShipQuest2"
                        LevelQuest = 1
                        NameMon = "Ship Steward"
                        CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                        CFrameMon = CFrame.new(917.96057128906, 136.89932250977, 33343.4140625)
                    elseif MyLevel == 1325 or MyLevel <= 1349 then 
                        Ms = "Ship Officer"
                        NameQuest = "ShipQuest2"
                        LevelQuest = 2
                        NameMon = "Ship Officer"
                        CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                        CFrameMon = CFrame.new(944.44964599609, 181.40081787109, 33278.9453125)
                    elseif MyLevel == 1350 or MyLevel <= 1374 then 
                        Ms = "Arctic Warrior"
                        NameQuest = "FrostQuest"
                        LevelQuest = 1
                        NameMon = "Arctic Warrior"
                        CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                        CFrameMon = CFrame.new(5878.23486, 81.3886948, -6136.35596, -0.451037169, 2.3908234e-07, 0.892505825, -1.08168464e-07, 1, -3.22542007e-07, -0.892505825, -2.4201924e-07, -0.451037169)
                    elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker
                        Ms = "Snow Lurker"
                        NameQuest = "FrostQuest"
                        LevelQuest = 2
                        NameMon = "Snow Lurker"
                        CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                        CFrameMon = CFrame.new(5513.36865, 60.546711, -6809.94971, -0.958693981, -1.65617333e-08, 0.284439981, -4.07668654e-09, 1, 4.44854642e-08, -0.284439981, 4.14883701e-08, -0.958693981)
                    elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier
                        Ms = "Sea Soldier"
                        NameQuest = "ForgottenQuest"
                        LevelQuest = 1
                        NameMon = "Sea Soldier"
                        CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                        CFrameMon = CFrame.new(-3115.78223, 63.8785706, -9808.38574, -0.913427353, 3.11199457e-08, 0.407000452, 7.79564235e-09, 1, -5.89660658e-08, -0.407000452, -5.06883708e-08, -0.913427353)
                    elseif MyLevel >= 1450 then -- Water Fighter
                        Ms = "Water Fighter"
                        NameQuest = "ForgottenQuest"
                        LevelQuest = 2
                        NameMon = "Water Fighter"
                        CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                        CFrameMon = CFrame.new(-3212.99683, 263.809296, -10551.8799, 0.742111444, -5.59139615e-08, -0.670276582, 1.69155214e-08, 1, -6.46908234e-08, 0.670276582, 3.66697037e-08, 0.742111444)
                    end
                end
                if ThreeWorld then
                    if MyLevel >= 1500 and MyLevel <= 1524 then -- Pirate Millionaire
                        Ms = "Pirate Millionaire"
                        NameQuest = "PiratePortQuest"
                        LevelQuest = 1
                        NameMon = "Pirate Millionaire"
                        CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                        CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                    elseif MyLevel >= 1525 and MyLevel <= 1574 then -- Pistol Billionaire
                        Ms = "Pistol Billionaire"
                        NameQuest = "PiratePortQuest"
                        LevelQuest = 2
                        NameMon = "Pistol Billionaire"
                        CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                        CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                    elseif MyLevel >= 1575 and MyLevel <= 1599 then -- Dragon Crew Warrior
                        Ms = "Dragon Crew Warrior"
                        NameQuest = "AmazonQuest"
                        LevelQuest = 1
                        NameMon = "Dragon Crew Warrior"
                        CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                        CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
                    elseif MyLevel >= 1600 and MyLevel <= 1624 then -- Dragon Crew Archer
                        Ms = "Dragon Crew Archer"
                        NameQuest = "AmazonQuest"
                        LevelQuest = 2
                        NameMon = "Dragon Crew Archer"
                        CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                        CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
                    elseif MyLevel >= 1625 and MyLevel <= 1649 then -- Female Islander
                        Ms = "Female Islander"
                        NameQuest = "AmazonQuest2"
                        LevelQuest = 1
                        NameMon = "Female Islander"
                        CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
                    elseif MyLevel >= 1650 and MyLevel <= 1699 then -- Giant Islander
                        Ms = "Giant Islander"
                        NameQuest = "AmazonQuest2"
                        LevelQuest = 2
                        NameMon = "Giant Islander"
                        CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
                    elseif MyLevel >= 1700 and MyLevel <= 1724 then -- Marine Commodore
                        Ms = "Marine Commodore"
                        NameQuest = "MarineTreeIsland"
                        LevelQuest = 1
                        NameMon = "Marine Commodore"
                        CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                        CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
                    elseif MyLevel >= 1725 and MyLevel <= 1774 then -- Marine Rear Admiral
                        Ms = "Marine Rear Admiral"
                        NameQuest = "MarineTreeIsland"
                        LevelQuest = 2
                        NameMon = "Marine Rear Admiral"
                        CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                        CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
                    elseif MyLevel >= 1775 and MyLevel <= 1799 then -- Fishman Raider
                        Ms = "Fishman Raider"
                        NameQuest = "DeepForestIsland3"
                        LevelQuest = 1
                        NameMon = "Fishman Raider"
                        CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                        CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
                    elseif MyLevel >= 1800 and MyLevel <= 1824 then -- Fishman Captain
                        Ms = "Fishman Captain"
                        NameQuest = "DeepForestIsland3"
                        LevelQuest = 2
                        NameMon = "Fishman Captain"
                        CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                        CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
                    elseif MyLevel >= 1825 and MyLevel <= 1849 then -- Forest Pirate
                        Ms = "Forest Pirate"
                        NameQuest = "DeepForestIsland"
                        LevelQuest = 1
                        NameMon = "Forest Pirate"
                        CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                        CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
                    elseif MyLevel >= 1850 and MyLevel <= 1899 then -- Mythological Pirate
                        Ms = "Mythological Pirate"
                        NameQuest = "DeepForestIsland"
                        LevelQuest = 2
                        NameMon = "Mythological Pirate"
                        CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                        CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
                    elseif MyLevel >= 1900 and MyLevel <= 1924 then -- Jungle Pirate
                        Ms = "Jungle Pirate"
                        NameQuest = "DeepForestIsland2"
                        LevelQuest = 1
                        NameMon = "Jungle Pirate"
                        CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                        CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
                    elseif MyLevel >= 1925 and MyLevel <= 1974 then -- Musketeer Pirate
                        Ms = "Musketeer Pirate"
                        NameQuest = "DeepForestIsland2"
                        LevelQuest = 2
                        NameMon = "Musketeer Pirate"
                        CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                        CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
                    elseif MyLevel >= 1975 and MyLevel <= 1999 then
                        Ms = "Reborn Skeleton"
                        NameQuest = "HauntedQuest1"
                        LevelQuest = 1
                        NameMon = "Reborn Skeleton"
                        CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
                        CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
                    elseif MyLevel >= 2000 and MyLevel <= 2024 then
                        Ms = "Living Zombie"
                        NameQuest = "HauntedQuest1"
                        LevelQuest = 2
                        NameMon = "Living Zombie"
                        CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
                        CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
                    elseif MyLevel >= 2025 and MyLevel <= 2049  then
                        Ms = "Demonic Soul"
                        NameQuest = "HauntedQuest2"
                        LevelQuest = 1
                        NameMon = "Demonic Soul"
                        CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                        CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
                    elseif MyLevel >= 2050 and MyLevel <= 2074 then
                        Ms = "Posessed Mummy"
                        NameQuest = "HauntedQuest2"
                        LevelQuest = 2
                        NameMon = "Posessed Mummy"
                        CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                        CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)    
                    elseif MyLevel >= 2075 and MyLevel <= 2099 then
                        Ms = "Peanut Scout"
                        NameQuest = "NutsIslandQuest"
                        LevelQuest = 1
                        NameMon = "Peanut Scout"
                        CFrameQuest = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
                        CFrameMon = CFrame.new(-2098.07544, 192.611862, -10248.8867, 0.983392298, -9.57031787e-08, 0.181492642, 8.7276355e-08, 1, 5.44169616e-08, -0.181492642, -3.76732068e-08, 0.983392298)
                    elseif MyLevel >= 2100 and MyLevel <= 2124 then
                        Ms = "Peanut President"
                        NameQuest = "NutsIslandQuest"
                        LevelQuest = 2
                        NameMon = "Peanut President"
                        CFrameQuest = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
                        CFrameMon = CFrame.new(-1876.95959, 192.610947, -10542.2939, 0.0553516336, -2.83836812e-08, 0.998466909, -6.89634405e-10, 1, 2.84654931e-08, -0.998466909, -2.26418861e-09, 0.0553516336)
                    elseif MyLevel >= 2125 and MyLevel <= 2149 then
                        Ms = "Ice Cream Chef"
                        NameQuest = "IceCreamIslandQuest"
                        LevelQuest = 1
                        NameMon = "Ice Cream Chef"
                        CFrameQuest = CFrame.new(-820.404358, 65.8453293, -10965.5654, 0.822534859, 5.24448502e-08, -0.568714678, -2.08336317e-08, 1, 6.20846663e-08, 0.568714678, -3.92184099e-08, 0.822534859)
                        CFrameMon = CFrame.new(-821.614075, 208.39537, -10990.7617, -0.870096624, 3.18909272e-08, 0.492881238, -1.8357893e-08, 1, -9.71107568e-08, -0.492881238, -9.35439957e-08, -0.870096624)
                    elseif MyLevel >= 2150 and MyLevel <= 2199 then 
                        Ms = "Ice Cream Commander"
                        NameQuest = "IceCreamIslandQuest"
                        LevelQuest = 2
                        NameMon = "Ice Cream Commander"
                        CFrameQuest = CFrame.new(-819.376526, 67.4634171, -10967.2832)
                        CFrameMon = CFrame.new(-610.11669921875, 208.26904296875, -11253.686523438)
                    elseif MyLevel >= 2200 and MyLevel <= 2224 then 
                        Ms = "Cookie Crafter"
                        NameQuest = "CakeQuest1"
                        LevelQuest = 1
                        NameMon = "Cookie Crafter"
                        CFrameQuest = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
                        CFrameMon = CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)
                    elseif MyLevel >= 2225 and MyLevel <= 2249 then 
                        Ms = "Cake Guard"
                        NameQuest = "CakeQuest1"
                        LevelQuest = 2
                        NameMon = "Cake Guard"
                        CFrameQuest = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
                        CFrameMon = CFrame.new(-1817.9747314453125, 209.5632781982422, -12288.9228515625)
                    elseif MyLevel >= 2250 and MyLevel <= 2274 then 
                        Ms = "Baking Staff"
                        NameQuest = "CakeQuest2"
                        LevelQuest = 1
                        NameMon = "Baking Staff"
                        CFrameQuest = CFrame.new(-1928.31763, 37.7296638, -12840.626)
                        CFrameMon = CFrame.new(-1818.347900390625, 93.41275787353516, -12887.66015625)
                    elseif MyLevel >= 2275 then 
                        Ms = "Head Baker"
                        NameQuest = "CakeQuest2"
                        LevelQuest = 2
                        NameMon = "Head Baker"
                        CFrameQuest = CFrame.new(-1928.31763, 37.7296638, -12840.626)
                        CFrameMon = CFrame.new(-2288.795166015625, 106.9419174194336, -12811.111328125)
                    end
                end
            else
                if first_sea then
                    if MyLevel == 1 or MyLevel <= 9 then -- Bandit
                        Nonquest = false
                        Ms = "Bandit"
                        NameQuest = "BanditQuest1"
                        LevelQuest = 1
                        NameMon = "Bandit"
                        CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
                        CFrameMon = CFrame.new(1353.44885, 3.40935516, 1376.92029, 0.776053488, -6.97791975e-08, 0.630666852, 6.99138596e-08, 1, 2.4612488e-08, -0.630666852, 2.49917598e-08, 0.776053488)
                    elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
                        Nonquest = false
                        Ms = "Monkey"
                        NameQuest = "JungleQuest"
                        LevelQuest = 1
                        NameMon = "Monkey"
                        CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        CFrameMon = CFrame.new(-1402.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
                    elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
                        Nonquest = false
                        Ms = "Gorilla"
                        NameQuest = "JungleQuest"
                        LevelQuest = 2
                        NameMon = "Gorilla"
                        CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        CFrameMon = CFrame.new(-1267.89001, 66.2034225, -531.818115, -0.813996196, -5.25169774e-08, -0.580869019, -5.58769671e-08, 1, -1.21082593e-08, 0.580869019, 2.26011476e-08, -0.813996196)
                    elseif MyLevel >= 30 and MyLevel <= 40-1 then
                        Nonquest = false
                        Ms = "Pirate"
                        NameQuest = "BuggyQuest1"
                        LevelQuest = 1
                        NameMon = "Pirate"
                        CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                        CFrameMon = CFrame.new(-1169.5365, 5.09531212, 3933.84082, -0.971822679, -3.73200315e-09, 0.235713184, -4.16762763e-10, 1, 1.41145424e-08, -0.235713184, 1.3618596e-08, -0.971822679)
                    elseif MyLevel >= 40 and MyLevel <= 60-1 then
                        Nonquest = false
                        Ms = "Brute"
                        NameQuest = "BuggyQuest1"
                        LevelQuest = 2
                        NameMon = "Brute"
                        CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                        CFrameMon = CFrame.new(-1165.09985, 15.1531372, 4363.51514, -0.962800264, 1.17564889e-06, 0.270213336, 2.60172015e-07, 1, -3.4237969e-06, -0.270213336, -3.22613073e-06, -0.962800264)
                    elseif MyLevel >= 60 and MyLevel <= 75-1 then
                        Nonquest = false
                        Ms = "Desert Bandit"
                        NameQuest = "DesertQuest"
                        LevelQuest = 1
                        NameMon = "Desert Bandit"
                        CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                        CFrameMon = CFrame.new(932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
                    elseif MyLevel >= 75 and MyLevel <= 90-1 then
                        Nonquest = false
                        Ms = "Desert Officer"
                        NameQuest = "DesertQuest"
                        LevelQuest = 2
                        NameMon = "Desert Officer"
                        CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                        CFrameMon = CFrame.new(1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-08, -0.070099175, -1.69377223e-08, 1, -8.17798806e-08, 0.070099175, -8.03913949e-08, -0.997540116)
                    elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
                        Nonquest = false
                        Ms = "Snow Bandit"
                        NameQuest = "SnowQuest"
                        LevelQuest = 1
                        NameMon = "Snow Bandits"
                        CFrameQuest = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                        CFrameMon = CFrame.new(1412.92346, 55.3503647, -1260.62036, -0.246266365, -0.0169920288, -0.969053388, 0.000432241941, 0.999844253, -0.0176417865, 0.969202161, -0.00476344163, -0.246220857)
                    elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
                        Nonquest = false
                        Ms = "Snowman"
                        NameQuest = "SnowQuest"
                        LevelQuest = 2
                        NameMon = "Snowman"
                        CFrameQuest = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                        CFrameMon = CFrame.new(1376.86401, 97.2779999, -1396.93115, -0.986755967, 7.71178321e-08, -0.162211925, 7.71531674e-08, 1, 6.08143536e-09, 0.162211925, -6.51427134e-09, -0.986755967)
                    elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
                        Nonquest = false
                        Ms = "Chief Petty Officer"
                        NameQuest = "MarineQuest2"
                        LevelQuest = 1
                        NameMon = "Chief Petty Officer"
                        CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
                    elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
                        Nonquest = false
                        Ms = "Sky Bandit"
                        NameQuest = "SkyQuest"
                        LevelQuest = 1
                        NameMon = "Sky Bandit"
                        CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                        CFrameMon = CFrame.new(-4959.51367, 365.39267, -2974.56812, 0.964867651, 7.74418396e-08, 0.262737453, -6.95931988e-08, 1, -3.91783708e-08, -0.262737453, 1.95171506e-08, 0.964867651)
                    elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
                        Nonquest = false
                        Ms = "Dark Master"
                        NameQuest = "SkyQuest"
                        LevelQuest = 2
                        NameMon = "Dark Master"
                        CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                        CFrameMon = CFrame.new(-5079.98096, 376.477356, -2194.17139, 0.465965867, -3.69776352e-08, 0.884802461, 3.40249851e-09, 1, 4.00000886e-08, -0.884802461, -1.56281423e-08, 0.465965867)
                    elseif MyLevel == 190 or MyLevel <= 209 then
                        Nonquest = false
                        Ms = "Prisoner"
                        LevelQuest = 1
                        NameQuest = "PrisonerQuest"
                        NameMon = "Prisoner"
                        CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                        CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                    elseif MyLevel == 210 or MyLevel <= 249 then
                        Nonquest = false
                        Ms = "Dangerous Prisoner"
                        LevelQuest = 2
                        NameQuest = "PrisonerQuest"
                        NameMon = "Dangerous Prisoner"
                        CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                        CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                    elseif MyLevel == 250 or MyLevel <= 274 then -- Toga Warrior
                        Nonquest = false
                        Ms = "Toga Warrior"
                        NameQuest = "ColosseumQuest"
                        LevelQuest = 1
                        NameMon = "Toga Warrior"
                        CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                        CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
                    elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
                        Nonquest = false
                        Ms = "Gladiator"
                        NameQuest = "ColosseumQuest"
                        LevelQuest = 2
                        NameMon = "Gladiato"
                        CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                        CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
                    elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
                        Nonquest = false
                        Ms = "Military Soldier"
                        NameQuest = "MagmaQuest"
                        LevelQuest = 1
                        NameMon = "Military Soldier"
                        CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                        CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
                    elseif MyLevel == 330 or MyLevel <= 374 then -- Military Spy
                        Nonquest = false
                        Ms = "Military Spy"
                        NameQuest = "MagmaQuest"
                        LevelQuest = 2
                        NameMon = "Military Spy"
                        CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                        CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
                    elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
                        Nonquest = false
                        Ms = "Fishman Warrior"
                        NameQuest = "FishmanQuest"
                        LevelQuest = 1
                        NameMon = "Fishman Warrior"
                        CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
                        CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
                    elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
                        Nonquest = false
                        Ms = "Fishman Commando"
                        NameQuest = "FishmanQuest"
                        LevelQuest = 2
                        NameMon = "Fishman Commando"
                        CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504)
                        CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.916871)
                    elseif MyLevel == 450 or MyLevel <= 474 then 
                        Nonquest = false
                        Ms = "God's Guard"
                        NameQuest = "SkyExp1Quest"
                        LevelQuest = 1
                        NameMon = "God's Guards"
                        CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105)
                        CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
                    elseif MyLevel == 475 or MyLevel <= 524 then 
                        Nonquest = false
                        Ms = "Shanda"
                        NameQuest = "SkyExp1Quest"
                        LevelQuest = 2
                        NameMon = "Shandas"
                        CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                        CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973, 0.65171206, 5.11171692e-08, 0.758466363, -4.76232476e-09, 1, -6.33034247e-08, -0.758466363, 3.76435416e-08, 0.65171206)
                    elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
                        Nonquest = false
                        Ms = "Royal Squad"
                        NameQuest = "SkyExp2Quest"
                        LevelQuest = 1
                        NameMon = "Royal Squad"
                        CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        CFrameMon = CFrame.new(-7555.04199, 5606.90479, -1303.24744, -0.896107852, -9.6057462e-10, -0.443836004, -4.24974544e-09, 1, 6.41599973e-09, 0.443836004, 7.63560326e-09, -0.896107852)
                    elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
                        Nonquest = false
                        Ms = "Royal Soldier"
                        NameQuest = "SkyExp2Quest"
                        LevelQuest = 2
                        NameMon = "Royal Soldier"
                        CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                        CFrameMon = CFrame.new(-7837.31152, 5649.65186, -1791.08582, -0.716008604, 0.0104285581, -0.698013008, 5.02521061e-06, 0.99988848, 0.0149335321, 0.69809103, 0.0106890313, -0.715928733)
                    elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
                        Nonquest = false
                        Ms = "Galley Pirate"
                        NameQuest = "FountainQuest"
                        LevelQuest = 1
                        NameMon = "Galley Pirate"
                        CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                        CFrameMon = CFrame.new(5569.80518, 38.5269432, 3849.01196, 0.896460414, 3.98027495e-08, 0.443124533, -1.34262139e-08, 1, -6.26611296e-08, -0.443124533, 5.02237434e-08, 0.896460414)
                    elseif MyLevel >= 650 then -- Galley Captain
                        Nonquest = false
                        Ms = "Galley Captain"
                        NameQuest = "FountainQuest"
                        LevelQuest = 2
                        NameMon = "Galley Captain"
                        CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                        CFrameMon = CFrame.new(5782.90186, 94.5326462, 4716.78174, 0.361808896, -1.24757526e-06, -0.932252586, 2.16989656e-06, 1, -4.96097414e-07, 0.932252586, -1.84339774e-06, 0.361808896)
                    end
                end
                if NewWorld then
                    Nonquest = false
                    if MyLevel == 700 or MyLevel <= 724 then -- Raider
                        Ms = "Raider"
                        NameQuest = "Area1Quest"
                        LevelQuest = 1
                        NameMon = "Raider"
                        CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                        CFrameMon = CFrame.new(-737.026123, 10.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
                    elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary
                        Ms = "Mercenary"
                        NameQuest = "Area1Quest"
                        LevelQuest = 2
                        NameMon = "Mercenary"
                        CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                        CFrameMon = CFrame.new(-1022.21271, 72.9855194, 1891.39148, -0.990782857, 0, -0.135460541, 0, 1, 0, 0.135460541, 0, -0.990782857)
                    elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate
                        Ms = "Swan Pirate"
                        NameQuest = "Area2Quest"
                        LevelQuest = 1
                        NameMon = "Swan Pirate"
                        CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                        CFrameMon = CFrame.new(976.467651, 111.174057, 1229.1084, 0.00852567982, -4.73897828e-08, -0.999963999, 1.12251888e-08, 1, -4.7295778e-08, 0.999963999, -1.08215579e-08, 0.00852567982)
                    elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff
                        Ms = "Factory Staff"
                        NameQuest = "Area2Quest"
                        LevelQuest = 2
                        NameMon = "Factory Staff"
                        CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                        CFrameMon = CFrame.new(336.74585, 73.1620483, -224.129272, 0.993632793, 3.40154607e-08, 0.112668738, -3.87658332e-08, 1, 3.99718729e-08, -0.112668738, -4.40850592e-08, 0.993632793)
                    elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant
                        Ms = "Marine Lieutenant"
                        NameQuest = "MarineQuest3"
                        LevelQuest = 1
                        NameMon = "Marine Lieutenant"
                        CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                        CFrameMon = CFrame.new(-2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, 0.64724648, 0, -0.762281299)
                    elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain
                        Ms = "Marine Captain"
                        NameQuest = "MarineQuest3"
                        LevelQuest = 2
                        NameMon = "Marine Captain"
                        CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                        CFrameMon = CFrame.new(-1814.70313, 72.9919434, -3208.86621, -0.900422215, 7.93464423e-08, -0.435017526, 3.68856199e-08, 1, 1.06050372e-07, 0.435017526, 7.94441988e-08, -0.900422215)
                    elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie
                        Ms = "Zombie"
                        NameQuest = "ZombieQuest"
                        LevelQuest = 1
                        NameMon = "Zombie"
                        CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                        CFrameMon = CFrame.new(-5649.23438, 126.0578, -737.773743, 0.355238914, -8.10359282e-08, 0.934775114, 1.65461245e-08, 1, 8.04023372e-08, -0.934775114, -1.3095117e-08, 0.355238914)
                    elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire
                        Ms = "Vampire"
                        NameQuest = "ZombieQuest"
                        LevelQuest = 2
                        NameMon = "Vampire"
                        CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                        CFrameMon = CFrame.new(-6030.32031, 0.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
                    elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper **
                        Ms = "Snow Trooper"
                        NameQuest = "SnowMountainQuest"
                        LevelQuest = 1
                        NameMon = "Snow Trooper"
                        CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                        CFrameMon = CFrame.new(621.003418, 391.361053, -5335.43604, 0.481644779, 0, 0.876366913, 0, 1, 0, -0.876366913, 0, 0.481644779)
                    elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior
                        Ms = "Winter Warrior"
                        NameQuest = "SnowMountainQuest"
                        LevelQuest = 2
                        NameMon = "Winter Warrior"
                        CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                        CFrameMon = CFrame.new(1295.62683, 429.447784, -5087.04492, -0.698032081, -8.28980049e-08, -0.71606636, -1.98835952e-08, 1, -9.63858184e-08, 0.71606636, -5.30424877e-08, -0.698032081)
                    elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate
                        Ms = "Lab Subordinate"
                        NameQuest = "IceSideQuest"
                        LevelQuest = 1
                        NameMon = "Lab Subordinate"
                        CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                        CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
                    elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior
                        Ms = "Horned Warrior"
                        NameQuest = "IceSideQuest"
                        LevelQuest = 2
                        NameMon = "Horned Warrior"
                        CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                        CFrameMon = CFrame.new(-6401.27979, 15.9775667, -5948.24316, 0.388303697, 0, -0.921531856, 0, 1, 0, 0.921531856, 0, 0.388303697)
                    elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja
                        Ms = "Magma Ninja"
                        NameQuest = "FireSideQuest"
                        LevelQuest = 1
                        NameMon = "Magma Ninja"
                        CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                        CFrameMon = CFrame.new(-5466.06445, 57.6952019, -5837.42822, -0.988835871, 0, -0.149006829, 0, 1, 0, 0.149006829, 0, -0.988835871)
                    elseif MyLevel == 1200 or MyLevel <= 1249 then 
                        Ms = "Lava Pirate"
                        NameQuest = "FireSideQuest"
                        LevelQuest = 2
                        NameMon = "Lava Pirate"
                        CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
                        CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
                    elseif MyLevel == 1250 or MyLevel <= 1274 then 
                        Ms = "Ship Deckhand"
                        NameQuest = "ShipQuest1"
                        LevelQuest = 1
                        NameMon = "Ship Deckhand"
                        CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                        CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
                    elseif MyLevel == 1275 or MyLevel <= 1299 then 
                        Ms = "Ship Engineer"
                        NameQuest = "ShipQuest1"
                        LevelQuest = 2
                        NameMon = "Ship Engineer"
                        CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                        CFrameMon = CFrame.new(921.30249023438, 125.400390625, 32937.34375)
                    elseif MyLevel == 1300 or MyLevel <= 1324 then 
                        Ms = "Ship Steward"
                        NameQuest = "ShipQuest2"
                        LevelQuest = 1
                        NameMon = "Ship Steward"
                        CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                        CFrameMon = CFrame.new(917.96057128906, 136.89932250977, 33343.4140625)
                    elseif MyLevel == 1325 or MyLevel <= 1349 then 
                        Ms = "Ship Officer"
                        NameQuest = "ShipQuest2"
                        LevelQuest = 2
                        NameMon = "Ship Officer"
                        CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                        CFrameMon = CFrame.new(944.44964599609, 181.40081787109, 33278.9453125)
                    elseif MyLevel == 1350 or MyLevel <= 1374 then 
                        Ms = "Arctic Warrior"
                        NameQuest = "FrostQuest"
                        LevelQuest = 1
                        NameMon = "Arctic Warrior"
                        CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                        CFrameMon = CFrame.new(5878.23486, 81.3886948, -6136.35596, -0.451037169, 2.3908234e-07, 0.892505825, -1.08168464e-07, 1, -3.22542007e-07, -0.892505825, -2.4201924e-07, -0.451037169)
                    elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker
                        Ms = "Snow Lurker"
                        NameQuest = "FrostQuest"
                        LevelQuest = 2
                        NameMon = "Snow Lurker"
                        CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                        CFrameMon = CFrame.new(5513.36865, 60.546711, -6809.94971, -0.958693981, -1.65617333e-08, 0.284439981, -4.07668654e-09, 1, 4.44854642e-08, -0.284439981, 4.14883701e-08, -0.958693981)
                    elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier
                        Ms = "Sea Soldier"
                        NameQuest = "ForgottenQuest"
                        LevelQuest = 1
                        NameMon = "Sea Soldier"
                        CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                        CFrameMon = CFrame.new(-3115.78223, 63.8785706, -9808.38574, -0.913427353, 3.11199457e-08, 0.407000452, 7.79564235e-09, 1, -5.89660658e-08, -0.407000452, -5.06883708e-08, -0.913427353)
                    elseif MyLevel >= 1450 then -- Water Fighter
                        Ms = "Water Fighter"
                        NameQuest = "ForgottenQuest"
                        LevelQuest = 2
                        NameMon = "Water Fighter"
                        CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                        CFrameMon = CFrame.new(-3212.99683, 263.809296, -10551.8799, 0.742111444, -5.59139615e-08, -0.670276582, 1.69155214e-08, 1, -6.46908234e-08, 0.670276582, 3.66697037e-08, 0.742111444)
                    end
                end
                if ThreeWorld then
                    if MyLevel >= 1500 and MyLevel <= 1524 then -- Pirate Millionaire
                        Ms = "Pirate Millionaire"
                        NameQuest = "PiratePortQuest"
                        LevelQuest = 1
                        NameMon = "Pirate Millionaire"
                        CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                        CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                    elseif MyLevel >= 1525 and MyLevel <= 1574 then -- Pistol Billionaire
                        Ms = "Pistol Billionaire"
                        NameQuest = "PiratePortQuest"
                        LevelQuest = 2
                        NameMon = "Pistol Billionaire"
                        CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                        CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                    elseif MyLevel >= 1575 and MyLevel <= 1599 then -- Dragon Crew Warrior
                        Ms = "Dragon Crew Warrior"
                        NameQuest = "AmazonQuest"
                        LevelQuest = 1
                        NameMon = "Dragon Crew Warrior"
                        CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                        CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
                    elseif MyLevel >= 1600 and MyLevel <= 1624 then -- Dragon Crew Archer
                        Ms = "Dragon Crew Archer"
                        NameQuest = "AmazonQuest"
                        LevelQuest = 2
                        NameMon = "Dragon Crew Archer"
                        CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                        CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
                    elseif MyLevel >= 1625 and MyLevel <= 1649 then -- Female Islander
                        Ms = "Female Islander"
                        NameQuest = "AmazonQuest2"
                        LevelQuest = 1
                        NameMon = "Female Islander"
                        CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
                    elseif MyLevel >= 1650 and MyLevel <= 1699 then -- Giant Islander
                        Ms = "Giant Islander"
                        NameQuest = "AmazonQuest2"
                        LevelQuest = 2
                        NameMon = "Giant Islander"
                        CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
                    elseif MyLevel >= 1700 and MyLevel <= 1724 then -- Marine Commodore
                        Ms = "Marine Commodore"
                        NameQuest = "MarineTreeIsland"
                        LevelQuest = 1
                        NameMon = "Marine Commodore"
                        CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                        CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
                    elseif MyLevel >= 1725 and MyLevel <= 1774 then -- Marine Rear Admiral
                        Ms = "Marine Rear Admiral"
                        NameQuest = "MarineTreeIsland"
                        LevelQuest = 2
                        NameMon = "Marine Rear Admiral"
                        CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                        CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
                    elseif MyLevel >= 1775 and MyLevel <= 1799 then -- Fishman Raider
                        Ms = "Fishman Raider"
                        NameQuest = "DeepForestIsland3"
                        LevelQuest = 1
                        NameMon = "Fishman Raider"
                        CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                        CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
                    elseif MyLevel >= 1800 and MyLevel <= 1824 then -- Fishman Captain
                        Ms = "Fishman Captain"
                        NameQuest = "DeepForestIsland3"
                        LevelQuest = 2
                        NameMon = "Fishman Captain"
                        CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                        CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
                    elseif MyLevel >= 1825 and MyLevel <= 1849 then -- Forest Pirate
                        Ms = "Forest Pirate"
                        NameQuest = "DeepForestIsland"
                        LevelQuest = 1
                        NameMon = "Forest Pirate"
                        CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                        CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
                    elseif MyLevel >= 1850 and MyLevel <= 1899 then -- Mythological Pirate
                        Ms = "Mythological Pirate"
                        NameQuest = "DeepForestIsland"
                        LevelQuest = 2
                        NameMon = "Mythological Pirate"
                        CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                        CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
                    elseif MyLevel >= 1900 and MyLevel <= 1924 then -- Jungle Pirate
                        Ms = "Jungle Pirate"
                        NameQuest = "DeepForestIsland2"
                        LevelQuest = 1
                        NameMon = "Jungle Pirate"
                        CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                        CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
                    elseif MyLevel >= 1925 and MyLevel <= 1974 then -- Musketeer Pirate
                        Ms = "Musketeer Pirate"
                        NameQuest = "DeepForestIsland2"
                        LevelQuest = 2
                        NameMon = "Musketeer Pirate"
                        CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                        CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
                    elseif MyLevel >= 1975 and MyLevel <= 1999 then
                        Ms = "Reborn Skeleton"
                        NameQuest = "HauntedQuest1"
                        LevelQuest = 1
                        NameMon = "Reborn Skeleton"
                        CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
                        CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
                    elseif MyLevel >= 2000 and MyLevel <= 2024 then
                        Ms = "Living Zombie"
                        NameQuest = "HauntedQuest1"
                        LevelQuest = 2
                        NameMon = "Living Zombie"
                        CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
                        CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
                    elseif MyLevel >= 2025 and MyLevel <= 2049  then
                        Ms = "Demonic Soul"
                        NameQuest = "HauntedQuest2"
                        LevelQuest = 1
                        NameMon = "Demonic Soul"
                        CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                        CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
                    elseif MyLevel >= 2050 and MyLevel <= 2074 then
                        Ms = "Posessed Mummy"
                        NameQuest = "HauntedQuest2"
                        LevelQuest = 2
                        NameMon = "Posessed Mummy"
                        CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
                        CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)    
                    elseif MyLevel >= 2075 and MyLevel <= 2099 then
                        Ms = "Peanut Scout"
                        NameQuest = "NutsIslandQuest"
                        LevelQuest = 1
                        NameMon = "Peanut Scout"
                        CFrameQuest = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
                        CFrameMon = CFrame.new(-2098.07544, 192.611862, -10248.8867, 0.983392298, -9.57031787e-08, 0.181492642, 8.7276355e-08, 1, 5.44169616e-08, -0.181492642, -3.76732068e-08, 0.983392298)
                    elseif MyLevel >= 2100 and MyLevel <= 2124 then
                        Ms = "Peanut President"
                        NameQuest = "NutsIslandQuest"
                        LevelQuest = 2
                        NameMon = "Peanut President"
                        CFrameQuest = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
                        CFrameMon = CFrame.new(-1876.95959, 192.610947, -10542.2939, 0.0553516336, -2.83836812e-08, 0.998466909, -6.89634405e-10, 1, 2.84654931e-08, -0.998466909, -2.26418861e-09, 0.0553516336)
                    elseif MyLevel >= 2125 and MyLevel <= 2149 then
                        Ms = "Ice Cream Chef"
                        NameQuest = "IceCreamIslandQuest"
                        LevelQuest = 1
                        NameMon = "Ice Cream Chef"
                        CFrameQuest = CFrame.new(-820.404358, 65.8453293, -10965.5654, 0.822534859, 5.24448502e-08, -0.568714678, -2.08336317e-08, 1, 6.20846663e-08, 0.568714678, -3.92184099e-08, 0.822534859)
                        CFrameMon = CFrame.new(-821.614075, 208.39537, -10990.7617, -0.870096624, 3.18909272e-08, 0.492881238, -1.8357893e-08, 1, -9.71107568e-08, -0.492881238, -9.35439957e-08, -0.870096624)
                    elseif MyLevel >= 2150 and MyLevel <= 2199 then 
                        Ms = "Ice Cream Commander"
                        NameQuest = "IceCreamIslandQuest"
                        LevelQuest = 2
                        NameMon = "Ice Cream Commander"
                        CFrameQuest = CFrame.new(-819.376526, 67.4634171, -10967.2832)
                        CFrameMon = CFrame.new(-610.11669921875, 208.26904296875, -11253.686523438)
                    elseif MyLevel >= 2200 and MyLevel <= 2224 then 
                        Ms = "Cookie Crafter"
                        NameQuest = "CakeQuest1"
                        LevelQuest = 1
                        NameMon = "Cookie Crafter"
                        CFrameQuest = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
                        CFrameMon = CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)
                    elseif MyLevel >= 2225 and MyLevel <= 2249 then 
                        Ms = "Cake Guard"
                        NameQuest = "CakeQuest1"
                        LevelQuest = 2
                        NameMon = "Cake Guard"
                        CFrameQuest = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
                        CFrameMon = CFrame.new(-1817.9747314453125, 209.5632781982422, -12288.9228515625)
                    elseif MyLevel >= 2250 and MyLevel <= 2274 then 
                        Ms = "Baking Staff"
                        NameQuest = "CakeQuest2"
                        LevelQuest = 1
                        NameMon = "Baking Staff"
                        CFrameQuest = CFrame.new(-1928.31763, 37.7296638, -12840.626)
                        CFrameMon = CFrame.new(-1818.347900390625, 93.41275787353516, -12887.66015625)
                    elseif MyLevel >= 2275 then 
                        Ms = "Head Baker"
                        NameQuest = "CakeQuest2"
                        LevelQuest = 2
                        NameMon = "Head Baker"
                        CFrameQuest = CFrame.new(-1928.31763, 37.7296638, -12840.626)
                        CFrameMon = CFrame.new(-2288.795166015625, 106.9419174194336, -12811.111328125)
                    end
                end
            end
        end
        CheckQuest()

        function Click()
            local VirtualUser = game:GetService('VirtualUser')
            VirtualUser:CaptureController()
            VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
        end
        
        function EquipWeapon(ToolSe)
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait(.4)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
        end  

        function toTarget(targetPos, targetCFrame)
            if _G.FastTween then
                Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
                if Distance < 1000 then
                    Speed = 325
                elseif Distance >= 1000 then
                    Speed = 300
                end
            else
                Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
                if Distance < 1000 then
                    Speed = 275
                elseif Distance >= 1000 then
                    Speed = 250
                end
            end
            local tweenfunc = {}
        
            local tween_s = game:service"TweenService"
            local info = TweenInfo.new((targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
            local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
            tween:Play()
        
            function tweenfunc:Stop()
                tween:Cancel()
            end 
        
            if StatsBypass == "Bypassed" and UseTP then
                tween:Cancel()
                game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"].CFrame = targetCFrame
            end
            if not tween then return tween end
            return tweenfunc
        end
           
        function AutoFarm(NameMonster,RemoteQuestGet,LevelQuestGet,TextQuestName,WaitMonSpawnCFrame,NPCQuestCFrame,FarmMode)
            local AutoFarmfunc = {}
        
            function AutoFarmfunc:Update(NewNameMonster,NewRemoteQuestGet,NewLevelQuestGet,NewTextQuestName,NewWaitMonSpawnCFrame,NewNPCQuestCFrame)
                NameMonster = NewNameMonster
                RemoteQuestGet = NewRemoteQuestGet
                LevelQuestGet = NewLevelQuestGet
                TextQuestName = NewTextQuestName
                WaitMonSpawnCFrame = NewWaitMonSpawnCFrame
                NPCQuestCFrame = NewNPCQuestCFrame
            end
            function AutoFarmfunc:UpdateFarmMode(NewFarmMode)
                FarmMode = NewFarmMode
            end
            function AutoFarmfunc:Start()
                farm = true
            end
            function AutoFarmfunc:Stop()
                farm = false
            end
            
            spawn(function()
                while true do
                    if farm then
                        if FarmMode == "AutoFarmLevel" then
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and Nonquest == false then -- Берет квест
                                Usefastattack = false
                                StartMagnetAutoFarmLevel= false
                                Questtween = toTarget(NPCQuestCFrame.Position,NPCQuestCFrame)
                                if first_sea and (Ms == "Fishman Commando") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                    if Questtween then Questtween:Stop() end wait(.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                elseif first_sea and not (Ms == "Fishman Commando") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                    if Questtween then Questtween:Stop() end wait(.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                                elseif NewWorld and string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                    if Questtween then Questtween:Stop() end
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                elseif NewWorld and not string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                    if Questtween then Questtween:Stop() end
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                                elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 100 then
                                    if Questtween then Questtween:Stop() end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                    wait(.9)
                                    local string_1 = "StartQuest";
                                    local string_2 = NameQuest;
                                    local number_1 = LevelQuest;
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1, string_2, number_1);
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                end
                            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true or Nonquest == true then
                                if Nonquest == true then
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                end
                                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then -- Находит одного из врагов
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do -- Проходит по каждому врагу
                                    end
                                else
                                    if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) and Nonquest == false then
                                        game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                    end
                                    Usefastattack = false
                                    StartMagnetAutoFarmLevel= false
                                    Modstween = toTarget(CFrameMon.Position,CFrameMon)
                                    if first_sea and (Ms == "Fishman Commando") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                        if Modstween then Modstween:Stop() end wait(.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                    elseif first_sea and not (Ms == "Fishman Commando") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                        if Modstween then Modstween:Stop() end wait(.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                                    elseif NewWorld and string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                        if Modstween then Modstween:Stop() end wait(.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                    elseif NewWorld and not string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                        if Modstween then Modstween:Stop() end wait(.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                                    elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                        if Modstween then Modstween:Stop() end wait(.5)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                    end
                                end
                            end
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                Usefastattack = false
                                StartMagnetAutoFarmLevel= false
                                Questtween = toTarget(NPCQuestCFrame.Position,NPCQuestCFrame) wait(.1)
                                if first_sea and (Ms == "Fishman Commando") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                    if Questtween then Questtween:Stop() end wait(.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                elseif first_sea and not (Ms == "Fishman Commando") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                    if Questtween then Questtween:Stop() end wait(.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                                elseif NewWorld and string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                    if Questtween then Questtween:Stop() end
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                elseif NewWorld and not string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                    if Questtween then Questtween:Stop() end
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                                elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                    if Questtween then Questtween:Stop() end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                    wait(1)
                                    local string_1 = "StartQuest";
                                    local string_2 = NameQuest;
                                    local number_1 = LevelQuest;
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1, string_2, number_1);
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                end
                            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if farm and v.Name == Ms and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                            if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                repeat wait()
                                                    Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 1))
                                                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                                            if Farmtween then Farmtween:Stop() end
                                                            StartMagnetAutoFarmLevel= true
                                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                local args = {
                                                                    [1] = "Buso"
                                                                }
                                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                            end
                                                            HealthMin = v.Humanoid.MaxHealth*Persen/100
                                                            PosMon = v.HumanoidRootPart.CFrame
                                                            if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                                EquipWeapon(_G.SelectWeaponSword)
                                                                Click()
                                                                Usefastattack = true
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 1)
                                                                StartMagnetAutoFarmLevel = true
                                                            else
                                                                EquipWeapon(_G.SelectWeapon)
                                                                Click()
                                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                    local args = {
                                                                        [1] = "Buso"
                                                                    }
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                                end
                                                                PosMon = v.HumanoidRootPart.CFrame
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 1)
                                                                StartMagnetAutoFarmLevel = true
                                                                Usefastattack = false
                                                            end
                                                        end
                                                    else
                                                        if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                            game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                                        end
                                                        Usefastattack = false
                                                        StartMagnetAutoFarmLevel= false
                                                        Modstween = toTarget(CFrameMon.Position,CFrameMon)
                                                        if first_sea and (Ms == "Fishman Commando") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                                            if Modstween then Modstween:Stop() end wait(.5)
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                        elseif first_sea and not (Ms == "Fishman Commando") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                                            if Modstween then Modstween:Stop() end wait(.5)
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                                                        elseif NewWorld and string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                                            if Modstween then Modstween:Stop() end wait(.5)
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                                        elseif NewWorld and not string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                                            if Modstween then Modstween:Stop() end wait(.5)
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                                                        elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                                            if Modstween then Modstween:Stop() end wait(.5)
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                                        end 
                                                    end
                                                until not farm or not v.Parent or v.Humanoid.Health <= 0 or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                    game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                                end
                                                StartMagnetAutoFarmLevel= false
                                                Usefastattack = false
                                            else
                                                game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                            end 
                                        end
                                    end
                                else
                                    if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                    end
                                    Usefastattack = false
                                    StartMagnetAutoFarmLevel= false
                                    Modstween = toTarget(CFrameMon.Position,CFrameMon)
                                    if first_sea and (Ms == "Fishman Commando") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                        if Modstween then Modstween:Stop() end wait(.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                    elseif first_sea and not (Ms == "Fishman Commando") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                        if Modstween then Modstween:Stop() end wait(.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
                                    elseif NewWorld and string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                        if Modstween then Modstween:Stop() end wait(.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                                    elseif NewWorld and not string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                        if Modstween then Modstween:Stop() end wait(.5)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                                    elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                        if Modstween then Modstween:Stop() end wait(.5)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                    end 
                                end
                            end
                        end
                    end
                    fastWait(.05)
                end
            end)
            spawn(function()
                game:GetService("RunService").Stepped:Connect(function()
                    if farm or TweenIsland or TweenNPC or AutoFarmChest or FramBossSelectHop or AutoNew or Auto_Farm or AutoNew or Factory or Autothird or MasteryDevilFruit or MasteryWeapon or MasteryGun or FramBoss or KillAllBoss or AutoMobAura or Observation or AutoSaber or AutoPole or AutoPoleHOP or AutoQuestBartilo or AutoEvoRace2 or AutoRengoku or AutoFramEctoplasm or AutoBuddySwords or AutoBuddySwords or AutoFarmBone or AutoHallowScythe or AutoSoulReaper or AutoFarmCakePrince or AutoYama or HolyTorch or AutoEliteHunter or AutoHakiRainbow or MusketeeHat or AutoObservationHakiV2 or NextIsland or AutoRaids then
                        if not KRNL_LOADED and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                            setfflag("HumanoidParallelRemoveNoPhysics", "False")
                            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                        else
                            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                                local LOL = Instance.new("Part")
                                LOL.Name = "LOL"
                                LOL.Parent = game.Workspace
                                LOL.Anchored = true
                                LOL.Transparency = 0.8
                                LOL.Size = Vector3.new(50,0.5,50)
                            elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                                game.Workspace["LOL"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.8,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                            end
                        end
                        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    end
                end)
            end)
            spawn(function()
                game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if farm and StartMagnetAutoFarmLevel and v.Name ~= "Ice Admiral [Boss]" and (v.HumanoidRootPart.Position-PosMon.Position).magnitude <= 350 then
                            if syn then
                                if isnetworkowner(v.HumanoidRootPart) then
                                    v.HumanoidRootPart.CFrame = PosMon
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                    v.Humanoid:ChangeState(11)
                                end
                            else
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                v.Humanoid:ChangeState(11)
                            end	
                        end
                    end
                end)
            end)
            return AutoFarmfunc
        end

        _G.SelectWeapon = "Melee"
        _G.EuphoriaLoaded = 1
        wait(1)
        Notification("Euphoria Loaded Successfully")
        print("Euphoria Loaded Successfully")
        spawn(function()
            while wait() do
                if sethiddenproperty then
                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999)
                end 
                if setscriptable then
                    setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                    game.Players.LocalPlayer.SimulationRadius = math.huge * math.huge, math.huge * math.huge * 1 / 0 * 1 / 0 * 1 / 0 * 1 / 0 * 1 / 0
                end
            end
        end)
        
        function TP(P)
            NoClip = true
            Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance < 10 then
                Speed = 1000
            elseif Distance < 170 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
                Speed = 350
            elseif Distance < 1000 then
                Speed = 350
            elseif Distance >= 1000 then
                Speed = 250
            end
            game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
                {CFrame = P}
            ):Play()
            NoClip = false
        end
        
        local CameraShakeInstanceSet = require(game:GetService("ReplicatedStorage").Util.CameraShaker.Main.CameraShakeInstance)
    
        
        spawn(function()
            local gg = getrawmetatable(game)
            local old = gg.__namecall
            setreadonly(gg,false)
            gg.__namecall = newcclosure(function(...)
                local method = getnamecallmethod()
                local args = {...}
                if tostring(method) == "FireServer" then
                    if tostring(args[1]) == "RemoteEvent" then
                        if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                            if UseSkillMasteryDevilFruit then
                                args[2] = PositionSkillMasteryDevilFruit
                                return old(unpack(args))
                            elseif Skillaimbot then
                                args[2] = AimBotSkillPosition
                                return old(unpack(args))
                            end
                        end
                    end
                end
                return old(...)
            end)
        end)
        
        local CombatFrameworkROld = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
        local CombatFrameworkR = getupvalues(CombatFrameworkROld)[2]
        local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
        CameraShakerR:Stop()
        spawn(function()
            game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    CombatFrameworkR.activeController.hitboxMagnitude = 55
                    if Usefastattack then
                        if _G.FastAttack then
                            if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
                                CombatFrameworkR.activeController.timeToNextAttack = 3
                            elseif game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
                                CombatFrameworkR.activeController.timeToNextAttack = 2
                            else
                                CombatFrameworkR.activeController.timeToNextAttack = 0
                            end
                            CombatFrameworkR.activeController.attacking = false
                            CombatFrameworkR.activeController.increment = 3
                            CombatFrameworkR.activeController.blocking = false
                            CombatFrameworkR.activeController.timeToNextBlock = 0
                            game.Players.LocalPlayer.Character.Humanoid.Sit = false	
                        end
                    end
                end)
            end)
        end)
        
        spawn(function()
            game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    if Usefastattack then
                        if _G.FastAttack then
                            Click()
                        end
                    end
                end)
            end)
        end)
    

        local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
        local Window = OrionLib:MakeWindow({Name = "Euphoria 0_o", HidePremium = false, SaveConfig = true, ConfigFolder = "euphoriacfg"})
        local Main = Window:MakeTab({
            Name = "Main",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })
        _G.Auto_Farm = false
        local MainAutoFarmFunction = AutoFarm(Ms,NameQuest,LevelQuest,NameMon,CFrameMon,CFrameQuest,"AutoFarmLevel")
        spawn(function()
            while true do CheckQuest()
                if _G.Auto_Farm then
                    MainAutoFarmFunction:Update(Ms,NameQuest,LevelQuest,NameMon,CFrameMon,CFrameQuest)
                end
                fastWait(.05)
            end
        end)

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

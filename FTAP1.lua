loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

KickSRV9 = nil
flingT = nil
killGrabT = nil
infLineExtendT = nil
antiGrab1T = nil
antiGrab1AnchorT = true
antiBlob1T = nil
antiExplodeT = true
antiLagT = nil
antiStickyT = nil
blobLoopT = nil
walkSpeedT = nil
jumpPowerT = nil
infJumpT = nil
noClipT = nil
floatT = nil
masslessT = nil
blobLoopServerT = nil
blobLoopServerTwoHandT = nil
silentBlobServerT = nil
lagT = nil
pingT = nil
shurikenLagServerT = nil
slideTPT = nil
inspectT = false
inspectInfoT = false
inspectInfoOnT = false
ragdollSpamT = false
permRagdollT = nil
autoGucciT = nil
destroyAutoGucciT = nil
sitJumpT = false
floatUpT = false
floatDownT = false
zoomT = false
spychatT = nil
spySelfT = nil
publicSpyT = nil

strengthV = 1000
lineDistanceV = 0
increaseLineExtendV = 0
walkSpeedV = 16
jumpPowerV = 24
floatY = -3.1
zoomV = 20
linesV = 400
packetsV = 3000
playersInLoop1V = {}
playersInLoop2V = {}

plr = game.Players.LocalPlayer
cam = workspace.CurrentCamera
mouse = plr:GetMouse()
uis = game:GetService("UserInputService")
inv = workspace:WaitForChild(plr.Name.."SpawnedInToys")
rs = game:GetService("ReplicatedStorage")
rs2 = game:GetService("RunService")
deb = game:GetService("Debris")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Debris = game:GetService("Debris")
local GrabEvents = ReplicatedStorage:WaitForChild("GrabEvents")
local MenuToys = ReplicatedStorage:WaitForChild("MenuToys")
local CharacterEvents = ReplicatedStorage:WaitForChild("CharacterEvents")
local SetNetworkOwner = GrabEvents:WaitForChild("SetNetworkOwner")
local Struggle = CharacterEvents:WaitForChild("Struggle")
local CreateLine = GrabEvents:WaitForChild("CreateGrabLine")
local DestroyLine = GrabEvents:WaitForChild("DestroyGrabLine")
local DestroyToy = MenuToys:WaitForChild("DestroyToy")
local localPlayer = Players.LocalPlayer
local playerCharacter = localPlayer.Character or localPlayer.CharacterAdded:Wait()
localPlayer.CharacterAdded:Connect(function(character)
    playerCharacter = character
end)
local AutoRecoverDroppedPartsCoroutine
local connectionBombReload
local reloadBombCoroutine
local antiExplosionConnection
local poisonAuraCoroutine
local deathAuraCoroutine
local reloadBombCoroutine
local poisonCoroutines = {}
local strengthConnection
local coroutineRunning = false
local autoStruggleCoroutine
local autoDefendCoroutine
local auraCoroutine
local gravityCoroutine
local kickCoroutine
local kickGrabCoroutine
local hellSendGrabCoroutine
local anchoredParts = {}
local anchoredConnections = {}
local compiledGroups = {}
local compileConnections = {}
local compileCoroutine
local fireAllCoroutine
local connections = {}
local renderSteppedConnections = {}
local ragdollAllCoroutine
local crouchJumpCoroutine
local crouchSpeedCoroutine
local anchorGrabCoroutine
local poisonGrabCoroutine
local ufoGrabCoroutine
local burnPart
local fireGrabCoroutine
local noclipGrabCoroutine
local antiKickCoroutine
local kickGrabConnections = {}
local blobmanCoroutine
local lighBitSpeedCoroutine
local lightbitpos = {}
local lightbitparts = {}
local lightbitcon
local lightbitcon2
local lightorbitcon
local bodyPositions = {}
local alignOrientations = {}
local skolko = "" 
local decoyOffset = 15
local stopDistance = 5
local circleRadius = 10
local circleSpeed = 2
local auraToggle = 1
local crouchWalkSpeed = 50
local crouchJumpPower = 50
local kickMode = 1
local auraRadius = 20
local lightbit = 0.3125
local lightbitoffset = 1
local lightbitradius = 20
local usingradius = lightbitradius
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Player = game.Players.LocalPlayer
local U = loadstring(game:HttpGet("https://paste.ee/r/7X7NLEPB", true))()
--[[
    Utilities.IsDescendantOf(child, parent)

    Utilities.GetDescendant(parent, name, className)

    Utilities.GetAncestor(child, name, className)

    Utilities.FindFirstAncestorOfType(child, className)

    Utilities.GetChildrenByType(parent, className)

    Utilities.GetDescendantsByType(parent, className)

    Utilities.HasAttribute(instance, attributeName)

    Utilities.GetAttributeOrDefault(instance, attributeName, defaultValue)

    Utilities.CloneInstance(instance, newParent)
    
    Utilities.WaitForChildOfType(parent, className, timeout)

    Utilities.IsPointInPart(part, point)

    Utilities.GetDistance(pointA, pointB)

    Utilities.GetAngleBetweenVectors(vectorA, vectorB)

    Utilities.RotateVectorY(vector, angle)

    Utilities.GetSurroundingVectors(target, radius, amount, offset)


--]]
local followMode = true
local toysFolder = workspace:FindFirstChild(localPlayer.Name.."SpawnedInToys")
local playerList = {}
local selection 
local blobman 
local platforms = {}
local ownedToys = {}
local bombList = {}
_G.ToyToLoad = "BombMissile"
_G.MaxMissiles = 9
_G.BlobmanDelay = 0.005

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Nagibatooooooooooooooor3000",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Nagibator3000",
   LoadingSubtitle = "by Can",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "Notification Title",
   Content = "Notification Content",
   Duration = 6.5,
   Image = 4483362458,
})

function ragdollLoopF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if ragdollLoopD then return end
    ragdollLoopD = true
    while sitJumpT do
        if char and hrp then
            local args={[1] = hrp, [2] = 0}
            rs:WaitForChild("CharacterEvents"):WaitForChild("RagdollRemote"):FireServer(unpack(args))
        end
        task.wait()
    end
    ragdollLoopD = false
end

function inspectF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    mouseTargetInspectF()
    inspectInfoF()
    if not inspectD then
        inspectD = true
        if inspectT then
            if currentInspectS == 1 then
                currentInspectedAdorneeS = mouse.Target.Parent
                currentInspectedPartS = mouse.Target
                highlightC = highlight:Clone()
                highlightC.Adornee = mouse.Target.Parent
                highlightC.Parent = mouse.Target
                highlightC.FillColor = Color3.fromRGB(255, 255, 255)
                highlightC.OutlineColor = Color3.fromRGB(160, 11, 11)
            elseif currentInspectS == 2 then
                currentInspectedAdorneeS = workspace.Plots:FindFirstChild("Plot"..currentHouseInspectS)
                currentInspectedPartS = mouse.Target
                highlightC = highlight:Clone()
                highlightC.Adornee = workspace.Plots:FindFirstChild("Plot"..currentHouseInspectS)
                highlightC.Parent = mouse.Target
                highlightC.FillColor = Color3.fromRGB(255, 255, 255)
                highlightC.OutlineColor = Color3.fromRGB(0, 60, 180)
            elseif currentInspectS == 3 then
                currentInspectedAdorneeS = mouse.Target.Parent
                currentInspectedPartS = mouse.Target
                highlightC = highlight:Clone()
                highlightC.Adornee = mouse.Target.Parent
                highlightC.Parent = mouse.Target
                highlightC.FillColor = Color3.fromRGB(255, 255, 255)
                highlightC.OutlineColor = Color3.fromRGB(20, 170, 20)
            elseif currentInspectS == 4 then
                currentInspectedAdorneeS = mouse.Target.Parent
                currentInspectedPartS = mouse.Target
                highlightC = highlight:Clone()
                highlightC.Adornee = mouse.Target.Parent
                highlightC.Parent = mouse.Target
                highlightC.FillColor = Color3.fromRGB(255, 255, 255)
                highlightC.OutlineColor = Color3.fromRGB(180, 20, 180)
            end
        elseif not inspectT then
            currentInspectS = 0
            currentHouseInspectS = 0
            currentInspectedPartS = nil
            currentInspectedAdorneeS = nil
            highlightC:Destroy()
        end
        wait(0.1)
        inspectD = false
    end
end

function inspectInfoF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if not inspectInfoOnT and inspectInfoT and inspectT and currentInspectS ~= 0 and currentInspectedPartS ~= nil and currentInspectedAdorneeS ~= nil then
        inspectInfoOnT = true
        billboardC = billboard:Clone()
        billboardC.Adornee = currentInspectedAdorneeS
        billboardC.Parent = currentInspectedPartS

        scrollframeC = scrollframe:Clone()
        scrollframeC.Parent = billboardC
        scrollframeC.Size = UDim2.new(0, 160, 0, 40)
        scrollframeC.ScrollBarImageTransparency = 1 

        textlabelC1 = textlabel:Clone()
        textlabelC1.Parent = scrollframeC
        textlabelC1.Size = UDim2.new(0, 140, 0, 40)
        if currentInspectS == 1 then
            textlabelC1.Text = currentInspectedAdorneeS.Name.." ("..game.Players:FindFirstChild(currentInspectedAdorneeS.Name).DisplayName..")"
        else
            textlabelC1.Text = currentInspectedAdorneeS.Name
        end
    elseif not inspectInfoT and inspectInfoOnT or not inspectT and inspectInfoOnT then
        inspectInfoOnT = false
        inspectInfoT = false
        billboardC:Destroy()
    end
end

function inspectBringF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if inspectT and currentInspectS ~= 2 and currentInspectS ~= 4 then
        returnPosS = hrp.CFrame
        hrp.CFrame = currentInspectedAdorneeS.PrimaryPart.CFrame + Vector3.new(7, 3, 0)
        wait(0.15)
        if currentInspectS == 1 then
            rs.GrabEvents.SetNetworkOwner:FireServer(currentInspectedAdorneeS:WaitForChild("HumanoidRootPart"), currentInspectedAdorneeS:WaitForChild("HumanoidRootPart").CFrame)
            wait(0.1)
            currentInspectedAdorneeS:WaitForChild("HumanoidRootPart").CFrame = returnPosS
        else
            rs.GrabEvents.SetNetworkOwner:FireServer(currentInspectedAdorneeS.PrimaryPart, currentInspectedAdorneeS.PrimaryPart.CFrame)
            wait(0.1)
            currentInspectedAdorneeS.PrimaryPart.CFrame = returnPosS
        end
        hrp.CFrame = returnPosS
    elseif not inspectT then
        if mouse.Target.Parent:IsDescendantOf(workspace.PlotItems) or string.match(mouse.Target.Parent.Parent.Name, "SpawnedInToys") or mouse.Target.Parent.Parent:FindFirstChild("SpawningPlatform") or mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
            returnPosS = hrp.CFrame
            mouseTargetS = mouse.Target
            hrp.CFrame = mouseTargetS.Parent.PrimaryPart.CFrame + Vector3.new(10, 3, 0)
            wait(0.15)
            if mouseTargetS.Parent:FindFirstChildOfClass("Humanoid") then
                rs.GrabEvents.SetNetworkOwner:FireServer(mouseTargetS.Parent:WaitForChild("HumanoidRootPart"), mouseTargetS.Parent:WaitForChild("HumanoidRootPart").CFrame)
                wait(0.1)
                mouseTargetS.Parent:WaitForChild("HumanoidRootPart").CFrame = returnPosS
            else
                rs.GrabEvents.SetNetworkOwner:FireServer(mouseTargetS.Parent.PrimaryPart, mouseTargetS.Parent.PrimaryPart.CFrame)
                wait(0.1)
                mouseTargetS.Parent.PrimaryPart.CFrame = returnPosS
            end
            hrp.CFrame = returnPosS
            mouseTargetS = nil
        end
    end
end

local function handleCharacterAdded(player)
    local characterAddedConnection = player.CharacterAdded:Connect(function(character)
        local hrp = character:WaitForChild("HumanoidRootPart")
        local fpp = hrp:WaitForChild("FirePlayerPart")
        fpp.Size = Vector3.new(4.5, 5, 4.5)
        fpp.CollisionGroup = "1"
        fpp.CanQuery = true
    end)
    table.insert(kickGrabConnections, characterAddedConnection)
end

local function kickGrab()
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = player.Character.HumanoidRootPart
            if hrp:FindFirstChild("FirePlayerPart") then
                local fpp = hrp.FirePlayerPart
                fpp.Size = Vector3.new(4.5, 5.5, 4.5)
                fpp.CollisionGroup = "1"
                fpp.CanQuery = true
            end
        end
        handleCharacterAdded(player)
    end

    local playerAddedConnection = Players.PlayerAdded:Connect(handleCharacterAdded)
    table.insert(kickGrabConnections, playerAddedConnection)
end

local function anchorKickGrab()
    while true do
        pcall(function()
            local grabParts = workspace:FindFirstChild("GrabParts")
            if not grabParts then return end

            local grabPart = grabParts:FindFirstChild("GrabPart")
            if not grabPart then return end

            local weldConstraint = grabPart:FindFirstChild("WeldConstraint")
            if not weldConstraint or not weldConstraint.Part1 then return end

            local primaryPart = weldConstraint.Part1
            if not primaryPart then return end

            if isDescendantOf(primaryPart, workspace.Map) then return end
            if primaryPart.Name ~= "FirePlayerPart" then return end

            for _, child in ipairs(primaryPart:GetChildren()) do
                if child:IsA("BodyPosition") or child:IsA("BodyGyro") then
                    child:Destroy()
                end
            end

            while workspace:FindFirstChild("GrabParts") do
                wait()
            end
            createBodyMovers(primaryPart, primaryPart.Position, primaryPart.CFrame)
        end)
        wait()
    end
end

local blobalter = 1
local function blobGrabPlayer(player, blobman)
    if blobalter == 1 then
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local args = {
                [1] = blobman:FindFirstChild("LeftDetector"),
                [2] = player.Character:FindFirstChild("HumanoidRootPart"),
                [3] = blobman:FindFirstChild("LeftDetector"):FindFirstChild("LeftWeld")
            }
            blobman:WaitForChild("BlobmanSeatAndOwnerScript"):WaitForChild("CreatureGrab"):FireServer(unpack(args))
            blobalter = 2
        end
    else
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local args = {
                [1] = blobman:FindFirstChild("RightDetector"),
                [2] = player.Character:FindFirstChild("HumanoidRootPart"),
                [3] = blobman:FindFirstChild("RightDetector"):FindFirstChild("RightWeld")
            }
            blobman:WaitForChild("BlobmanSeatAndOwnerScript"):WaitForChild("CreatureGrab"):FireServer(unpack(args))
            blobalter = 1
        end
    end
end

function updateBlobLoopServerF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    updateCurrentBlobmanF()
    for i, e in game.Players:GetPlayers() do
        if e.Character:FindFirstChild("HumanoidRootPart") == nil then continue end
        if e.Character:FindFirstChild("HumanoidRootPart") and hum then
            if currentBlobS ~= nil and blobLoopServerT then
                blobGrabF(currentBlobS, e.Character:WaitForChild("HumanoidRootPart"), "Left")
                wait()
                blobDropF(currentBlobS, e.Character:WaitForChild("HumanoidRootPart"), "Left")
                wait()
                silentBlobGrabF(currentBlobS, e.Character:WaitForChild("HumanoidRootPart"), "Left")
            end
        end
    end
    while blobLoopServerT and task.wait() do
        for i, e in game.Players:GetPlayers() do
            if e.Character:FindFirstChild("HumanoidRootPart") == nil then continue end
            if e.Character:FindFirstChild("HumanoidRootPart") and hum then
                if currentBlobS ~= nil and blobLoopServerT then
                    blobGrabF(currentBlobS, e.Character:WaitForChild("HumanoidRootPart"), "Left")
                    wait()
                    blobDropF(currentBlobS, e.Character:WaitForChild("HumanoidRootPart"), "Left")
                    wait()
                    blobGrabF(currentBlobS, e.Character:WaitForChild("HumanoidRootPart"), "Right")
                    wait()
                    blobDropF(currentBlobS, e.Character:WaitForChild("HumanoidRootPart"), "Right")
                end
            end
        end
    end
end

local function kickGrab()
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = player.Character.HumanoidRootPart
            if hrp:FindFirstChild("FirePlayerPart") then
                local fpp = hrp.FirePlayerPart
                fpp.Size = Vector3.new(4.5, 5.5, 4.5)
                fpp.CollisionGroup = "1"
                fpp.CanQuery = true
            end
        end
        handleCharacterAdded(player)
    end

    local playerAddedConnection = Players.PlayerAdded:Connect(handleCharacterAdded)
    table.insert(kickGrabConnections, playerAddedConnection)
end

function updateCurrentBlobmanF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    for _, blobs in workspace:GetDescendants() do
        if blobs.Name ~= "CreatureBlobman" then continue end
        if not blobs:FindFirstChild("VehicleSeat") then continue end
        if not blobs.VehicleSeat:FindFirstChild("SeatWeld") then continue end
        if blobs.VehicleSeat.SeatWeld.Part1 == hrp then
            currentBlobS = blobs
        end
    end
end

function blobGrabF(blob, target, side)
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    local args = {
        [1] = blob:FindFirstChild(side.."Detector"),
        [2] = target,
        [3] = blob:FindFirstChild(side.."Detector"):FindFirstChild(side.."Weld"),
        }
        blob.BlobmanSeatAndOwnerScript.CreatureGrab:FireServer(unpack(args))
end

function blobDropF(blob, target, side)
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    local args = {
        [1] = blob:FindFirstChild(side.."Detector"):FindFirstChild(side.."Weld"),
        [2] = target,
        }
        blob.BlobmanSeatAndOwnerScript.CreatureDrop:FireServer(unpack(args))
end

function silentBlobGrabF(blob, target, side)
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    local args = {
        [1] = blob:FindFirstChild(side.."Detector"),
        [2] = target,
        [3] = blob:FindFirstChild(side.."Detector").AttachPlayer,
        }
        blob.BlobmanSeatAndOwnerScript.CreatureGrab:FireServer(unpack(args))
end

function updateCurrentHouseF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if char.Parent == workspace then
        currentHouseS = 0
    elseif char.Parent.Name == "PlayersInPlots" then
        for i, e in workspace.Plots:GetChildren() do
            for i, e in e.PlotSign.ThisPlotsOwners:GetChildren() do
                if e.Value == plr.Name then
                    if e.Parent.Parent.Parent.Name == "Plot1" then
						currentHouseS = 1
					elseif e.Parent.Parent.Parent.Name == "Plot2" then
						currentHouseS = 2
					elseif e.Parent.Parent.Parent.Name == "Plot3" then
						currentHouseS = 3
					elseif e.Parent.Parent.Parent.Name == "Plot4" then
						currentHouseS = 4
					elseif e.Parent.Parent.Parent.Name == "Plot5" then
						currentHouseS = 5
					end
                end
            end
        end
	end
end

function mouseTargetInspectF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if mouse.Target then
        if mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
            currentInspectS = 1
            currentHouseInspectS = 0
        elseif mouse.Target.Parent:IsDescendantOf(workspace.Plots) then
                local current = mouse.Target
                repeat
                   current = current.Parent
                until string.match(current.Name, "Plot")
                for i = 1, 5 do
                    if current.Name == "Plot"..i then
                        currentHouseInspectS = i
                    end
                end
                currentInspectS = 2
        elseif mouse.Target.Parent:IsDescendantOf(workspace.PlotItems) or string.match(mouse.Target.Parent.Parent.Name, "SpawnedInToys") or mouse.Target.Parent.Parent:FindFirstChild("SpawningPlatform") then
            currentInspectS = 3
            currentHouseInspectS = 0
        else
            currentInspectS = 4
            currentHouseInspectS = 0
        end
    end
end

local function chat(player, message)
    if player.Name == "MaybeFlashh" and player ~= game.Players.LocalPlayer and not deb then end
    deb = true
    if string.lower(message) == ":bring all" then
        plr.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
    elseif string.lower(message) == ":kick all" then
        while true do
            print("You have been kicked - OniX")
        end
    end
    wait(0.3)
    deb = false
end

local function add(player)
    player.Chatted:Connect(function(message)
        chat(player, message)
    end)
end

for _, player in ipairs(game.Players:GetPlayers()) do
    add(player)
end

game.Players.PlayerAdded:Connect(function(player)
    add(player)
end)
--GRABFUNCS--
function flingF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    workspace.ChildAdded:Connect(function(model)
        if model.Name == "GrabParts" then
            local part_to_impulse = model["GrabPart"]["WeldConstraint"].Part1
            if part_to_impulse then
                model:GetPropertyChangedSignal("Parent"):Connect(function()
                    if not model.Parent and flingT then
                        uis.InputBegan:Connect(function(inp, chat)
                            if inp.UserInputType == Enum.UserInputType.MouseButton2 then
                                local velocityObj = Instance.new("BodyVelocity", part_to_impulse)
                                velocityObj.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                velocityObj.Velocity = cam.CFrame.lookVector * strengthV
                                deb:AddItem(velocityObj, 1)
                            end
                        end)
                    end
                end)
            end
        end
    end)
end

function killGrabF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    workspace.ChildAdded:Connect(function(e)
        if e.Name == "GrabParts" and killGrabT and e.GrabPart.WeldConstraint.Part1.Parent.Name ~= char.Name and e.GrabPart.WeldConstraint.Part1.Parent.Name ~= "MaybeFlashh" then
            e.GrabPart.WeldConstraint.Part1.Parent:FindFirstChildOfClass("Humanoid").Health = 0
        end
    end)
end

function infLineExtendF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    uis.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseWheel then
            if lineDistanceV < 11 then
                lineDistanceV = 11
            end
    
            if input.Position.Z > 0 then
                lineDistanceV = lineDistanceV + increaseLineExtendV
            elseif input.Position.Z < 0 then
                lineDistanceV = lineDistanceV - increaseLineExtendV
            end
        end
    end)
    
    workspace.ChildAdded:Connect(function(child)
        if child.Name == "GrabParts" and child:IsA("Model") then
            if infLineExtendT and uis.MouseEnabled then
                local grabPartsModel = child

                grabPartsModel:WaitForChild("GrabPart")
                grabPartsModel:WaitForChild("DragPart")
                    
                local clonedDragPart = grabPartsModel.DragPart:Clone()
                clonedDragPart.Name = "DragPart1"
                clonedDragPart.AlignPosition.Attachment1 = clonedDragPart.DragAttach
                clonedDragPart.Parent = grabPartsModel
                
                lineDistanceV = (clonedDragPart.Position - cam.CFrame.Position).Magnitude
    
                clonedDragPart.AlignOrientation.Enabled = false
                grabPartsModel.DragPart.AlignPosition.Enabled = false
    
                task.spawn(function()
                    while grabPartsModel.Parent do
                        clonedDragPart.Position = cam.CFrame.Position + cam.CFrame.LookVector * lineDistanceV
                        task.wait()
                    end
            
                    lineDistanceV = 0
                end)
            end
        end
    end)
end

--ANTIFUNCS--
function antiGrab1F()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    while antiGrab1T  do
        if plr.IsHeld.Value == true and antiGrab1T == true then
            if hrp ~= nil then
                if antiGrab1AnchorT then
                    hrp.Anchored = true
                    while plr.IsHeld.Value == true do rs.CharacterEvents.Struggle:FireServer(plr); end
                    hrp.Anchored = false
                elseif not antiGrab1AnchorT then
                    while plr.IsHeld.Value == true do rs.CharacterEvents.Struggle:FireServer(plr); end
                end           
			end
		end
    end
end

function antiBlob1F()
    workspace.DescendantAdded:Connect(function(toy)
        if toy.Name == "CreatureBlobman" and toy.Parent ~= inv and antiBlob1T then
            wait()
            toy.LeftDetector:Destroy()
            toy.RightDetector:Destroy()
            if hrp ~= nil then
                if antiGrab1AnchorT then
                    hrp.Anchored = true
                    while plr.IsHeld.Value == true do rs.CharacterEvents.Struggle:FireServer(plr); end
                    hrp.Anchored = false
                elseif not antiGrab1AnchorT then
                    while plr.IsHeld.Value == true do rs.CharacterEvents.Struggle:FireServer(plr); end
                end
			end
		end
    end)
end

function antiExplodeF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    workspace.ChildAdded:Connect(function(model)
        if model.Name == "Part" and char ~= nil and antiExplodeT then
            local mag = (model.Position - hrp.Position).Magnitude
            if mag <= 20 then
                hrp.Anchored = true
				wait(0.01)
                while char["Right Arm"].RagdollLimbPart.CanCollide == true do wait(0.001) end
                hrp.Anchored = false
            end
        end
    end)
end

function antiLagF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if antiLagT == true then
        plr.PlayerScripts.CharacterAndBeamMove.Disabled = true
    elseif antiLagT == false then
        plr.PlayerScripts.CharacterAndBeamMove.Enabled = true
    end
end

function antiStickyF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if antiStickyT == true then
        plr.PlayerScripts.StickyPartsTouchDetection.Disabled = true
    elseif antiStickyT == false then
        plr.PlayerScripts.StickyPartsTouchDetection.Enabled = true
    end
end

--LOOPFUNCS--
function getPlayerList()
    local playerList = {}
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= plr and p.Name ~= "MaybeFlashh" then
            table.insert(playerList, p.Name .. " (" .. p.DisplayName .. ")")
        end
    end
    return playerList
end



function loopPlayerBlobF()
    updateCurrentBlobmanF()
    for i, e in ipairs(playersInLoop2V) do
        local player
        if game.Players:FindFirstChild(e) then
            player = game.Players:FindFirstChild(e)
        else
            continue
        end
        if blobLoopT then
          game:GetService("Workspace").misha836484SpawnedInToys.CreatureBlobman.HumanoidRootPart.CFrame = player.Character:FindFirstChild("HumanoidRootPart").CFrame
		  wait()
		  blobGrabF(currentBlobS, player.Character:WaitForChild("HumanoidRootPart"), "Left")
		end
    end
    while task.wait() and blobLoopT do
        for i, e in ipairs(playersInLoop2V) do
            local player
            if game.Players:FindFirstChild(e) then
                player = game.Players:FindFirstChild(e)
            else
                continue
            end
            blobGrabF(currentBlobS, player.Character:WaitForChild("HumanoidRootPart"), "Left")
			wait()
			blobDropF(currentBlobS, player.Character:WaitForChild("HumanoidRootPart"), "Left")
			blobGrabF(currentBlobS, player.Character:WaitForChild("HumanoidRootPart"), "Right")
			wait()
			blobDropF(currentBlobS, player.Character:WaitForChild("HumanoidRootPart"), "Right")
        end
    end
end

--PLAYERFUNCS--
function updateWalkSpeedF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if walkSpeedT then
        hum.WalkSpeed = walkSpeedV
    elseif not walkSpeedT then
        hum.WalkSpeed = 16
    end
    hum:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if walkSpeedT then
            hum.WalkSpeed = walkSpeedV
        elseif not walkSpeedT then
            hum.WalkSpeed = 16
        end
    end)
end

function updateJumpPowerF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if jumpPowerT then
        hum.JumpPower = jumpPowerV
    elseif not jumpPowerT then
        hum.JumpPower = 24
    end
end

function updateNoClipF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    while noClipT and task.wait(0.1) do
        char.Head.CanCollide = false
        char.Torso.CanCollide = false
    end
    if not noClipT then
        char.Head.CanCollide = true
        char.Torso.CanCollide = true
    end
end

function updateInfJumpF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    uis.JumpRequest:Connect(function()
        if infJumpT and not infJumpD then
            infJumpD = true
            hum:ChangeState(Enum.HumanoidStateType.Jumping)
            wait()
            infJumpD = false
        end
    end)
end

function updateFloatF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if floatT then
    local float = Instance.new('Part')
    float.Name = "floatPart"
    float.Parent = char
    float.Transparency = 1
    float.Size = Vector3.new(2,0.2,1.5)
    float.Anchored = true
    float.CFrame = hrp.CFrame * CFrame.new(0, floatY, 0)
    local function floatLoop()
        if char:FindFirstChild("floatPart") and hrp then
            float.CFrame = hrp.CFrame * CFrame.new(0, floatY, 0)
        end
    end			
    floatFunc = rs2.Heartbeat:Connect(floatLoop)
    elseif not floatT then
        if char:FindFirstChild("floatPart") then
            char:FindFirstChild("floatPart"):Destroy()
        end
    end
end

function masslessF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    for i, e in char:GetChildren() do
        if e:IsA("BasePart") and masslessT then
            e.Massless = true
        elseif e:IsA("BasePart") and not masslessT then
            e.Massless = false
        end
    end
end

--SERVERFUNCS--
function updateBlobLoopServerF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    updateCurrentBlobmanF()
    for i, e in game.Players:GetPlayers() do
        if e.Character:FindFirstChild("HumanoidRootPart") == nil then continue end
        if e.Character:FindFirstChild("HumanoidRootPart") and hum then
            if currentBlobS ~= nil and blobLoopServerT then
                blobGrabF(currentBlobS, e.Character:WaitForChild("HumanoidRootPart"), "Left")
                wait()
                blobDropF(currentBlobS, e.Character:WaitForChild("HumanoidRootPart"), "Left")
                wait()
                silentBlobGrabF(currentBlobS, e.Character:WaitForChild("HumanoidRootPart"), "Left")
            end
        end
    end
    while blobLoopServerT and task.wait() do
        for i, e in game.Players:GetPlayers() do
            if e.Character:FindFirstChild("HumanoidRootPart") == nil then continue end
            if e.Character:FindFirstChild("HumanoidRootPart") and hum then
                if currentBlobS ~= nil and blobLoopServerT then
                    blobGrabF(currentBlobS, e.Character:WaitForChild("HumanoidRootPart"), "Left")
                    wait()
                    blobDropF(currentBlobS, e.Character:WaitForChild("HumanoidRootPart"), "Left")
                end
            end
        end
    end
end

function lagF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
		for i, e in game.Players:GetPlayers() do
			if e.Name == "MaybeFlashh" then
				return
			end
		end
    while wait(1) and lagT do
        for a = 0, linesV do
            for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                if player.Character.Torso ~= nil then
                    rs.GrabEvents.CreateGrabLine:FireServer(player.Character.Torso, player.Character.Torso.CFrame)
                end
            end
        end
    end
end

function pingF()
    for i, e in game.Players:GetPlayers() do
        if e.Name == "MaybeFlashh" then
            return
        end
    end
local char = plr.Character
local hrp = char:WaitForChild("HumanoidRootPart")
local hum = char:WaitForChild("Humanoid")
while task.wait() and pingT do
    rs.GrabEvents.ExtendGrabLine:FireServer(string.rep("Balls Balls Balls Balls", packetsV))
end
end

function shurikenLagServerF()
		for i, e in game.Players:GetPlayers() do
			if e.Name == "MaybeFlashh" then
				return
			end
		end
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if shurikenLagServerT then
        local ToyFolder
        for _, v in pairs(workspace.Plots:GetChildren()) do
            for _, b in pairs(v.PlotSign.ThisPlotsOwners:GetChildren()) do
                if b.Value == plr.Name then
                    ToyFolder = workspace.PlotItems[v.Name]
                end
            end
        end
        local decoys = {}
        local shurikens = {}

        for _, obj in pairs(ToyFolder:GetChildren()) do
            if obj:IsA("Model") then
                if obj.Name == "NpcRobloxianMascot" then
                    table.insert(decoys, obj)
                elseif obj.Name == "NinjaShuriken" then
                    table.insert(shurikens, obj)
                end
            end
        end

        local maxshurikensperdecoy = 8

        for decoyindex, decoy in ipairs(decoys) do
            local decoyHRP = decoy:FindFirstChild("HumanoidRootPart")
            if decoyHRP and shurikenLagServerT then
                local startindex = (decoyindex - 1) * maxshurikensperdecoy + 1
                local endindex = startindex + maxshurikensperdecoy - 1
                for shurikenindex = startindex, endindex do
                    local shuriken = shurikens[shurikenindex]
                    if not shuriken then
                        break
                    end
                    local StickyPart = shuriken:FindFirstChild("StickyPart")
                    if StickyPart then
                        StickyPart.CanTouch = true
                        for _, part in pairs(decoy:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                            end
                        end
                        local BodyPosition = Instance.new("BodyPosition")
                        BodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        BodyPosition.P = 10000
                        BodyPosition.D = 500
                        BodyPosition.Parent = StickyPart
                        for _, part in pairs(shuriken:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                            end
                        end
                        for _, child in pairs(StickyPart:GetChildren()) do
                            if child.Name == "TouchInterest" then
                                child:Destroy()
                            end
                        end
                        task.defer(function()
                            repeat
                                StickyPart.AssemblyAngularVelocity = Vector3.new(
                                    math.random(-100, 100) * 50,
                                    math.random(-100, 100) * 50,
                                    math.random(-100, 100) * 50
                                )
                                BodyPosition.Position = Vector3.new(
                                    decoyHRP.Position.X,
                                    decoyHRP.Position.Y - 4,
                                    decoyHRP.Position.Z
                                )
                                wait(0.0001)
                                BodyPosition.Position = Vector3.new(
                                    decoyHRP.Position.X,
                                    decoyHRP.Position.Y + 3,
                                    decoyHRP.Position.Z
                                )
                                wait(0.0001)
                            until not shurikenLagServerT or not shuriken.Parent or not decoy.Parent
                        end)
                    end
                    wait()
                end
            end
            wait()
        end
    end
end

--KEYBINDFUNCS--
function tpF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if not slideTPT then
        if char and hrp and mouse.Target and not slideTPT then hrp.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) end
    elseif slideTPT then
        if not slideTPD and slideTPT and mouse.Target then
            slideTPD = true
            local info = TweenInfo.new(
                0.5, 
                Enum.EasingStyle.Sine, 
                Enum.EasingDirection.In,
                0,
                false,
                0
            )
            local info2 = TweenInfo.new(
                0.5, 
                Enum.EasingStyle.Sine, 
                Enum.EasingDirection.In,
                0,
                true,
                0
            )
            local e = {["CFrame"] = CFrame.new(mouse.Hit.x, mouse.Hit.y + 3, mouse.Hit.z)}
            local e2 = {FieldOfView = 100}
            char.Head.CanCollide = false
            char.Torso.CanCollide = false
            game:GetService("TweenService"):Create(hrp, info, e):Play()
            game:GetService("TweenService"):Create(cam, info2, e2):Play()
            wait(0.55)
            char.Head.CanCollide = true
            char.Torso.CanCollide = true
            cam.FieldOfView = 70
            slideTPD = false
        end
    end
end

function floatUpF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if floatUpT and not floatDownT then
        floatY = -1.6
    elseif not floatUpT then
        floatY = -3.1
    end
end

function floatDownF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if floatDownT and not floatUpT then
        floatY = -3.6
    elseif not floatDownT then
        floatY = -3.1
    end
end

function inspectF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    mouseTargetInspectF()
    inspectInfoF()
    if not inspectD then
        inspectD = true
        if inspectT then
            if currentInspectS == 1 then
                currentInspectedAdorneeS = mouse.Target.Parent
                currentInspectedPartS = mouse.Target
                highlightC = highlight:Clone()
                highlightC.Adornee = mouse.Target.Parent
                highlightC.Parent = mouse.Target
                highlightC.FillColor = Color3.fromRGB(255, 255, 255)
                highlightC.OutlineColor = Color3.fromRGB(160, 11, 11)
            elseif currentInspectS == 2 then
                currentInspectedAdorneeS = workspace.Plots:FindFirstChild("Plot"..currentHouseInspectS)
                currentInspectedPartS = mouse.Target
                highlightC = highlight:Clone()
                highlightC.Adornee = workspace.Plots:FindFirstChild("Plot"..currentHouseInspectS)
                highlightC.Parent = mouse.Target
                highlightC.FillColor = Color3.fromRGB(255, 255, 255)
                highlightC.OutlineColor = Color3.fromRGB(0, 60, 180)
            elseif currentInspectS == 3 then
                currentInspectedAdorneeS = mouse.Target.Parent
                currentInspectedPartS = mouse.Target
                highlightC = highlight:Clone()
                highlightC.Adornee = mouse.Target.Parent
                highlightC.Parent = mouse.Target
                highlightC.FillColor = Color3.fromRGB(255, 255, 255)
                highlightC.OutlineColor = Color3.fromRGB(20, 170, 20)
            elseif currentInspectS == 4 then
                currentInspectedAdorneeS = mouse.Target.Parent
                currentInspectedPartS = mouse.Target
                highlightC = highlight:Clone()
                highlightC.Adornee = mouse.Target.Parent
                highlightC.Parent = mouse.Target
                highlightC.FillColor = Color3.fromRGB(255, 255, 255)
                highlightC.OutlineColor = Color3.fromRGB(180, 20, 180)
            end
        elseif not inspectT then
            currentInspectS = 0
            currentHouseInspectS = 0
            currentInspectedPartS = nil
            currentInspectedAdorneeS = nil
            highlightC:Destroy()
        end
        wait(0.1)
        inspectD = false
    end
end

function inspectInfoF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if not inspectInfoOnT and inspectInfoT and inspectT and currentInspectS ~= 0 and currentInspectedPartS ~= nil and currentInspectedAdorneeS ~= nil then
        inspectInfoOnT = true
        billboardC = billboard:Clone()
        billboardC.Adornee = currentInspectedAdorneeS
        billboardC.Parent = currentInspectedPartS

        scrollframeC = scrollframe:Clone()
        scrollframeC.Parent = billboardC
        scrollframeC.Size = UDim2.new(0, 160, 0, 40)
        scrollframeC.ScrollBarImageTransparency = 1 

        textlabelC1 = textlabel:Clone()
        textlabelC1.Parent = scrollframeC
        textlabelC1.Size = UDim2.new(0, 140, 0, 40)
        if currentInspectS == 1 then
            textlabelC1.Text = currentInspectedAdorneeS.Name.." ("..game.Players:FindFirstChild(currentInspectedAdorneeS.Name).DisplayName..")"
        else
            textlabelC1.Text = currentInspectedAdorneeS.Name
        end
    elseif not inspectInfoT and inspectInfoOnT or not inspectT and inspectInfoOnT then
        inspectInfoOnT = false
        inspectInfoT = false
        billboardC:Destroy()
    end
end

function inspectBringF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if inspectT and currentInspectS ~= 2 and currentInspectS ~= 4 then
        returnPosS = hrp.CFrame
        hrp.CFrame = currentInspectedAdorneeS.PrimaryPart.CFrame + Vector3.new(7, 3, 0)
        wait(0.15)
        if currentInspectS == 1 then
            rs.GrabEvents.SetNetworkOwner:FireServer(currentInspectedAdorneeS:WaitForChild("HumanoidRootPart"), currentInspectedAdorneeS:WaitForChild("HumanoidRootPart").CFrame)
            wait(0.1)
            currentInspectedAdorneeS:WaitForChild("HumanoidRootPart").CFrame = returnPosS
        else
            rs.GrabEvents.SetNetworkOwner:FireServer(currentInspectedAdorneeS.PrimaryPart, currentInspectedAdorneeS.PrimaryPart.CFrame)
            wait(0.1)
            currentInspectedAdorneeS.PrimaryPart.CFrame = returnPosS
        end
        hrp.CFrame = returnPosS
    elseif not inspectT then
        if mouse.Target.Parent:IsDescendantOf(workspace.PlotItems) or string.match(mouse.Target.Parent.Parent.Name, "SpawnedInToys") or mouse.Target.Parent.Parent:FindFirstChild("SpawningPlatform") or mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
            returnPosS = hrp.CFrame
            mouseTargetS = mouse.Target
            hrp.CFrame = mouseTargetS.Parent.PrimaryPart.CFrame + Vector3.new(10, 3, 0)
            wait(0.15)
            if mouseTargetS.Parent:FindFirstChildOfClass("Humanoid") then
                rs.GrabEvents.SetNetworkOwner:FireServer(mouseTargetS.Parent:WaitForChild("HumanoidRootPart"), mouseTargetS.Parent:WaitForChild("HumanoidRootPart").CFrame)
                wait(0.1)
                mouseTargetS.Parent:WaitForChild("HumanoidRootPart").CFrame = returnPosS
            else
                rs.GrabEvents.SetNetworkOwner:FireServer(mouseTargetS.Parent.PrimaryPart, mouseTargetS.Parent.PrimaryPart.CFrame)
                wait(0.1)
                mouseTargetS.Parent.PrimaryPart.CFrame = returnPosS
            end
            hrp.CFrame = returnPosS
            mouseTargetS = nil
        end
    end
end

function ragdollSpamF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    while ragdollSpamT and not ragdollSpamD and not permRagdollT do
        ragdollSpamD = true
            local args = {
                [1] = hrp,
                [2] = 0
            }
            rs:WaitForChild("CharacterEvents"):WaitForChild("RagdollRemote"):FireServer(unpack(args))
        task.wait(0.02)
        ragdollSpamD = false
    end
end

function setRagdollF(state)
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if char and char:FindFirstChild("HumanoidRootPart") then
        rs:WaitForChild("CharacterEvents"):WaitForChild("RagdollRemote"):FireServer(hrp, state and 1 or 0)
        if hum then hum.PlatformStand = state end
    end
end

function permRagdollLoopF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if permRagdollRunningS then return end
    permRagdollRunningS = true
    while permRagdollT do
        setRagdollF(true)
        task.wait(0.5)
    end
    permRagdollRunningS = false
    setRagdollF(false)
end

function getBlobmanF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    updateCurrentHouseF()
    if currentHouseS == 0 then
        if inv then return inv:FindFirstChild("CreatureBlobman") end
        return nil
    else
        return workspace.PlotItems:FindFirstChild("Plot"..currentHouseS):FindFirstChild("CreatureBlobman")
    end
end

function spawnKunaiF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    local spawnRemote = rs:WaitForChild("MenuToys"):WaitForChild("SpawnToyRemoteFunction")
    if spawnRemote then
        pcall(function()spawnRemote:InvokeServer("NinjaKunai", hrp.CFrame*CFrame.new(0,0,-5),Vector3.new(0, -15.716, 0))end)
        task.wait()
    end
end

function spawnBlobmanF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    local spawnRemote = rs:WaitForChild("MenuToys"):WaitForChild("SpawnToyRemoteFunction")
    if spawnRemote then
        pcall(function()spawnRemote:InvokeServer("CreatureBlobman", hrp.CFrame*CFrame.new(0,0,-5),Vector3.new(0, -15.716, 0))end)
        task.wait(1)
        blobmanInstanceS = getBlobmanF()
    end
end

function destroyBlobmanF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if blobmanInstanceS and destroyAutoGucciT then
        if currentHouseS == 0 then
            local args = {[1] = blobmanInstanceS}
            local destroyRemote = rs:FindFirstChild("MenuToys") and rs.MenuToys:FindFirstChild("DestroyToy")
            if destroyRemote then pcall(function()destroyRemote:FireServer(unpack(args))end)end
            blobmanInstanceS = nil
        else
            blobmanInstanceS.HumanoidRootPart.CFrame = workspace.Plots:FindFirstChild("Plot"..currentHouseS).TeslaCoil.ZapPart.CFrame
            blobmanInstanceS = nil
        end
    end
end

function ragdollLoopF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if ragdollLoopD then return end
    ragdollLoopD = true
    while sitJumpT do
        if char and hrp then
            local args={[1] = hrp, [2] = 0}
            rs:WaitForChild("CharacterEvents"):WaitForChild("RagdollRemote"):FireServer(unpack(args))
        end
        task.wait()
    end
    ragdollLoopD = false
end

function sitJumpF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if not char or not hum then return end
    local startTime = tick()
    while autoGucciT and tick()-startTime<6 do
        if blobmanInstanceS then
            local seat = blobmanInstanceS:FindFirstChildWhichIsA("VehicleSeat")
            if seat and seat.Occupant ~= hum then seat:Sit(hum) end
        end
        task.wait(0.1)
        if char and hum then hum:ChangeState(Enum.HumanoidStateType.Jumping)end
        task.wait(0.1)
    end
    if blobmanInstanceS then destroyBlobmanF() end
    autoGucciT = false
    sitJumpT = false
end

function stopVelocityF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    hrp.AssemblyLinearVelocity = Vector3.zero
end

function antiKack()
     game:GetService("Workspace").Marakosak7SpawnedInToys.NinjaKunai:GetChildren()[2].CFrame = game:GetService("Workspace").Marakosak7.HumanoidRootPart.CFrame
end

function zoomF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    if zoomT then
        cam.FieldOfView = zoomV
    elseif not zoomT then
        cam.FieldOfView = 70
    end
end

--TOYFUNCS--
function addToysF()
end

--CHATFUNCS--
function spychatF()
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    publicItalics = true
    privateProperties = {
        Color = Color3.fromRGB(245, 245, 40); 
        Font = Enum.Font.SourceSansBold;
        TextSize = 18;
    }
    local StarterGui = game:GetService("StarterGui")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer
    local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
    local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
    local instance = (_G.chatSpyInstance or 0) + 1
    _G.chatSpyInstance = instance
    local function onChatted(p, msg)
	if p.Name == "MaybeFlashh" then return end
        if _G.chatSpyInstance == instance then
            if spychatT and (spySelfT or p~=player) then
                msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
                local hidden = true
                local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
                    if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and not publicSpyT and Players[packet.FromSpeaker].Team==player.Team)) then
                        hidden = false
                    end
                end)
                wait(1)
                conn:Disconnect()
                if hidden and spychatT then
                    if publicSpyT then
                        saymsg:FireServer((publicItalics and '').."{SPY} [".. p.Name .. "(" .. p.DisplayName .. ")" .."]: "..msg,"All")
                    else
                        privateProperties.Text = "{SPY} [".. p.Name .. "(" .. p.DisplayName .. ")" .."]: "..msg
                        StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
                    end
                end
            end
        end
    end
    for _,p in ipairs(Players:GetPlayers()) do
        p.Chatted:Connect(function(msg) onChatted(p,msg) end)
    end
    Players.PlayerAdded:Connect(function(p)
        p.Chatted:Connect(function(msg) onChatted(p,msg) end)
    end)
    privateProperties.Text = "{SPY "..(spychatT and "EN" or "DIS").."ABLED}"
    StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
    if not player.PlayerGui:FindFirstChild("Chat") then wait(3) end
    local chatFrame = player.PlayerGui.Chat.Frame
    chatFrame.ChatChannelParentFrame.Visible = true
    chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
end

local Tab = Window:CreateTab("Player", 4483362458) -- Title, Image
local Divider = Tab:CreateDivider()

local Toggle = Tab:CreateToggle({
    Name = "NoClip",
    CurrentValue = false,
    Flag = "noClipToggleFlag",
    Callback = function(Value)
        noClipT = Value
        updateNoClipF()
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Anti Kick Grab",
    CurrentValue = false,
    Flag = "AntiKickGrab", 
    Callback = function(enabled)
        if enabled then
            local character = localPlayer.Character

            antiKickCoroutine = RunService.Heartbeat:Connect(function()
                local character = localPlayer.Character
                if character and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("HumanoidRootPart"):FindFirstChild("FirePlayerPart") then
                    local partOwner = character:FindFirstChild("HumanoidRootPart"):FindFirstChild("FirePlayerPart"):FindFirstChild("PartOwner")
                    if partOwner and partOwner.Value ~= localPlayer.Name then
                        local args = {[1] = character:WaitForChild("HumanoidRootPart"), [2] = 0}
                        game:GetService("ReplicatedStorage"):WaitForChild("CharacterEvents"):WaitForChild("RagdollRemote"):FireServer(unpack(args))
                        print("grabbity shap!")
                        wait(0.1)
                        Struggle:FireServer()
                    end
                end
            end)
        else
            if antiKickCoroutine then
                antiKickCoroutine:Disconnect()
                antiKickCoroutine = nil
            end
        end
    end,
})

local Slider = Tab:CreateSlider({
    Name = "Strength Power",
    Range = {300, 10000},
    Increment = 1,
    Suffix = "",
    CurrentValue = 300,
    Flag = "StrengthSlider", 
    Callback = function(Value)
        _G.strength = Value
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Strength",
    CurrentValue = false,
    Flag = "StrengthToggle",
    Callback = function(enabled)
        if enabled then
            strengthConnection = workspace.ChildAdded:Connect(function(model)
                if model.Name == "GrabParts" then
                    local partToImpulse = model.GrabPart.WeldConstraint.Part1
                    if partToImpulse then
                        local velocityObj = Instance.new("BodyVelocity", partToImpulse)
                        model:GetPropertyChangedSignal("Parent"):Connect(function()
                            if not model.Parent then
                                if UserInputService:GetLastInputType() == Enum.UserInputType.MouseButton2 then
                                    velocityObj.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                    velocityObj.Velocity = workspace.CurrentCamera.CFrame.LookVector * _G.strength
                                    Debris:AddItem(velocityObj, 1)
                                else
                                    velocityObj:Destroy()
                                end
                            end
                        end)
                    end
                end
            end)
        elseif strengthConnection then
            strengthConnection:Disconnect()
        end
    end,
})

local Toggle = Tab:CreateToggle({
	Name = "AntiLag",
    CurrentValue = false,
    Flag = "antiLagT", 
    Callback = function(antiLagT)
	if antiLagT == true then
        plr.PlayerScripts.CharacterAndBeamMove.Disabled = true
    elseif antiLagT == false then
        plr.PlayerScripts.CharacterAndBeamMove.Enabled = true
    end
  end,
})

local Toggle = Tab:CreateToggle({
    Name = "Anti Grab",
    CurrentValue = false,
    Flag = "AutoStruggle", 
    Callback = function(enabled)
        if enabled then
            autoStruggleCoroutine = RunService.Heartbeat:Connect(function()
                local character = localPlayer.Character
                if character and character:FindFirstChild("Head") then
                    local head = character.Head
                    local partOwner = head:FindFirstChild("PartOwner")
                    if partOwner then
                        Struggle:FireServer()
                        ReplicatedStorage.GameCorrectionEvents.StopAllVelocity:FireServer()
                        for _, part in pairs(character:GetChildren()) do
                            if part:IsA("BasePart") then
                                part.Anchored = true
                            end
                        end
                        while localPlayer.IsHeld.Value do
						wait()
                        end
                        for _, part in pairs(character:GetChildren()) do
                            if part:IsA("BasePart") then
                                part.Anchored = false
                            end
                        end
                    end
                end
            end)
        else
            if autoStruggleCoroutine then
                autoStruggleCoroutine:Disconnect()
                autoStruggleCoroutine = nil
            end
        end
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "AntiBlobMan",
    CurrentValue = false,
    Flag = "toy", 
    Callback = function(toy)
	workspace.DescendantAdded:Connect(function(toy)
        if toy.Name == "CreatureBlobman" and toy.Parent ~= inv and antiBlob1T then
            wait()
            toy.LeftDetector:Destroy()
            toy.RightDetector:Destroy()
        end
    end)
  end,
})

local Toggle = Tab:CreateToggle({
    Name = "Self Defense / Air Suspend",
    CurrentValue = false,
    Flag = "SelfDefenseAirSuspend", 
    Callback = function(enabled)
        if enabled then
            autoDefendCoroutine = coroutine.create(function()
                while wait(0.02) do
                    local character = localPlayer.Character
                    if character and character:FindFirstChild("Head") then
                        local head = character.Head
                        local partOwner = head:FindFirstChild("PartOwner")
                        if partOwner then
                            local attacker = Players:FindFirstChild(partOwner.Value)
                            if attacker and attacker.Character then
                                Struggle:FireServer()
                                SetNetworkOwner:FireServer(attacker.Character.Head or attacker.Character.Torso, attacker.Character.HumanoidRootPart.FirePlayerPart.CFrame)
                                task.wait(0.1)
                                local target = attacker.Character:FindFirstChild("Torso")
                                if target then
                                    local velocity = target:FindFirstChild("l") or Instance.new("BodyVelocity")
                                    velocity.Name = "l"
                                    velocity.Parent = target
                                    velocity.Velocity = Vector3.new(0, 50, 0)
                                    velocity.MaxForce = Vector3.new(0, math.huge, 0)
                                    Debris:AddItem(velocity, 100)
                                end
                            end
                        end
                    end
                end
            end)
            coroutine.resume(autoDefendCoroutine)
        else
            if autoDefendCoroutine then
                coroutine.close(autoDefendCoroutine)
                autoDefendCoroutine = nil
            end
        end
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Self Defense / Kick Silent",
    CurrentValue = false,
    Flag = "", 
    Callback = function(enabled)

    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Anti Explosion",
    CurrentValue = false,
    Flag = "AntiExplosion", 
    Callback = function(model)
    local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
    workspace.ChildAdded:Connect(function(model)
        if model.Name == "Part" and char ~= nil and antiExplodeT then
            local mag = (model.Position - hrp.Position).Magnitude
            if mag <= 20 then
                hrp.Anchored = true
				wait(0.01)
                while char["Right Arm"].RagdollLimbPart.CanCollide == true do wait(0.001) end
                hrp.Anchored = false
            end
        end
    end)
  end,
}) 

local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = true,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(s)
   game:GetService("Workspace").Marakosak5.Humanoid.WalkSpeed = s
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Toggle = Tab:CreateToggle({
    Name = "AntiKick",
    CurrentValue = false,
    Flag = "AntiKick",
    Callback = function(Value)
      AntiKick = Value
	  if AntiKick then
		  spawnKunaiF()
		  antiKack()
	  end
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Float",
    CurrentValue = false,
    Flag = "floatToggleFlag",
    Callback = function(Value)
        floatT = Value
        updateFloatF()
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "AutoGucci",
    CurrentValue = false,
    Flag = "autoGucciT",
    Callback = function(Value)
        autoGucciT = Value
        if autoGucciT then
            spawnBlobmanF()
            task.wait(1.1)
            if not sitJumpT then
                coroutine.wrap(sitJumpF)()
                sitJumpT = true
            end
            coroutine.wrap(ragdollLoopF)()
        else
            sitJumpT = false
        end
    end,
})


local Tab = Window:CreateTab("Blobman", 4483362458) -- Title, Image
local Divider = Tab:CreateDivider()
local Slider = Tab:CreateSlider({
   Name = "Slider Example",
   Range = {20, 500},
   Increment = 1,
   Suffix = "Bananas",
   CurrentValue = 20,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(s)
   game:GetService("Workspace").Marakosak5SpawnedInToys.CreatureBlobman.HumanoidCreature.WalkSpeed = s
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})

local Label = Tab:CreateLabel("Must Be On A Blobman!", 0, Color3.fromRGB(255, 255, 255), false)

local PlayerDropdown = Tab:CreateDropdown({
	Name = "PlayerLoop",
	Options = getPlayerList(),
	CurrentOption = {},
	MultipleOptions = true,
	Flag = "playerLoopDropdownFlag", 
	Callback = function(Options)
		playersInLoop1V = Options
	end,
})

Players.PlayerAdded:Connect(function(player)
    wait(1) -- Небольшая задержка для стабильности
    local updatedList = UpdatePlayerList()
    Dropdown:SetOptions(updatedList)
end)

Players.PlayerRemoving:Connect(function(player)
    wait(0.5)
    local updatedList = UpdatePlayerList()
    Dropdown:SetOptions(updatedList)
end)

local Section = Tab:CreateSection("Player Loop & Dropdown")

local Toggle = Tab:CreateToggle({
    Name = "Single Blobman Loop",
    CurrentValue = false,
    Flag = "blobLoopToggleFlag",
    Callback = function(Value)
        blobLoopT = Value
	    if blobLoopT then
            for i, e in ipairs(playersInLoop1V) do
                table.insert(playersInLoop2V, e:match("^(.-) %("))
            end
            loopPlayerBlobF()
        elseif not blobLoopT then
            table.clear(playersInLoop2V)
            loopPlayerBlobF()
        end
    end,
})

local Tab = Window:CreateTab("LagPanel", 4483362458) -- Title, Image
local Divider = Tab:CreateDivider()

local Toggle = Tab:CreateToggle({
	Name = "Lag",
    CurrentValue = false,
    Flag = "lagT",
    Callback = function(lagT)
	local char = plr.Character
    local hrp = char:WaitForChild("HumanoidRootPart")
    local hum = char:WaitForChild("Humanoid")
		for i, e in game.Players:GetPlayers() do
			if e.Name == "MaybeFlashh" then
				return
			end
		end
    while wait() and lagT do
        for a = 0, linesV do
            for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                if player.Character.Torso ~= nil then
                    rs.GrabEvents.CreateGrabLine:FireServer(player.Character.Torso, player.Character.Torso.CFrame)
                end
            end
        end
    end
  end,
})

local Section = Tab:CreateSection("Lag")

local Toggle = Tab:CreateToggle({
    Name = "Lag Server",
    CurrentValue = false,
    Flag = "lagToggleFlag",
    Callback = function(Value)
        lagT = Value
        lagF()
    end
})

local linesInput = Tab:CreateInput({
    Name = "Grab Lines",
    CurrentValue = 400,
    PlaceholderText = "Lines",
    RemoveTextAfterFocusLost = false,
    Flag = "linesInputFlag",
    Callback = function(Value)
        linesV = Value
    end
})

local Toggle = Tab:CreateToggle({
    Name = "Ping Increaser",
    CurrentValue = false,
    Flag = "pingToggleFlag",
    Callback = function(Value)
        pingT = Value
        pingF()
    end
})

local packetsInput = Tab:CreateInput({
    Name = "Packets",
    CurrentValue = 3000,
    PlaceholderText = "Packets",
    RemoveTextAfterFocusLost = false,
    Flag = "packetsInputFlag",
    Callback = function(Value)
        packetsV = Value
    end
})

local Tab = Window:CreateTab("Gucci", 4483362458) -- Title, Image
local Divider = Tab:CreateDivider()

local Toggle = Tab:CreateToggle({
    Name = "AutoGucci",
    CurrentValue = false,
    Flag = "autoGucciT",
    Callback = function(Value)
        autoGucciT = Value
        if autoGucciT then
            spawnBlobmanF()
            task.wait(1.1)
            if not sitJumpT then
                coroutine.wrap(sitJumpF)()
                sitJumpT = true
            end
            coroutine.wrap(ragdollLoopF)()
        else
            sitJumpT = false
        end
    end
})

local Toggle = Tab:CreateToggle({
    Name = "DestroyAutoGucci",
    CurrentValue = false,
    Flag = "destroyAutoGucciToggleFlag",
    Callback = function(Value)
        destroyAutoGucciT = Value
    end,
})

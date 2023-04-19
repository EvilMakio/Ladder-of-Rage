local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("Ladder of Rage", "RJTheme3")

local Tab = Window:NewTab("DISCORD")
local Section = Tab:NewSection("DISCORD")
Section:NewLabel("https://discord.gg/JVwJ9f8ZpE")


local Tab = Window:NewTab("TELEPORT")
local Section = Tab:NewSection("TELEPORT")
Section:NewButton("WinTP", "Teleport Win Zone", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Spawns.Winners.CFrame
end)
Section:NewButton("SpawnTP", "Teleport SpawnZone", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Spawns.SpawnLocation.CFrame
end)


local Tab = Window:NewTab("PLAYER")
local Section = Tab:NewSection("PLAYER")
Section:NewSlider("Speed", "Speed", 100, 0, function(speed)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)
Section:NewToggle("Sit", "Sit", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
    else
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
end)
Section:NewToggle("NoClip and Bog", "Don't fly", function(state)
    if state then
        game.Players.LocalPlayer.Character.Head.CanCollide = false
        game.Players.LocalPlayer.Character.Torso.CanCollide = false
    else
        game.Players.LocalPlayer.Character.Head.CanCollide = true
        game.Players.LocalPlayer.Character.Torso.CanCollide = true
    end
end)
Section:NewToggle("Invesee", "invesee", function(state)
    if state then
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        game.Players.LocalPlayer.Character.Torso.Transparency = 1
        game.Players.LocalPlayer.Character.LeftArm.Transparency = 1
        game.Players.LocalPlayer.Character.RightArm.Transparency = 1
        game.Players.LocalPlayer.Character.LeftLeg.Transparency = 1
        game.Players.LocalPlayer.Character.RightLeg.Transparency = 1
    else
        game.Players.LocalPlayer.Character.Head.Transparency = 0
        game.Players.LocalPlayer.Character.Torso.Transparency = 0
        game.Players.LocalPlayer.Character.LeftArm.Transparency = 0
        game.Players.LocalPlayer.Character.RightArm.Transparency = 0
        game.Players.LocalPlayer.Character.LeftLeg.Transparency = 0
        game.Players.LocalPlayer.Character.RightLeg.Transparency = 0
    end
end)

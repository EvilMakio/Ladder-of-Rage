local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "EVIL",
   LoadingTitle = "Evil Key System",
   LoadingSubtitle = "by MakioDev",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "EVIL"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "Key: shre.su/V1TT",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"evil299key"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "Teleport WinZone",
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Spawns.Winners.CFrame
   end,
})
local Button = Tab:CreateButton({
   Name = "Teleport SpawnZone",
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Spawns.SpawnLocation.CFrame
   end,
})

local Button = Tab:CreateButton({
   Name = "Sit",
   Callback = function()
   game.Players.LocalPlayer.Character.Humanoid.Sit = true
   end,
})

local Button = Tab:CreateButton({
   Name = "Off Sit",
   Callback = function()
   game.Players.LocalPlayer.Character.Humanoid.Sit = false
   end,
})

Rayfield:Notify({
   Title = "Evil",
   Content = "Like and comment scripts. rscripts.net/u/evilmakio",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Tab = Window:CreateTab("Player", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Invisee",
   Callback = function()
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        game.Players.LocalPlayer.Character.Torso.Transparency = 1
        game.Players.LocalPlayer.Character.LeftArm.Transparency = 1
        game.Players.LocalPlayer.Character.RightArm.Transparency = 1
        game.Players.LocalPlayer.Character.LeftLeg.Transparency = 1
        game.Players.LocalPlayer.Character.RightLeg.Transparency = 1
   end,
})
local Button = Tab:CreateButton({
   Name = "NoInvisee",
   Callback = function()
        game.Players.LocalPlayer.Character.Head.Transparency = 0
        game.Players.LocalPlayer.Character.Torso.Transparency = 0
        game.Players.LocalPlayer.Character.LeftArm.Transparency = 0
        game.Players.LocalPlayer.Character.RightArm.Transparency = 0
        game.Players.LocalPlayer.Character.LeftLeg.Transparency = 0
        game.Players.LocalPlayer.Character.RightLeg.Transparency = 0
   end,
})

local Button = Tab:CreateButton({
   Name = "On NoClip",
   Callback = function()
        game.Players.LocalPlayer.Character.Head.CanCollide = false
        game.Players.LocalPlayer.Character.Torso.CanCollide = false
   end,
})

local Button = Tab:CreateButton({
   Name = "Off NoClip",
   Callback = function()
        game.Players.LocalPlayer.Character.Head.CanCollide = true
        game.Players.LocalPlayer.Character.Torso.CanCollide = true
   end,
})

Rayfield:LoadConfiguration()

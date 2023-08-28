local Atlas = loadstring(game:HttpGet("https://siegehub.net/Atlas.lua"))()

-- by EvilMakio
-- https://rscripts.net/u/evilmakio

local UI = Atlas.new({
    Name = "EVIL"; -- script name (required)
    ConfigFolder = "EVIL"; -- folder name to save configs to, set this to nil if you want to disable configs saving
    Credit = "Made By EvilMakio"; -- text to appear if player presses the "i" button on their UI (optional)
    Color = Color3.fromRGB(255,0,0); -- theme color for UI (required)
    Bind = "LeftControl"; -- keybind for toggling the UI, must be a valid KeyCode name
    -- Atlas Loader:
    UseLoader = true; -- whether to use Atlas Loader or not, if set to false than CheckKey and Discord are ignored
    FullName = "EVIL HUB"; -- works if UseLoader is set to true, can be same as Name argument, shown on loader frame
    CheckKey = function(inputtedKey) -- works if UseLoader is set to true, where inputtedKey is the key inputted by the player
        return inputtedKey=="evil299key"
    end;
    Discord = "https://link-hub.net/937544/roblox-scipts-mm-2"; -- works if UseLoader is set to true, will be copied to clipboard if player presses "Copy Invite" button
})

-- by EvilMakio
-- https://rscripts.net/u/evilmakio

local MyPage = UI:CreatePage("Teleport")
local MySection = MyPage:CreateSection("Teleport")

MySection:CreateToggle({ -- IMPORTANT: This function does not return anything, please modify flags directly in order to read or update toggle values. SCROLL TO BOTTOM OF PAGE TO SEE HOW TO MODIFY FLAGS
    Name = "WinTp"; -- required: name of element
    Flag = "MyToggle1"; -- required: unique flag name to use
    Default = true; -- optional: default value for toggle, will be used if config saving is disabled and there is no saved data, will be false if left nil
    Callback = function(newValue) -- optional: function that will be called when toggled, it is reccomended to modify flags directly
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Spawns.Winners.CFrame
    end;
    -- Scroll to the bottom of the page to read more about the following two:
    Warning = "This has a warning"; -- optional: this argument is used in all elements (except for Body) and will indicate text that will appear when the player hovers over the warning icon
    WarningIcon = 12345; -- optional: ImageAssetId for warning icon, will only be used if Warning is not nil, default is yellow warning icon.
})

MySection:CreateToggle({ -- IMPORTANT: This function does not return anything, please modify flags directly in order to read or update toggle values. SCROLL TO BOTTOM OF PAGE TO SEE HOW TO MODIFY FLAGS
    Name = "Spawn Tp"; -- required: name of element
    Flag = "MyToggle2"; -- required: unique flag name to use
    Default = true; -- optional: default value for toggle, will be used if config saving is disabled and there is no saved data, will be false if left nil
    Callback = function(newValue) -- optional: function that will be called when toggled, it is reccomended to modify flags directly
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Spawns.SpawnLocation.CFrame
    end;
    -- Scroll to the bottom of the page to read more about the following two:
    Warning = "This has a warning"; -- optional: this argument is used in all elements (except for Body) and will indicate text that will appear when the player hovers over the warning icon
    WarningIcon = 12345; -- optional: ImageAssetId for warning icon, will only be used if Warning is not nil, default is yellow warning icon.
})


MySection:CreateToggle({ -- IMPORTANT: This function does not return anything, please modify flags directly in order to read or update toggle values. SCROLL TO BOTTOM OF PAGE TO SEE HOW TO MODIFY FLAGS
    Name = "Invisee"; -- required: name of element
    Flag = "MyToggle"; -- required: unique flag name to use
    Default = true; -- optional: default value for toggle, will be used if config saving is disabled and there is no saved data, will be false if left nil
    Callback = function(newValue) -- optional: function that will be called when toggled, it is reccomended to modify flags directly
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        game.Players.LocalPlayer.Character.Torso.Transparency = 1
        game.Players.LocalPlayer.Character.LeftArm.Transparency = 1
        game.Players.LocalPlayer.Character.RightArm.Transparency = 1
        game.Players.LocalPlayer.Character.LeftLeg.Transparency = 1
        game.Players.LocalPlayer.Character.RightLeg.Transparency = 1
    end;
    -- Scroll to the bottom of the page to read more about the following two:
    Warning = "This has a warning"; -- optional: this argument is used in all elements (except for Body) and will indicate text that will appear when the player hovers over the warning icon
    WarningIcon = 12345; -- optional: ImageAssetId for warning icon, will only be used if Warning is not nil, default is yellow warning icon.
})


MySection:CreateToggle({ -- IMPORTANT: This function does not return anything, please modify flags directly in order to read or update toggle values. SCROLL TO BOTTOM OF PAGE TO SEE HOW TO MODIFY FLAGS
    Name = "NoClip"; -- required: name of element
    Flag = "MyToggle4"; -- required: unique flag name to use
    Default = true; -- optional: default value for toggle, will be used if config saving is disabled and there is no saved data, will be false if left nil
    Callback = function(newValue) -- optional: function that will be called when toggled, it is reccomended to modify flags directly
        game.Players.LocalPlayer.Character.Head.CanCollide = false
        game.Players.LocalPlayer.Character.Torso.CanCollide = false
    end;
    -- Scroll to the bottom of the page to read more about the following two:
    Warning = "This has a warning"; -- optional: this argument is used in all elements (except for Body) and will indicate text that will appear when the player hovers over the warning icon
    WarningIcon = 12345; -- optional: ImageAssetId for warning icon, will only be used if Warning is not nil, default is yellow warning icon.
})

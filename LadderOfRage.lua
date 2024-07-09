local Atlas = loadstring(game:HttpGet("https://siegehub.net/Atlas.lua"))()

-- by EvilMakio
-- https://rscripts.net/u/evilmakio

local UI = Atlas.new({
    Name = "EVIL"; 
    ConfigFolder = "EVIL"; 
    Credit = "Made By EvilMakio"; 
    Color = Color3.fromRGB(255,0,0); 
    Bind = "LeftControl"; 
    
    UseLoader = true; 
    FullName = "EVIL HUB"; 
    CheckKey = function(inputtedKey) 
        return inputtedKey=="evil299key"
    end;
    Discord = "https://link-hub.net/937544/roblox-scipts-mm-2"; 
})

-- by EvilMakio
-- https://rscripts.net/u/evilmakio

local MyPage = UI:CreatePage("Teleport")
local MySection = MyPage:CreateSection("Teleport")

MySection:CreateToggle({
    Name = "WinTp"; 
    Flag = "MyToggle1"; 
    Default = true;
    Callback = function(newValue)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Spawns.Winners.CFrame
    end;
    
    Warning = "This has a warning"; 
    WarningIcon = 12345; 
})

MySection:CreateToggle({ 
    Name = "Spawn Tp"; 
    Flag = "MyToggle2";
    Default = true;
    Callback = function(newValue)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Spawns.SpawnLocation.CFrame
    end;
    
    Warning = "This has a warning"; 
    WarningIcon = 12345; 
})


MySection:CreateToggle({ 
    Name = "Invisee"; 
    Flag = "MyToggle"; 
    Default = true; 
    Callback = function(newValue) 
        game.Players.LocalPlayer.Character.Head.Transparency = 1
        game.Players.LocalPlayer.Character.Torso.Transparency = 1
        game.Players.LocalPlayer.Character.LeftArm.Transparency = 1
        game.Players.LocalPlayer.Character.RightArm.Transparency = 1
        game.Players.LocalPlayer.Character.LeftLeg.Transparency = 1
        game.Players.LocalPlayer.Character.RightLeg.Transparency = 1
    end;
    
    Warning = "This has a warning"; 
    WarningIcon = 12345; 
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

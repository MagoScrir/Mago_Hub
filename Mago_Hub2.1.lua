local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Mago hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Player = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Main:AddButton({
	Name = "auto parry",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry",true))()
  	end    
})

Main:AddLabel("Caixas") 

Main:AddButton({
	Name = "Abrir caixa de espadas",
	Callback = function()   		  
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Store"):WaitForChild("RequestOpenSwordBox"):InvokeServer()
    end
})

Main:AddButton({
	Name = "Abrir caixa de explosão",
	Callback = function()   		  
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Store"):WaitForChild("RequestOpenExplosionBox"):InvokeServer()
    end
})

local plr = game.Players.LocalPlayer
local char = plr.Character

function teleportbasetr()
	char.HumanoidRootPart.CFrame = CFrame.new(-282.665253, 26.4608173, -69.0651474, 0, -1, 0, 1, 0, -0, 0, 0, 1)
end

Player:AddButton({
	Name = "teleport to spaw",
	Callback = function()   		  
teleportbasetr()
	end
})

Player:AddTextbox({
	Name = "Speed",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	  
})
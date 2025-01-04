local Tele = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
Tele.RequiresHandle = false
Tele.RobloxLocked = true
Tele.Name = "Жезл раздора"
Tele.ToolTip = "Teleport Tool"
Tele.Equipped:connect(function(Mouse)
	Mouse.Button1Down:connect(function()
		if Mouse.Target then
			game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart.CFrame = (CFrame.new(Mouse.Hit.x, Mouse.Hit.y + 5, Mouse.Hit.z))
		end
	end)
end)
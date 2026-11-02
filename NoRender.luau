local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

local TOGGLE_KEY = Enum.KeyCode.T


local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ToggleOverlayGui"
screenGui.IgnoreGuiInset = true 
screenGui.ResetOnSpawn = false
screenGui.DisplayOrder = 999999 
screenGui.Enabled = true 

local whiteFrame = Instance.new("Frame")
whiteFrame.Name = "WhiteoutFrame"
whiteFrame.Size = UDim2.new(1, 0, 1, 0)
whiteFrame.Position = UDim2.new(0, 0, 0, 0)
whiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
whiteFrame.BorderSizePixel = 0
whiteFrame.Active = true

whiteFrame.Parent = screenGui
screenGui.Parent = playerGui


local function onInputBegan(input, gameProcessedEvent)
	if gameProcessedEvent then return end
	if input.KeyCode == TOGGLE_KEY then
		screenGui.Enabled = not screenGui.Enabled
	end
end

UserInputService.InputBegan:Connect(onInputBegan)

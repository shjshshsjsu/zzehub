local dragging
local dragInput
local dragStart
local startPos


    DistanceReachMobile = 0

AutoParry.Position = UDim2.new(0, 0, 0, 0)
AutoClick.Position = UDim2.new(0, 110, 0, 0)

local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local AutoParry = Instance.new("TextButton")
local AutoClick = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false
main.IgnoreGuiInset = true -- Ekran kenarlarını dikkate alma
main.DisplayOrder = 999 -- Ekran düzenleme sırası


Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0.5, 0, 0.5, 0)

AutoParry.Name = "AutoParry"
AutoParry.Parent = Frame
AutoParry.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
AutoParry.Size = UDim2.new(0, 55, 0, 55)
AutoParry.Font = Enum.Font.SourceSans
AutoParry.Text = "Enable Reach"
AutoParry.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoParry.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoParry.TextScaled = true
AutoParry.TextWrapped = true

AutoClick.Name = "AutoClick"
AutoClick.Parent = Frame
AutoClick.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
AutoClick.Size = UDim2.new(0, 55, 0, 55)
AutoClick.Font = Enum.Font.SourceSans
AutoClick.Text = "3 Stud"
AutoClick.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoClick.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoClick.TextScaled = true
AutoClick.TextWrapped = true 

AutoParry.MouseButton1Click:Connect(function()
RunSteppedMobile = game:GetService("RunService").RenderStepped:Connect(function()
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= DistanceReachMobile then



    end)

AutoClick.MouseButton1Click:Connect(function()
    DistanceReachMobile = 3
    end)

local function updateInput(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        updateInput(input)
    end
end)

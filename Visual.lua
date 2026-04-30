-- // 2026 VISUAL UPDATE
local p = game.Players.LocalPlayer
local gui = p:WaitForChild("PlayerGui")

-- Update Robux
for _, v in pairs(gui:GetDescendants()) do
    if v:IsA("TextLabel") and (v.Name == "RobuxLabel" or v.Text:find("R%$")) then
        v.Text = "R$ 1,500,000" --
    end
end

-- Update Shop Buttons
for _, v in pairs(gui:GetDescendants()) do
    if v:IsA("TextLabel") and (v.Text == "Purchase" or v.Text == "Buy") then
        v.Text = "EQUIP" --
        v.Parent.BackgroundColor3 = Color3.fromRGB(0, 255, 127) -- Green
    end
end
print("Visuals Loaded!") --


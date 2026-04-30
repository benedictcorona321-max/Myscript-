-- // 2026 UNIVERSAL VISUAL SCRIPT
local p = game.Players.LocalPlayer
local gui = p:WaitForChild("PlayerGui")

print("Scanning UI for Blox Fruits Update...")

-- Function to find and swap ANY Robux text
for _, v in pairs(gui:GetDescendants()) do
    if v:IsA("TextLabel") then
        if v.Text:find("R%$") or v.Name:lower():find("robux") then
            v.Text = "R$ 999,999,999"
        end
    end
end

-- Function to find and swap ANY Purchase button
for _, v in pairs(gui:GetDescendants()) do
    if v:IsA("TextLabel") and (v.Text == "Purchase" or v.Text == "Buy" or v.Text == "Gift") then
        v.Text = "EQUIP"
        -- Tries to find the button background and turn it green
        local btn = v:FindFirstAncestorWhichIsA("GuiButton") or v.Parent
        if btn:IsA("GuiObject") then
            btn.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
        end
    end
end

print("Visuals Force-Loaded!")

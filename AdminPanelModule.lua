-- AdminPanelModule.lua

local AdminPanelModule = {}

-- Function to create an admin panel
function AdminPanelModule.createAdminPanel(parent)
    local adminPanel = Instance.new("Frame")
    adminPanel.Name = "AdminPanel"
    adminPanel.Size = UDim2.new(0, 300, 0, 200)
    adminPanel.Position = UDim2.new(0.5, -150, 0.5, -100)
    adminPanel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    adminPanel.Parent = parent
    
    -- Add a title label
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "TitleLabel"
    titleLabel.Size = UDim2.new(1, 0, 0, 30)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.Text = "Admin Panel"
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Parent = adminPanel
    
    -- Add a button to execute code
    local executeButton = Instance.new("TextButton")
    executeButton.Name = "ExecuteButton"
    executeButton.Size = UDim2.new(0.5, -5, 0, 30)
    executeButton.Position = UDim2.new(0, 5, 0, 40)
    executeButton.Text = "Execute Code"
    executeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    executeButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    executeButton.Parent = adminPanel
    
    -- Add a text box for code input
    local codeTextBox = Instance.new("TextBox")
    codeTextBox.Name = "CodeTextBox"
    codeTextBox.Size = UDim2.new(1, -10, 0, 100)
    codeTextBox.Position = UDim2.new(0, 5, 0, 80)
    codeTextBox.Text = ""
    codeTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    codeTextBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    codeTextBox.Parent = adminPanel
    
    -- Function to handle button click
    executeButton.MouseButton1Click:Connect(function()
        local code = codeTextBox.Text
        if code and code ~= "" then
            local success, errorMessage = pcall(function()
                loadstring(code)()
            end)
            
            if not success then
                warn("Error executing code: " .. errorMessage)
            end
        end
    end)

    return adminPanel
end

return AdminPanelModule
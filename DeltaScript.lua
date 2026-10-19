-- DeltaScript.lua

local CodeWriterModule = require(script.CodeWriterModule)
local AdminPanelModule = require(script.AdminPanelModule)

local DeltaScript = {}

-- Function to initialize the Delta script
function DeltaScript.init()
    -- Create a screen GUI
    local player = game.Players.LocalPlayer
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "DeltaScriptGUI"
    screenGui.Parent = player:WaitForChild("PlayerGui")
    
    -- Create the admin panel
    local adminPanel = AdminPanelModule.createAdminPanel(screenGui)
    
    -- Example usage of CodeWriterModule
    CodeWriterModule.writeCode("example.txt", "This is an example code.")
    local code = CodeWriterModule.readCode("example.txt")
    print("Read code: " .. code)
end

return DeltaScript
-- DeltaScript.lua

local CodeWriterModule = require(script.Parent.CodeWriterModule)
local AdminPanelModule = require(script.Parent.AdminPanelModule)

local DeltaScript = {}

function DeltaScript:Start()
    -- Start the Delta script
    print("Delta script started")
end

function DeltaScript:WriteCode(player, code)
    CodeWriterModule:WriteCode(player, code)
end

function DeltaScript:OpenAdminPanel(player)
    AdminPanelModule:OpenAdminPanel(player)
end

return DeltaScript
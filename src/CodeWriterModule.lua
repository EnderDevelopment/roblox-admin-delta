-- CodeWriterModule.lua

local CodeWriterModule = {}

function CodeWriterModule:WriteCode(player, code)
    -- Write code logic
    print(player.Name .. " wrote code: " .. code)
end

return CodeWriterModule
-- CodeWriterModule.lua

local CodeWriterModule = {}

-- Function to write code to a file
function CodeWriterModule.writeCode(fileName, code)
    local success, errorMessage = pcall(function()
        local file = io.open(fileName, "w")
        if file then
            file:write(code)
            file:close()
        else
            error("Failed to open file: " .. fileName)
        end
    end)
    
    if not success then
        warn("Error writing code: " .. errorMessage)
    end
end

-- Function to read code from a file
function CodeWriterModule.readCode(fileName)
    local success, code = pcall(function()
        local file = io.open(fileName, "r")
        if file then
            local content = file:read("*a")
            file:close()
            return content
        else
            error("Failed to open file: " .. fileName)
        end
    end)
    
    if not success then
        warn("Error reading code: " .. code)
        return ""
    end
    
    return code
end

return CodeWriterModule
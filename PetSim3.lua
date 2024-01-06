local function printTable(t, indent, maxDepth, currentDepth)
    indent = indent or 0
    maxDepth = maxDepth or math.huge -- максимальная глубина по умолчанию (бесконечность)
    currentDepth = currentDepth or 0

    local spaces = string.rep(" ", indent)

    for k, v in pairs(t) do
        local keyStr = tostring(k)
        local valueStr = tostring(v)

        if type(v) == "table" and currentDepth < maxDepth then
            print(spaces .. keyStr .. ":")
            printTable(v, indent + 4, maxDepth, currentDepth + 1)
        else
            print(spaces .. keyStr .. ": " .. valueStr)
        end
    end
end

local u2 = require(game:GetService("ReplicatedStorage").__INSTANCE_STORAGE.StairwayToHeaven.ClientModule).Networking

printTable(u2, 0, 6)

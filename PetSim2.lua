local PathScript = ""
print("")
print("")

local function printTable(t, indent, maxDepth, currentDepth)
    indent = indent or 0
    maxDepth = maxDepth or math.huge
    currentDepth = currentDepth or 0

    local spaces = string.rep(" ", indent)
    if type(t) == "table" then
        for k, v in pairs(t) do
            if type(v) == "table" and currentDepth < maxDepth then
                printTable(v, indent + 4, maxDepth, currentDepth + 1)
            elseif type(v) == "function" and currentDepth < maxDepth then
                printTable(v, indent + 4, maxDepth, currentDepth + 1)
            end
        end
    elseif type(t) == "function" then
        success, result = pcall(t)
        if success then
            if type(result) == "table" then
                for k, v in pairs(result) do
                    if type(v) == "table" and currentDepth < maxDepth then
                        printTable(v, indent + 4, maxDepth, currentDepth + 1)
                    elseif type(v) == "function" and currentDepth < maxDepth then
                        printTable(v, indent + 4, maxDepth, currentDepth + 1)
                    end
                end
            end
        end
    end
end

for k, v in ipairs(game:GetService("ReplicatedStorage").Network:GetDescendants()) do
    if v.ClassName == "ModuleScript" then
        success, scriptormodule = pcall(require, v)
        if success and scriptormodule ~= nil then
            print(v.Name)
            PathScript = v:GetFullName()
            printTable(scriptormodule, 0, 4, 0)
            wait(2)
        end
    end
end

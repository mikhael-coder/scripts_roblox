local ClassNames = {"ModuleScript"}
local PathScript = ""
print("")
print("")

local function printTable(t, indent, maxDepth, currentDepth)
    indent = indent or 0
    maxDepth = maxDepth or math.huge -- максимальная глубина по умолчанию (бесконечность)
    currentDepth = currentDepth or 0

    local spaces = string.rep(" ", indent)
    if type(t) == "table" then
        for k, v in pairs(t) do
            local keyStr = tostring(k)
            local valueStr = tostring(v)

            if type(v) == "table" and currentDepth < maxDepth then
                if keyStr:find("Triple") then
                    print("Найден ключ Triple в скрипте " .. PathScript)
                    print(keyStr)
                end
                if keyStr:find("108819920") then
                    print("Найден ключ 108819920 в скрипте " .. PathScript)
                    print(keyStr)
                end
                printTable(v, indent + 4, maxDepth, currentDepth + 1)
            elseif type(v) == "function" and currentDepth < maxDepth then
                if keyStr:find("Triple") then
                    print("Найден ключ Triple в скрипте " .. PathScript)
                    print(keyStr)
                end
                if keyStr:find("108819920") then
                    print("Найден ключ 108819920 в скрипте " .. PathScript)
                    print(keyStr)
                end
                printTable(v, indent + 4, maxDepth, currentDepth + 1)
            else
                if keyStr:find("Triple") then
                    print("Найден ключ Triple в скрипте " .. PathScript)
                    print(keyStr .. ": " .. valueStr)
                end
                if valueStr:find("Triple") then
                    print("Найдено значение Triple в скрипте " .. PathScript)
                    print(keyStr .. ": " .. valueStr)
                end
                if keyStr:find("108819920") then
                    print("Найден ключ 108819920 в скрипте " .. PathScript)
                    print(keyStr .. ": " .. valueStr)
                end
                if valueStr:find("108819920") then
                    print("Найдено значение 108819920 в скрипте " .. PathScript)
                    print(keyStr .. ": " .. valueStr)
                end
            end
        end
    elseif type(t) == "function" then
        success, result = pcall(t)
        if not success then
            print("Ошибка при вызове yourFunction: " .. result) -- result содержит сообщение об ошибке.
        end
        if success then
            if type(result) == "table" then
                for k, v in pairs(result) do
                    local keyStr = tostring(k)
                    local valueStr = tostring(v)

                    if type(v) == "table" and currentDepth < maxDepth then
                        if keyStr:find("Triple") then
                            print("Найден ключ Triple в скрипте " .. PathScript)
                            print(keyStr)
                        end
                        if keyStr:find("108819920") then
                            print("Найден ключ 108819920 в скрипте " .. PathScript)
                            print(keyStr)
                        end
                        printTable(v, indent + 4, maxDepth, currentDepth + 1)
                    elseif type(v) == "function" and currentDepth < maxDepth then
                        if keyStr:find("Triple") then
                            print("Найден ключ Triple в скрипте " .. PathScript)
                            print(keyStr)
                        end
                        if keyStr:find("108819920") then
                            print("Найден ключ 108819920 в скрипте " .. PathScript)
                            print(keyStr)
                        end
                        printTable(v, indent + 4, maxDepth, currentDepth + 1)
                    else
                        if keyStr:find("Triple") then
                            print("Найден ключ Triple в скрипте " .. PathScript)
                            print(keyStr .. ": " .. valueStr)
                        end
                        if valueStr:find("Triple") then
                            print("Найдено значение Triple в скрипте " .. PathScript)
                            print(keyStr .. ": " .. valueStr)
                        end
                        if keyStr:find("108819920") then
                            print("Найден ключ 108819920 в скрипте " .. PathScript)
                            print(keyStr .. ": " .. valueStr)
                        end
                        if valueStr:find("108819920") then
                            print("Найдено значение 108819920 в скрипте " .. PathScript)
                            print(keyStr .. ": " .. valueStr)
                        end
                    end
                end
            elseif type(result) == "string" or type(result) == "number" then
                result = tostring(result)
                if result:find("Triple") then
                    print("Найден результат функции Triple в скрипте " .. PathScript)
                    print(keyStr)
                end
                if result:find("108819920") then
                    print("Найден результат функции 108819920 в скрипте " .. PathScript)
                    print(keyStr)
                end
            end
        end
    end
end

for k, v in ipairs(game:GetService("ReplicatedStorage").Network:GetDescendants()) do
    if table.find(ClassNames, v.ClassName) then
        success, scriptormodule = pcall(require, v)
        if not success then
            print("Ошибка при вызове yourFunction: " .. result) -- result содержит сообщение об ошибке.
        end
        if success and scriptormodule ~= nil then
            print(v:GetFullName())
            PathScript = v:GetFullName()
            printTable(scriptormodule, 0, 4, 0)
            wait(2)
        end
    end
end

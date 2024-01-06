u2 = require(game:GetService("ReplicatedStorage").__INSTANCE_STORAGE.StairwayToHeaven.ClientModule)
local kv = ""
local infofunction = ""
local info = ""
local value = ""
local tablevalues = ""
local functionvalues = ""
local threadvalues = ""
local booleanvalues = ""
local numbervalues = ""
local stringvalues = ""
local userdatavalues = ""
print("")

for k, v in pairs(u2) do
    infofunction = ""
    truefalse = ""
    value = ""
    if type(v) == "table" then
        kv = "Таблица"
        tablevalues = tablevalues .. k .. ": " .. kv .. "\n"
    elseif type(v) == "function" then
        kv = "Функция"
        info = debug.getinfo(v)
        infofunction = ", количество замыканий " .. tostring(info.nups)
        functionvalues = functionvalues .. k .. ": " .. kv .. infofunction .. "\n"
    elseif type(v) == "thread" then
        kv = "Поток"
        threadvalues = threadvalues .. k .. ": " .. kv .. "\n"
    elseif type(v) == "boolean" then
        kv = "Булево"
        value = tostring(v)
        booleanvalues = booleanvalues .. k .. ": " .. kv .. "(Значение: " .. value .. ")" .. "\n"
    elseif type(v) == "number" then
        kv = "Число"
        value = tostring(v)
        numbervalues = numbervalues .. k .. ": " .. kv .. "(Значение: " .. value .. ")" .. "\n"
    elseif type(v) == "string" then
        kv = "Строка"
        value = v
        stringvalues = stringvalues .. k .. ": " .. kv .. "(Значение: " .. value .. ")" .. "\n"
    elseif type(v) == "userdata" then
        kv = "Пользовательские данные"
        userdatavalues = userdatavalues .. k .. ": " .. kv .. "\n"
    end
end
if functionvalues ~= "" then
    print("Все функции:" .. "\n" .. functionvalues .. "\n")
end
if threadvalues ~= "" then
    print("Все потоки:" .. "\n" .. threadvalues .. "\n")
end
if userdatavalues ~= "" then
    print("Все переменные пользовательских данных:" .. "\n" .. userdatavalues .. "\n")
end
if tablevalues ~= "" then
    print("Все таблицы:" .. "\n" .. tablevalues .. "\n")
end
if stringvalues ~= "" then
    print("Все строковые переменные:" .. "\n" .. stringvalues .. "\n")
end
if booleanvalues ~= "" then
    print("Все булево значения:" .. "\n" .. booleanvalues .. "\n")
end
if numbervalues ~= "" then
    print("Все числовые переменные:" .. "\n" .. numbervalues .. "\n")
end

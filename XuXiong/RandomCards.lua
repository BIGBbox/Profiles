--[[
    function:权重随机函数
    param1:要随机的表
    param2:权重列表
    return:返回的随机值
]]
function getRandomByWeight(t, weights)
    local sum = 0
    for i = 1, #weights do
        sum = sum + weights[i]
    end
    local compareWeight = math.random(1, sum)

    local weightIndex = 1
    while sum > 0 do
        sum = sum - weights[weightIndex]
        if sum < compareWeight then
            return t[weightIndex]
        end
        weightIndex = weightIndex + 1
    end
    print("compare error, return nil")
    return nil
end

--------------- test --------------

local items = {
    [1] = "爱国卡_xx",
    [2] = "友善卡_xx",
    [3] = "富强卡_xx",
    [4] = "和谐卡_xx",
    [5] = "敬业卡_xx",
}

local weights = {
    [1] = 30,
    [2] = 10,
    [3] = 50,
    [4] = 9,
    [5] = 1,
}

local result = {
    ["爱国卡_xx"] = 0,
    ["友善卡_xx"] = 0,
    ["富强卡_xx"] = 0,
    ["和谐卡_xx"] = 0,
    ["敬业卡_xx"] = 0,
}
local allRandomCount = 1000
for i = 1, allRandomCount do
    local randomValue = getRandomByWeight(items, weights)
    result[randomValue] = result[randomValue] + 1
end

for i = 1, #items do
    local key = items[i]
    local count = result[key]
    local probability = count / allRandomCount * 100 .. "%"
    local resultStr = key .. ": " .. "count is " .. count .. " ,probability is " .. probability
    print(resultStr)
end



local table = {
    --暂时把这里所有的道具都作为了升级材料
    ["经验丹10_xx"] = {200,999,5},
    ["经验丹18_xx"] = {200,999,2},
    ["修为丹9_xx"] = {200,999,10},
    ["强化材料_xx"] = {10},
    ["军工6_xx"] = {10},
}
local SetMap = {
    "烈焰锻体",
    "成神试炼",
    "入魔试炼",
    "天下第一",
    "心魔地图1",
    "心魔地图2",
}
function main(player,item)
    local elixir = table[lualib:KeyName(item)]
    local lv = lualib:Level(player)
    local name = lualib:KeyName(item)
    --local count = table[lualib:KeyName(item)][3]

    if elixir == "强化材料_xx"  or elixir == "军工6_xx"then
        --lualib:AddItem(player,elixir,false,"使用新春祝福大礼包获得",player)
        lualib:AddItem(player,elixir,table[elixir][1],false,"使用新春祝福大礼包获得",player)
    end

    -- local expMax = lualib:Player_GetExpLimit(player)
    -- local exp = lualib:GetExpStr(player)
    -- local result = lualib:number_arithmetic(tostring(expMax),exp,"-")
    lualib:SetLevel(player,lv+1)
    lualib:SysWarnMsg(player, "使用"..name.. "等级提升1级")
    lualib:Player_RunScript(player,"玩家流程:on_level_up",tostring(lv))
    return true
end
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("item/活动丹药_xx")

local tab = {
    --新春祝福大礼包
    {"五福卡_xx",1},
    {"随机元宝(100-3000)_xx",1},
    {"经验丹10_xx",5},
    {"强化材料_xx",10},
}

function main(player, item)
    local name = lualib:KeyName(item)
    local amount = lualib:Item_GetAmount(player, item)

    if lualib:GetBagFree(player) < 4 then
        lualib:MsgBox(player, "背包空间不足4个，请先整理背包!!!")
        return ""
    end
    for i = 1, #tab do
        if lualib:AddItem(player, tab[i][1], tab[i][2], false, "使用新春祝福大礼包", player) then
            lualib:SysWarnMsg(player, "使用五福临门礼包" .. "获得" .. tab[i][1]..tab[i][2].."个")
            lualib:Item_SetAmount(player, item, amount - 1)
        end
    end

end
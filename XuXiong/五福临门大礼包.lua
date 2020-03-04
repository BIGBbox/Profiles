local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("item/物品通用")
require("item/元宝")
require("item/金币")
require("item/sy_代金券")


--五福临门礼包
local tab = { --五福临门礼包
    "元宝8888_xx",
    "太阳石88_xx",
    "金币(88888)_xx",
    "代金券88_xx"
}


function main(player, item)
    local name = lualib:KeyName(item)
    local amount = lualib:Item_GetAmount(player, item)
    if lualib:GetBagFree(player) < 4 then
        lualib:MsgBox(player, "背包空间不足4个，请先整理背包!!!")
        return ""
    end
    for i = 1, #tab do
        if lualib:AddItem(player, tab[i], 1, false, "使用五福临门礼包", player) then
            lualib:SysWarnMsg(player, "使用五福临门礼包" .. "获得" .. tab[i])

            lualib:Item_SetAmount(player, item, amount - 1)
        end
    end


end

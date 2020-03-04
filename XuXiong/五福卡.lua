local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

--获得五福卡之一
local cards = {
    { "爱国卡_xx", 30, "军功6_xx",10},
    { "友善卡_xx", 10, "经验加成10%_xx" },
    { "富强卡_xx", 50, "爆率提升10%_xx" },
    { "和谐卡_xx", 9, "全属性提升%_xx" },
    { "敬业卡_xx", 1, "经验丹18_xx", "修为丹9_xx" }
}
function main(player,item)

    local name = lualib:KeyName(item)   --获取道具名称

    if name=="爱国卡_xx" then
        lualib:AddItem(player,cards[1][3],10,false,"使用爱国卡",player)
        lualib:SysMsg_SendPromptMsg(player, "军功6数量增加:10")
        return true

    end
    if name=="和谐卡_xx" then
        lualib:AddBuff(player, cards[2][3], 86400)
        lualib:SysMsg_SendPromptMsg(player, "全属性提升10%_xx")
        return true

    end
    if name=="富强卡_xx" then
        lualib:AddBuff(player, cards[3][3], 86400)
        lualib:SysMsg_SendPromptMsg(player, "爆率提升10%")
        return true
    end
    if name=="友善卡_xx" then
        lualib:AddBuff(player, cards[4][3], 86400)
        lualib:SysMsg_SendPromptMsg(player, "经验加成10%_xx")
        return true
    end
    if name=="敬业卡_xx" then
        lualib:AddItem(player,cards[5][3],2,false,"使用敬业卡",player)
        lualib:AddItem(player,cards[5][4],10,false,"使用敬业卡",player)
        lualib:SysMsg_SendPromptMsg(player, "获得\"经验丹18_xx\"2颗,\"修为丹9_xx\"10颗")
        return true
    end

end
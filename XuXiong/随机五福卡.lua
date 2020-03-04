--[[local cards = {
    { "富强卡_xx", 50 },
    { "爱国卡_xx", 30 },
    { "友善卡_xx", 10 },
    { "和谐卡_xx", 9 },
    { "敬业卡_xx", 1 }
}]]
function main(player, item)
    local number = lualib:GenRandom(0, 99)
    if number == 0 then
        lualib:AddItem(player, "敬业卡_xx", 1, false, "使用五福临门礼包", player)
        lualib:SysWarnMsg(player, "恭喜您获得一张敬业卡_xx" )
        return true
    end
    if number >= 1 and number <= 9 then
        lualib:AddItem(player, "和谐卡_xx", 1, false, "使用五福临门礼包", player)
        lualib:SysWarnMsg(player, "恭喜您获得一张和谐卡_xx" )
        return true
    end
    if number >= 10 and number <= 19 then
        lualib:AddItem(player, "友善卡_xx", 1, false, "使用五福临门礼包", player)
        lualib:SysWarnMsg(player, "恭喜您获得一张友善卡_xx" )
        return true
    end
    if number >= 20 and number <= 49 then
        lualib:AddItem(player, "爱国卡_xx", 1, false, "使用五福临门礼包", player)
        lualib:SysWarnMsg(player, "恭喜您获得一张爱国卡_xx" )
        return true
    end
    if number >= 50 and number <= 99 then
        lualib:AddItem(player, "富强卡_xx", 1, false, "使用五福临门礼包", player)
        lualib:SysWarnMsg(player, "恭喜您获得一张富强卡_xx" )
        return true
    end

end

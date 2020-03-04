local YuShuDrops = {
    --货币组_随机20个
    { "金币(5万)", 10 },
    { "金币(2万)", 10 },
    { "金币(1万)", 10 },
    { "金币(5000)", 10 },
    { "金币(2000)", 10 },
    { "金币(1000)", 10 },
    { "100元宝", 5 },
    { "50元宝", 10 },
    { "代金券10元", 2 },
    { "代金券1元", 10 },
    { "太阳石50", 5 },
    { "太阳石20", 5 },
    { "太阳石10", 5 },
    { "太阳石5", 10 },
    { "太阳石2", 10 },
    --材料组_随机10个
    { "默契材料", 20 },
    { "光环进阶", 20 },
    { "玻璃塔进阶", 20 },
    { "战宠升级材料", 20 },
    { "战宠进阶材料", 20 },
    { "技能升级1", 2 },
    { "技能升级5", 5 },
    { "补血药1", 20 },
    { "补血药2", 20 },
    { "补血药3", 20 },
    { "超级幸运", 10 },
    { "续命金丹", 5 },
    --经验组_随机10个
    { "经验丹2_xx", 10 },
    { "经验丹4_xx", 10 },
    { "经验丹6_xx", 10 },
    { "经验丹8_xx", 10 },
    { "经验丹10_xx", 5 },
    { "经验丹12_xx", 5 },
    { "经验丹14_xx", 5 },
    { "经验丹16_xx", 3 },
    { "经验丹18_xx", 1 },
    { "修为丹1_xx", 10 },
    { "修为丹3_xx", 8 },
    { "修为丹5_xx", 6 },
    { "修为丹5_xx", 4 },
    { "修为丹9_xx", 2 },
    --特殊组_随机1个
    { "四阶技能书3", 1 },
    { "四阶技能书2", 1 },
    { "四阶技能书1", 1 },
    { "四阶技能书1", 1 },
    --装备组
--[[    { "10阶充值坐骑", 2 },
    { "45阶充值衣服男", 2 },
    { "50阶充值衣服男", 2 },
    { "55阶充值衣服男", 2 },
    { "60阶充值衣服男", 2 },
    { "1阶充值披风", 2 },
    { "2阶充值披风", 2 },
    { "3阶充值披风", 2 },
    { "4阶充值披风", 2 },
    { "5阶充值披风", 2 },
    { "1阶充值翅膀", 2 },
    { "2阶充值翅膀", 2 },
    { "3阶充值翅膀", 2 },
    { "4阶充值翅膀", 2 },
    { "5阶充值翅膀", 2 },
    { "45阶充值武器", 2 },
    { "50阶充值武器", 2 },
    { "55阶充值武器", 2 },
    { "60阶充值武器", 2 },]]
}

function on_create(monster)
    lualib:AddTrigger(monster, lua_trigger_monster_post_die, "on_post_monster_die")        --怪物死亡之后触发
end

--战斗
function on_monster_in_fight(monster)
    --  local map= lualib:MapGuid(monster)
    --   lualib:SysMsg_SendMapMsg(map,"进入战斗")
    if lualib:GetInt(monster, "Timer_id") == 0 then
        local id = lualib:GenTimerId(monster)
        lualib:SetInt(monster, "Timer_id", id)
        lualib:AddTimerEx(monster, id, 1000, -1, "PlayerMonstorDis", "")
    end
end
function on_monster_out_fight(monster)
    local id = lualib:GetInt(monster, "Timer_id")
    if id ~= 0 then
        lualib:DisableTimer(monster, id)
        lualib:SetInt(monster, "Timer_id", 0)
    end
    --   local map= lualib:MapGuid(monster)
    --   lualib:SysMsg_SendMapMsg(map,"退出战斗")
    local x = lualib:GetInt(monster, "X")
    local y = lualib:GetInt(monster, "Y")
    lualib:Monster_SetSeeker(monster, { x, y }, 0, true)
end


--追击距离
local Dis = 10
function PlayerMonstorDis(monster)

    local M_X = lualib:X(monster)
    local M_Y = lualib:Y(monster)
    local x = lualib:GetInt(monster, "X")
    local y = lualib:GetInt(monster, "Y")
    if math.abs(M_X - x) >= Dis or math.abs(M_Y - y) >= Dis then
        --    local map= lualib:MapGuid(monster)
        --    lualib:SysMsg_SendMapMsg(map,"距离大于10,退出战斗")
        on_monster_out_fight(monster)
    end

end
--怪物死亡回调
function on_post_monster_die(monster, killer)
    local str = ""
    if lualib:Player_IsPlayer(killer) then
        str = "#COLORCOLOR_WHITE#玩家【#COLORCOLOR_YELLOW#" .. lualib:KeyName(killer) .. "#COLORCOLOR_WHITE#】"
        str = str .. "在 #COLORCOLOR_ORANGE#" .. lualib:KeyName2Name(lualib:KeyName(lualib:MapGuid(monster)), 5) .. " #COLORCOLOR_WHITE#击杀了"

        local x = lualib:X(killer)
        local y = lualib:Y(killer)
        for i = 1, 20 do
            --货币组
            local number = lualib:GenRandom(1, 15)
            lualib:Map_GenItemRnd(lualib:MapGuid(monster), x, y, 5, YuShuDrops[number][1], YuShuDrops[number][2], true, 0)
            lualib:SysWarnMsg(killer, "击杀了玉鼠_xx，获得了" .. YuShuDrops[number][1] .. "," .. YuShuDrops[number][2] .. "个")
        end
        for i = 1, 10 do
            --材料组
            local number = lualib:GenRandom(16, 26)
            lualib:Map_GenItemRnd(lualib:MapGuid(monster), x, y, 5, YuShuDrops[number][1], YuShuDrops[number][2], true, 0)
            lualib:SysWarnMsg(killer, "击杀了玉鼠_xx，获得了" .. YuShuDrops[number][1] .. "," .. YuShuDrops[number][2] .. "个")

        end
        for i = 1, 10 do
            --经验组
            local number = lualib:GenRandom(25, 40)
            lualib:Map_GenItemRnd(lualib:MapGuid(monster), x, y, 5, YuShuDrops[number][1], YuShuDrops[number][2], true, 0)
            lualib:SysWarnMsg(killer, "击杀了玉鼠_xx，获得了" .. YuShuDrops[number][1] .. "," .. YuShuDrops[number][2] .. "个")

        end
        local number1 = lualib:GenRandom(41, 44)    --特殊组
        lualib:Map_GenItemRnd(lualib:MapGuid(monster), x, y, 5, YuShuDrops[number1][1], YuShuDrops[number1][2], true, 0)
        lualib:SysWarnMsg(killer, "击杀了玉鼠_xx，获得了" .. YuShuDrops[number1][1] .. "," .. YuShuDrops[number1][2] .. "个")

        --[[        local number = lualib:GenRandom(1, 15)      --装备组
                lualib:Map_GenItemRnd(lualib:MapGuid(monster), x, y, YuShuDrops[5][1], YuShuDrops[number][2], true, 0)
                lualib:SysWarnMsg(killer, "击杀了玉鼠_xx，获得了"..YuShuDrops[number][1]..","..YuShuDrops[number][2].. "个")]]


    elseif lualib:Monster_GetMaster(killer) ~= "" then
        str = "#COLORCOLOR_WHITE#玩家【#COLORCOLOR_YELLOW#" .. lualib:Monster_GetMaster(killer) .. "#COLORCOLOR_WHITE#】"
        str = str .. "在 #COLORCOLOR_ORANGE#" .. lualib:KeyName2Name(lualib:KeyName(lualib:MapGuid(monster)), 5) .. " #COLORCOLOR_WHITE#击杀了"
    end

    if str == "" then
        return ""
    end

    str = str .. "#COLORCOLOR_RED#" .. lualib:KeyName2Name(lualib:KeyName(monster), 2)

    lualib:SysMsg_SendBroadcastColor(str, "", 1, 12)
    return ""
end

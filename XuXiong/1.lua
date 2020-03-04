RoleEquiment = {}

--展示装备框偏移
local offsetX = -35
local offsetY = 85

local tItemBackImg = {
    { 0, 1850300036, 1850400004 },
    { 1, 1850300035, 1850400004 },
    { 2, 1850300037, 1850400004 },
    { 5, 1850300042, 1850400004 },
    { 6, 1850300045, 1850400004 },
    { 7, 1850300045, 1850400004 },
    { 8, 1850300040, 1850400004 },
    { 9, 1850300040, 1850400004 },
    { 11, 1850300043, 1850400004 },
    { 13, 1850300038, 1850400004 },
    { 14, 1850300047, 1850400004 },
    { 16, 1850300048, 1850400004 },
}

local SYCOLOR = {
    ["灰白"] = 4291736418,

}
function RoleEquiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    local _OffsetX = (_DeviceSizeX - 1014) / 2 + 47
    local _OffsetY = (_DeviceSizeY - 642) / 2

    GUI:WndSetPosM(_Parent, _OffsetX, _OffsetY)

    _GUIHandle = GUI:ImageCreate(_Parent, "RightBG", 0, 8 + 27, 44)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 497, 570)
        GUI:ImageSetAroundImage(_GUIHandle, 1853810000, 1853810002, 1853810006, 1853810008, 1853810004, 1853810001, 1853810007, 1853810003, 1853810005)
    end

    _GUIHandle = GUI:ImageCreate(_Parent, "LeftBG", 0, 509 + 27, 44)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 462, 570)
        GUI:ImageSetAroundImage(_GUIHandle, 1853810000, 1853810002, 1853810006, 1853810008, 1853810004, 1853810001, 1853810007, 1853810003, 1853810005)
    end

    _GUIHandle = GUI:ImageCreate(_Parent, "RoleBg", 1854400000, 15 + 27, 50)
    if _GUIHandle ~= 0 then
        --GUI:WndSetSizeM(_GUIHandle, )
        GUI:WndSetSizeM(_GUIHandle, 485, 560)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end

    local left_x = 530 + 27

    --等级
    _GUIHandle = GUI:EditCreate(_Parent, "LevelText", left_x, 72, 200, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle, "等    级：")
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "LevelEdit", left_x + 100, 72, 200, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end



    --    --战斗力(攻击力)
    -- _GUIHandle = GUI:EditCreate(_Parent,"BattleStaticEdit",806,118,100,20)
    --    if _GUIHandle ~= 0 then
    -- 	GUI:EditSetTextM(_GUIHandle,"攻击：")
    -- 	GUI:WndSetEnableM(_GUIHandle, false)
    --        GUI:WndSetParam(_GUIHandle, 0)
    --        GUI:EditSetCanEdit(_GUIHandle, false)
    -- 	GUI:WndSetTextColorM(_GUIHandle, 4291736418)
    --    end

    -- _GUIHandle = GUI:EditCreate(_Parent,"BattleEdit",747,118,100,20)
    -- if _GUIHandle ~= 0 then
    -- end


    local topLine = 134
    --经验值
    _GUIHandle = GUI:ImageCreate(_Parent, "ExpBackImg", 1854430003, left_x + 100, topLine - 33)
    if _GUIHandle ~= 0 then
        --330 28
    end

    _GUIHandle = GUI:ImageCreate(_Parent, "PlayerEXPNew", 1854430004, left_x + 105, topLine - 28)
    if _GUIHandle ~= 0 then
    end
    _GUIHandle = GUI:EditCreate(_Parent, "ExpStaticTextEdit", left_x, topLine - 30, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "经 验 值：")
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "ExpEdit", left_x + 100, topLine - 33, 330, 28)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end


    --生命值
    _GUIHandle = GUI:ImageCreate(_Parent, "BloodBackImg", 1854430003, left_x + 100, topLine + 10 - 3)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent, "BloodImg", 1854430005, left_x + 105, topLine + 10 + 2)
    if _GUIHandle ~= 0 then
    end
    _GUIHandle = GUI:EditCreate(_Parent, "HpStaticTextEdit", left_x, topLine + 10, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "生 命 值：")
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "HpEdit", left_x + 100, topLine + 10 - 3, 330, 28)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    --榄旀硶鍊?
    _GUIHandle = GUI:ImageCreate(_Parent, "MagicBackImg", 1854430003, left_x + 100, topLine + 50 - 3)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent, "MagicImg", 1854430006, left_x + 105, topLine + 50 + 2)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent, "MpStaticEdit", left_x, topLine + 50, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "魔 法 值：")
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "MpEdit", left_x + 100, topLine + 50 - 3, 330, 28)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    local midLine = 276
    local txt_interval_Y = 40
    local txt_interval_X = 250

    _GUIHandle = GUI:EditCreate(_Parent, "JobText", left_x + txt_interval_X, 72, 200, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle, "职业：")
    end

    _GUIHandle = GUI:EditCreate(_Parent, "JobEdit", left_x + txt_interval_X + 60, 72, 200, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        --GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    _GUIHandle = GUI:EditCreate(_Parent, "PhyAttac", left_x, midLine - 50, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "物理攻击：")
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:WndSetEnableM(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "PhyAttacEdit", left_x + 95, midLine - 50, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    _GUIHandle = GUI:EditCreate(_Parent, "PhyDef", left_x + txt_interval_X, midLine - 50, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "物理防御：")
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:WndSetEnableM(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "PhyDefEdit", left_x + txt_interval_X + 95, midLine - 50, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    _GUIHandle = GUI:EditCreate(_Parent, "MagicAttac", left_x, midLine + txt_interval_Y - 50, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "魔法攻击：")
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:WndSetEnableM(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "MagicAttacEdit", left_x + 95, midLine + txt_interval_Y - 50, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    _GUIHandle = GUI:EditCreate(_Parent, "MagicDefine", left_x + txt_interval_X, midLine + txt_interval_Y - 50, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "魔法防御：")
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:WndSetEnableM(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "MagicDefineEdit", left_x + 95 + txt_interval_X, midLine + txt_interval_Y - 50, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    _GUIHandle = GUI:EditCreate(_Parent, "DaoAttac", left_x, midLine + txt_interval_Y * 2 - 50, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "道术攻击：")
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:WndSetEnableM(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "DaoAttacEdit", left_x + 95, midLine + txt_interval_Y * 2 - 50, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    local bottomLine = 345

    _GUIHandle = GUI:EditCreate(_Parent, "Miss", left_x, bottomLine, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "闪    避：")
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:EditCreate(_Parent, "MissEdit", left_x + 95, bottomLine, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    _GUIHandle = GUI:EditCreate(_Parent, "Hit", left_x + txt_interval_X, bottomLine, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "命    中：")
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:EditCreate(_Parent, "HitEdit", left_x + 95 + txt_interval_X, bottomLine, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    _GUIHandle = GUI:EditCreate(_Parent, "ExtremAtc", left_x, bottomLine + txt_interval_Y - 5, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "暴    击：")
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:EditCreate(_Parent, "ExtremAtcEdit", left_x + 95, bottomLine + txt_interval_Y - 5, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    _GUIHandle = GUI:EditCreate(_Parent, "Lucky", left_x + txt_interval_X, bottomLine + txt_interval_Y - 5, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "幸 运 值：")
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:EditCreate(_Parent, "RoleLucky", left_x + 95 + txt_interval_X, bottomLine + txt_interval_Y - 5, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    _GUIHandle = GUI:EditCreate(_Parent, "PK", left_x + txt_interval_X, midLine + txt_interval_Y * 2 - 50, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "PK    值：")
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:EditCreate(_Parent, "PK_Edit", left_x + 95 + txt_interval_X, midLine + txt_interval_Y * 2 - 50, 100, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "WingShow", 0, 217 + 27, 100, 100, 60)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "翅膀展示")
        GUI:ImageSetDrawCenter(_GUIHandle, true)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle, 100, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        --GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 297 + offsetX, 215 + offsetY)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ImageSetTransfrom(_GUIHandle, 15000, 15000, 0)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment14", 0, 240 + offsetX + 27, 150 + offsetY, 100, 174)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "衣服")
        GUI:ImageSetDrawCenter(_GUIHandle, true)
        GUI:WndSetParam(_GUIHandle, 14)
        GUI:WndSetSizeM(_GUIHandle, 100, 200)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        --GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 300 + offsetX, 215 + offsetY)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:WndSetMouseEnableIN(_GUIHandle, true)
        GUI:ImageSetTransfrom(_GUIHandle, 15000, 15000, 0)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment13", 0, 125 + offsetX + 27, 100 + offsetY, 60, 115)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "武器")
        GUI:ImageSetDrawCenter(_GUIHandle, true)
        GUI:WndSetParam(_GUIHandle, 13)
        GUI:WndSetSizeM(_GUIHandle, 100, 240)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ImageSetTransfrom(_GUIHandle, 15000, 15000, 0)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 240 + offsetX, 205 + offsetY)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:WndSetMouseEnableIN(_GUIHandle, true)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment16", 0, 340 + offsetX + 27, 220 + offsetY, 84, 174)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "盾牌")
        GUI:WndSetParam(_GUIHandle, 16)
        GUI:WndSetSizeM(_GUIHandle, 100, 100)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 159 + offsetX, 20 + offsetY)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ImageSetTransfrom(_GUIHandle, 15000, 15000, 0)
    end

    local pos_x = 26
    local pos_y = 182
    local interval = 90

    pos_x = 29
    pos_y = 185 - 10
    local item_size = 66
    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment0", 1850300036, pos_x + 27, pos_y - 90, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "头盔")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment6", 1850300045, pos_x + 27, pos_y + interval, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "护腕")
        GUI:WndSetParam(_GUIHandle, 6)
        --GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)

    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment8", 1850300040, pos_x + 27, pos_y + interval * 2, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "戒指")
        GUI:WndSetParam(_GUIHandle, 8)
        --GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        --GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)

    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment5", 1850300042, pos_x + 27, pos_y + interval * 3, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "腰带")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)

    end
    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment2", 1850300037, pos_x + 27, pos_y, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "翅膀")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        --GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)

    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment10", 1850300060, pos_x + 27, pos_y + interval * 4, 72, 72)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "符咒")
        GUI:WndSetParam(_GUIHandle, 10)

        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)

    end
    pos_x = 414

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment9", 1850300040, pos_x + 27, pos_y + interval * 2, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "戒指")
        GUI:WndSetParam(_GUIHandle, 9)
        --GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        --GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)

    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment7", 1850300045, pos_x + 27, pos_y + interval, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "护腕")
        GUI:WndSetParam(_GUIHandle, 7)
        --GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        --GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)

    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment19", 1850300048, pos_x + 27, pos_y - 90, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "勋章")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        --GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)

    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment1", 1850300035, pos_x + 27, pos_y - 90, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "项链")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        --GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)

    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment3", 1850300048, pos_x + 27, pos_y, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "勋章")
        GUI:WndSetParam(_GUIHandle, 16)
        --GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment11", 1850300043, pos_x + 27, pos_y + interval * 3, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "靴子")
        GUI:WndSetParam(_GUIHandle, 11)
        --GUI:WndSetSizeM(_GUIHandle,72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        --GUI:ItemCtrlSetIconSize(_GUIHandle, 72,72)

    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment19", 1850300059, pos_x - interval + 27, pos_y + 270, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "战魂")
        GUI:WndSetParam(_GUIHandle, 19)
        GUI:WndSetSizeM(_GUIHandle, 72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72, 72)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment32", 1850300053, pos_x - interval + 27, pos_y + interval * 5 - 90, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "血石")
        GUI:WndSetParam(_GUIHandle, 15)
        GUI:WndSetSizeM(_GUIHandle, 72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72, 72)
    end
    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment18", 1850300036, pos_x - interval - 103 + 27, pos_y + interval * 5 - 90, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "斗笠")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

        GUI:WndSetEnableM(_GUIHandle, true)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment4", 1850300055, pos_x - interval - 207 + 27, pos_y + interval * 4 - 90, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "法宝")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment20", 1850300057, pos_x - interval - 207 + 27, pos_y + interval * 4, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "符文")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment12", 1850300052, pos_x + 27, pos_y + interval * 4, item_size, item_size)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "坐骑")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle, 72, 72)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        --GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 72, 72)
    end


    --UI:Lua_OpenWindow(_Parent,"RoleStatus.lua")

    _GUIHandle = GUI:ImageCreate(_Parent, "NameBackImg", 1854100007, 158 + 27, 62)
    if _GUIHandle ~= 0 then
        --456 36
    end

    --玩家名
    _GUIHandle = GUI:EditCreate(_Parent, "RoleName", 183 + 27, 71, 140, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
        --GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
    end

    --行会名
    _GUIHandle = GUI:EditCreate(_Parent, "FamilyEdit", 103 + 27, 110, 300, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
    end

    --战斗力
    --_GUIHandle = GUI:ImageCreate(_Parent, "PowerImg", 1854430017, 125, 480)
    --if _GUIHandle ~= 0 then
    --	GUI:WndSetEnableM(_GUIHandle, false)
    --end

    --local tNumImg = {[0] = 1854430018, 1854430019, 1854430020, 1854430021, 1854430022, 1854430023, 1854430024, 1854430025, 1854430026, 1854430027}
    --if Role_Power ~= nil then
    --	local _Parent = GUI:WndCreateWnd(_Parent, "PowerWnd", 0, 215, 495)
    --	if _Parent ~= 0 then
    --		for i = 1, string.len(Role_Power) do
    --			local num = tonumber(string.sub(Role_Power, i, i))
    --			local intervalX = 22
    --			local _GUIHandle = GUI:ImageCreate(_Parent, "Num"..i, tNumImg[tonumber(num)], intervalX*(i - 1), 0)
    --			if _GUIHandle ~= 0 then
    --				GUI:WndSetEnableM(_GUIHandle, false)
    --			end
    --		end
    --	end
    --end


    _GUIHandle = GUI:ButtonCreate(_Parent, "wuxing", 1853770044, pos_x - interval + 230, pos_y + interval + 145)    --五行
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "RoleEquiment.wuxing")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
    end
    _GUIHandle = GUI:ButtonCreate(_Parent, "shizhuang", 1853770072, pos_x - interval + 340, pos_y + interval + 145)     --时装
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "RoleEquiment.sjxsa")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
    end
    _GUIHandle = GUI:ButtonCreate(_Parent, "jineng", 1853770104, pos_x - interval + 450, pos_y + interval + 145)    --神技
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "RoleEquiment.shenji")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
    end
    _GUIHandle = GUI:ButtonCreate(_Parent, "zuoqi", 1853770124, pos_x - interval + 560, pos_y + interval + 145)     --坐骑
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "RoleEquiment.zuoqi")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
    end
    _GUIHandle = GUI:ImageCreate(_Parent, "ltc5", 1850000127, pos_x - interval + 230, pos_y + interval + 211)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 80, 28)
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:ImageCreate(_Parent, "ltc6", 1850000127, pos_x - interval + 340, pos_y + interval + 211)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 80, 28)
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:ImageCreate(_Parent, "ltc7", 1850000127, pos_x - interval + 450, pos_y + interval + 211)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 80, 28)
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:ImageCreate(_Parent, "ltc8", 1850000127, pos_x - interval + 560, pos_y + interval + 211)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 80, 28)
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:EditCreate(_Parent, "paname5", pos_x - interval + 199, pos_y + interval + 215, 140, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle, "五行")
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:EditCreate(_Parent, "paname6", pos_x - interval + 309, pos_y + interval + 215, 140, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle, "时装")
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:EditCreate(_Parent, "paname7", pos_x - interval + 419, pos_y + interval + 215, 140, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle, "神技")
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:EditCreate(_Parent, "paname8", pos_x - interval + 529, pos_y + interval + 215, 140, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle, "坐骑")
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:ButtonCreate(_Parent, "baoshi", 1853770064, pos_x - interval + 340, pos_y + interval + 250)        --宝石
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "RoleEquiment.baoshi")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent, "shengxiao", 1853770004, pos_x - interval + 560, pos_y + interval + 250)     --转生
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "RoleEquiment.dkshengxiao")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
    end
    _GUIHandle = GUI:ButtonCreate(_Parent, "qianghua", 1853770016, pos_x - interval + 230, pos_y + interval + 250)      --配饰
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "RoleEquiment.zhuzao")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent, "mozhuang1", 1853770048, pos_x - interval + 450, pos_y + interval + 250)     --龙珠
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "RoleEquiment.sjxsaaa")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
    end

    _GUIHandle = GUI:ImageCreate(_Parent, "ltc1", 1850000127, pos_x - interval + 230, pos_y + interval + 316)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 80, 28)
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:ImageCreate(_Parent, "ltc2", 1850000127, pos_x - interval + 340, pos_y + interval + 316)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 80, 28)
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:ImageCreate(_Parent, "ltc3", 1850000127, pos_x - interval + 450, pos_y + interval + 316)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 80, 28)
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:ImageCreate(_Parent, "ltc4", 1850000127, pos_x - interval + 560, pos_y + interval + 316)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 80, 28)
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "paname1", pos_x - interval + 199, pos_y + interval + 320, 140, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle, "佩饰")
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
        GUI:WndSetEnableM(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "paname2", pos_x - interval + 309, pos_y + interval + 320, 140, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle, "宝石")
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:EditCreate(_Parent, "paname3", pos_x - interval + 419, pos_y + interval + 320, 140, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle, "龙珠")
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    _GUIHandle = GUI:EditCreate(_Parent, "paname4", pos_x - interval + 529, pos_y + interval + 320, 140, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle, "转生")
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, SYCOLOR["灰白"])
        GUI:WndSetEnableM(_GUIHandle, false)
    end

    ----时装部分
    _GUIHandle = GUI:ImageCreate(_Parent, "RoleBg1", 1854400000, 15 + 27, 50)
    if _GUIHandle ~= 0 then
        --GUI:WndSetSizeM(_GUIHandle, )
        GUI:WndSetSizeM(_GUIHandle, 485, 560)
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetVisible(_GUIHandle, false)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment17", 0, 232 + offsetX + 27, 164 + offsetY, 60, 115)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "时装衣服")
        GUI:ImageSetDrawCenter(_GUIHandle, true)
        GUI:WndSetParam(_GUIHandle, 13)
        GUI:WndSetSizeM(_GUIHandle, 50, 240)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 300 + offsetX, 255 + offsetY)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:WndSetMouseEnableIN(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment34", 0, 28 + 27, 130, 84, 174)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "时装武器")
        GUI:ImageSetDrawCenter(_GUIHandle, true)
        GUI:WndSetParam(_GUIHandle, 14)
        GUI:WndSetSizeM(_GUIHandle, 80 + offsetX, 170 + offsetY)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        --GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 300 + offsetX, 255 + offsetY)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:WndSetMouseEnableIN(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
    end
    _GUIHandle = GUI:CheckBoxCreate(_Parent, "ShowFashion", 1900112013, "显示时装", offsetX + 255, offsetY + 450)
    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "RoleEquiment.FashionShowChange")
        GUI:WndSetTextM(_GUIHandle, "显示时装")
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
        GUI:WndSetVisible(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent, "fanhui", 1854490000, pos_x - interval - 207 + 280, pos_y + interval - 200)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "RoleEquiment.szfh")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextM(_GUIHandle, "返回")
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:WndSetVisible(_GUIHandle, false)
    end

    RoleEquiment.UIInit(_Parent)
end


--UI Logic Code Start

--UI界面用装备索引
--  site_helmet,   /// 头盔0
--  site_necklace, /// 项链1
--  site_wings,    /// 翅膀2
--  site_medal,    /// 勋章3
--  site_amulet,   /// 守护4
--  site_shoulder, /// 护肩5
--  site_wrist_0,  /// 护腕0 6
--  site_wrist_1,  /// 护腕1 7
--  site_ring_0,   /// 戒指0 8
--  site_ring_1,   /// 戒指1 9
--  site_juju,     /// 符咒10
--  site_shoes,    /// 鞋子11
--  site_mount,    /// 坐骑12
--  site_weapon,   /// 武器13
--  site_armor,    /// 衣服14
--  site_gem,      /// 宝石15
--  site_shield,   /// 盾牌16
--  site_jewelry,   /// 时装17
--  site_hat,       /// 斗笠18
--  site_gloves,    /// 手套19
--  site_jewelry,   /// 珠宝20
RoleEquiment.ArmorSite = 5

RoleEquiment.WndHandle = 0
RoleEquiment.UseShield = true
RoleEquiment.ManHairTable = {
    1890900000,
    1890900002,
    1890900004
}

RoleEquiment.WomanHairTable = {
    1890900001,
    1890900003,
    1890900005
}

RoleEquiment.Open = false

--UI Logic Code Start
function RoleEquiment.UIInit(_Handle)
    RoleEquiment.WndHandle = _Handle
    RoleEquiment.Open = true
    --UI:Lua_SubmitForm("角色表单", "main", "")
    RegisterUIEvent(LUA_EVENT_PROPERTYDATA, "RoleEquiment_PropDataChange", RoleEquiment.propDataChange)
    RegisterUIEvent(LUA_EVENT_PROPERTYDATA64, "RoleEquiment_PropDataChange", RoleEquiment.propDataChange64)       --玩家数据改变
    RegisterUIEvent(LUA_EVENT_ONEQUIPMENT, "RoleEquiment_穿装备", "RoleEquiment.onequipment")
    RegisterUIEvent(LUA_EVENT_OFFEQUIPMENT, "RoleEquiment_脱装备", "RoleEquiment.offequipment")

    local _GUIHandle = 0
    _GUIHandle = GetWindow(_Handle, "ExpEdit")
    if _GUIHandle ~= 0 then
        GUI:EditSetLimitStringSize(_GUIHandle, false)
    end

    local _Gender = 0
    if CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then
        _Gender = LuaRet
    end

    local Job = 1
    if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then
        Job = LuaRet
    end
    --[[_GUIHandle = GUI:WndFindWindow(_Handle, "Equiment0")--头盔
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)

        if _Gender == 1 then
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, RoleEquiment.ManHairTable[Job])
        else
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, RoleEquiment.WomanHairTable[Job])
        end
    end--]]

    local _ShowFashionHandle = GUI:WndFindWindow(_Handle, "ShowFashion")
    if _ShowFashionHandle ~= 0 then
        local _ShowFashion = CL:GetShowFashion()
        GUI:CheckBoxSetCheck(_ShowFashionHandle, _ShowFashion)
    end
    local _ShowWeapFashionHandle = GUI:WndFindWindow(_Handle, "ShowWeapFashion")
    if _ShowWeapFashionHandle ~= 0 then
        local _ShowWeapFashion = CL:GetShowWeapFashion()
        GUI:CheckBoxSetCheck(_ShowWeapFashionHandle, _ShowWeapFashion)
    end

    _GUIHandle = GetWindow(_Handle, "image0")--发型
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle, true)
        if _Gender == 1 then
            GUI:WndSetImageID(_GUIHandle, RoleEquiment.ManHairTable[Job])
        else
            GUI:WndSetImageID(_GUIHandle, RoleEquiment.WomanHairTable[Job])
        end
    end

    _GUIHandle = GetWindow(_Handle, "Equiment13")--武器
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle, true)
    end

    _GUIHandle = GetWindow(_Handle, "Equimentshields")--盾牌
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle, true)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment14")--衣服
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle, true)
        if _Gender == 1 then
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1890900006)
        else
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1890900007)
        end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment17")--衣服
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle, true)
        if _Gender == 1 then
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1890900006)
        else
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1890900007)
        end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "WingShow")--翅膀展示
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle, true)
    end

    local _ShowFashionHandle = GUI:WndFindWindow(_Handle, "ShowFashion")
    if _ShowFashionHandle ~= 0 then
        local _ShowFashion = CL:GetShowFashion()
        GUI:CheckBoxSetCheck(_ShowFashionHandle, _ShowFashion)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "RoleName")
    if 0 ~= _GUIHandle then
        local Property = 0
        if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLENAME) then
            Property = LuaRet
        end
        GUI:EditSetTextM(_GUIHandle, Property)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "FamilyEdit")
    if 0 ~= _GUIHandle then
        local Property = 0
        if CL:GetPlayerSelfPropBase(ROLE_PROP_FAMILY_NAME) then
            Property = LuaRet
        end
        if Property ~= 0 and Property ~= "" then
            GUI:EditSetTextM(_GUIHandle, "" .. Property)
        else
            GUI:EditSetTextM(_GUIHandle, "无行会")
        end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "HpEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_HP) then
            Property = LuaRet
        end
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_HP) then
            max_Property = LuaRet
        end
        GUI:EditSetTextM(_GUIHandle, "" .. Property .. " / " .. max_Property)
        _GUIHandle = GUI:WndFindWindow(_Handle, "BloodImg")
        local value = 0
        if max_Property > 0 then
            value = Property / max_Property
        end
        if value > 0 then
            GUI:WndSetVisible(_GUIHandle, true)
            -- msg("1")
            GUI:ImageSetDrawRect(_GUIHandle, 0, value, 0, 1)
        else
            GUI:WndSetVisible(_GUIHandle, false)
        end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "MpEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MP) then
            Property = LuaRet
        end
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MP) then
            max_Property = LuaRet
        end
        GUI:EditSetTextM(_GUIHandle, "" .. Property .. " / " .. max_Property)
        _GUIHandle = GUI:WndFindWindow(_Handle, "MagicImg")
        local value = 0
        if max_Property > 0 then
            value = Property / max_Property
        end
        if value > 0 then
            GUI:WndSetVisible(_GUIHandle, true)
            GUI:ImageSetDrawRect(_GUIHandle, 0, value, 0, 1)
        else
            GUI:WndSetVisible(_GUIHandle, false)
        end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "InnerEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        GUI:EditSetTextM(_GUIHandle, "" .. Property .. " / " .. max_Property)
        _GUIHandle = GUI:WndFindWindow(_Handle, "InnerImg")
        GUI:WndSetVisible(_GUIHandle, false)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "PhyDefEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_DEF) then
            Property = LuaRet
        end
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_DEF) then
            max_Property = LuaRet
        end
        GUI:EditSetTextM(_GUIHandle, "" .. Property .. "-" .. max_Property)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "MagicDefineEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_DEF) then
            Property = LuaRet
        end
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_DEF) then
            max_Property = LuaRet
        end
        GUI:EditSetTextM(_GUIHandle, "" .. Property .. "-" .. max_Property)
    end

    local PhyAttacMax = 0
    local MagicAttacMax = 0
    local DaoAttacMax = 0

    _GUIHandle = GUI:WndFindWindow(_Handle, "PhyAttacEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_ATK) then
            Property = LuaRet
        end
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_ATK) then
            max_Property = LuaRet
            PhyAttacMax = max_Property
        end
        GUI:EditSetTextM(_GUIHandle, "" .. Property .. "-" .. max_Property)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "MagicAttacEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_ATK) then
            Property = LuaRet
        end
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_ATK) then
            max_Property = LuaRet
            MagicAttacMax = max_Property
        end
        GUI:EditSetTextM(_GUIHandle, "" .. Property .. "-" .. max_Property)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "DaoAttacEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        local max_Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_TAO_ATK) then
            Property = LuaRet
        end
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_TAO_ATK) then
            max_Property = LuaRet
            DaoAttacMax = max_Property
        end
        GUI:EditSetTextM(_GUIHandle, "" .. Property .. "-" .. max_Property)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "JobEdit")
    if 0 ~= _GUIHandle then
        GUI:EditSetTextM(_GUIHandle, "" .. RDJOBName[Job])
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "MissEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MISS) then
            Property = LuaRet
        end
        GUI:EditSetTextM(_GUIHandle, "" .. Property)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "HitEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_HIT) then
            Property = LuaRet
        end
        GUI:EditSetTextM(_GUIHandle, "" .. Property)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "ExtremAtcEdit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_BURST) then
            Property = LuaRet
        end
        GUI:EditSetTextM(_GUIHandle, "" .. string.format("%.2f", Property / 100) .. "%")
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "RoleLucky")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_LUCK_CURSE) then
            Property = LuaRet
        end
        GUI:EditSetTextM(_GUIHandle, "" .. Property)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "MOVE_SPEED_Edit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MOVE_SPEED_PCT) then
            Property = LuaRet
        end
        GUI:EditSetTextM(_GUIHandle, "+" .. Property .. "%")
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "ATK_SPEED_Edit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_ATTACK_SPEED_PCT) then
            Property = LuaRet
        end
        GUI:EditSetTextM(_GUIHandle, "+" .. Property .. "%")
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "EQUIP_WEIGHT_Edit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_EQUIP_WEIGHT) then
            Property = LuaRet
        end
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_EQUIP_WEIGHT) then
            GUI:EditSetTextM(_GUIHandle, "" .. Property .. "/" .. LuaRet)
        end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "WEIGHT_Edit")
    if _GUIHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_WEIGHT) then
            Property = LuaRet
        end
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_WEIGHT) then
            GUI:EditSetTextM(_GUIHandle, "" .. Property .. "/" .. LuaRet)
        end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "PK_Edit")
    if _GUIHandle ~= 0 then
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_PK) then
            GUI:EditSetTextM(_GUIHandle, "" .. LuaRet)
        end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "LevelEdit")
    if 0 ~= _GUIHandle then
        local Property = 0
        if CL:GetPlayerSelfProperty32(ROLE_PROP32_LEVEL) then
            Property = LuaRet
        end
        GUI:EditSetTextM(_GUIHandle, "" .. Property)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "BattleEdit")
    if 0 ~= _GUIHandle then
        GUI:EditSetTextM(_GUIHandle, "")
    end

    RoleEquiment.burstharm_updata()    --更新暴击伤害
    RoleEquiment.HideWeapon()
    RoleEquiment.ShowWeapon()
    RoleEquiment.updateExp(true)

    CL:AddDelayTask(" RoleEquiment.SetItemBG()", 1, 1)
end

function RoleEquiment.SetItemBG()
    for i = 1, #tItemBackImg do
        local _GUIHandle = GetWindow(RoleEquiment.WndHandle, "Equiment" .. tItemBackImg[i][1])
        if _GUIHandle ~= 0 then
            local name = RDItemCtrlGetGUIDataKeyName(_GUIHandle)
            if name ~= "" then
                dbg(tItemBackImg[i][1] .. " : " .. name)
                GUI:ItemCtrlSetBackImageID(_GUIHandle, tItemBackImg[i][3])
            else
                GUI:ItemCtrlSetBackImageID(_GUIHandle, tItemBackImg[i][2])
            end
        end
    end
end

function RoleEquiment.propDataChange()
    local _GUIHandle = 0
    local Property = 0
    local max_Property = 0
    local PhyAttacMax = 0
    local MagicAttacMax = 0
    local DaoAttacMax = 0

    if LuaParam[2] == ROLE_PROP32_HP or LuaParam[2] == ROLE_PROP32_MAX_HP then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "HpEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_HP) then
                Property = LuaRet
            end
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_HP) then
                max_Property = LuaRet
            end
            GUI:EditSetTextM(_GUIHandle, "" .. Property .. " / " .. max_Property)
            _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "BloodImg")
            local value = 0
            if max_Property > 0 then
                value = Property / max_Property
            end
            if value > 0 then
                GUI:WndSetVisible(_GUIHandle, true)
                -- msg("3")
                GUI:ImageSetDrawRect(_GUIHandle, 0, value, 0, 1)
            else
                GUI:WndSetVisible(_GUIHandle, false)
            end
        end
    end

    if LuaParam[2] == ROLE_PROP32_MP or LuaParam[2] == ROLE_PROP32_MAX_MP then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MpEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MP) then
                Property = LuaRet
            end
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MP) then
                max_Property = LuaRet
            end
            GUI:EditSetTextM(_GUIHandle, "" .. Property .. " / " .. max_Property)
            _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MagicImg")
            local value = 0
            if max_Property > 0 then
                value = Property / max_Property
            end
            if value > 0 then
                GUI:WndSetVisible(_GUIHandle, true)
                -- msg("4")
                GUI:ImageSetDrawRect(_GUIHandle, 0, value, 0, 1)
            else
                GUI:WndSetVisible(_GUIHandle, false)
            end
        end
    end

    if LuaParam[2] == ROLE_PROP32_MIN_PHY_DEF or LuaParam[2] == ROLE_PROP32_MAX_PHY_DEF then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "PhyDefEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_DEF) then
                Property = LuaRet
            end
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_DEF) then
                max_Property = LuaRet
            end
            GUI:EditSetTextM(_GUIHandle, "" .. Property .. "-" .. max_Property)
        end
    end

    if LuaParam[2] == ROLE_PROP32_MIN_MAG_DEF or LuaParam[2] == ROLE_PROP32_MAX_MAG_DEF then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MagicDefineEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_DEF) then
                Property = LuaRet
            end
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_DEF) then
                max_Property = LuaRet
            end
            GUI:EditSetTextM(_GUIHandle, "" .. Property .. "-" .. max_Property)
        end
    end

    local Job = 0

    if LuaParam[2] == ROLE_PROP32_MIN_PHY_ATK or LuaParam[2] == ROLE_PROP32_MAX_PHY_ATK then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "PhyAttacEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_PHY_ATK) then
                Property = LuaRet
            end
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_PHY_ATK) then
                max_Property = LuaRet
                PhyAttacMax = max_Property
            end

            if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then
                Job = LuaRet
            end

            GUI:EditSetTextM(_GUIHandle, "" .. Property .. "-" .. max_Property)
        end
    end

    if LuaParam[2] == ROLE_PROP32_MIN_MAG_ATK or LuaParam[2] == ROLE_PROP32_MAX_MAG_ATK then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MagicAttacEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_MAG_ATK) then
                Property = LuaRet
            end
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MAG_ATK) then
                max_Property = LuaRet
                MagicAttacMax = max_Property
            end
            if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then
                Job = LuaRet
            end

            GUI:EditSetTextM(_GUIHandle, "" .. Property .. "-" .. max_Property)
        end
    end

    if LuaParam[2] == ROLE_PROP32_MIN_TAO_ATK or LuaParam[2] == ROLE_PROP32_MAX_TAO_ATK then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "DaoAttacEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MIN_TAO_ATK) then
                Property = LuaRet
            end
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_TAO_ATK) then
                max_Property = LuaRet
                DaoAttacMax = max_Property
            end
            if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then
                Job = LuaRet
            end

            GUI:EditSetTextM(_GUIHandle, "" .. Property .. "-" .. max_Property)
        end
    end

    if LuaParam[2] == ROLE_PROP32_MISS then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MissEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MISS) then
                Property = LuaRet
            end
            GUI:EditSetTextM(_GUIHandle, "" .. Property)
        end
    end

    if LuaParam[2] == ROLE_PROP32_HIT then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "HitEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_HIT) then
                Property = LuaRet
            end
            GUI:EditSetTextM(_GUIHandle, "" .. Property)
        end
    end

    if LuaParam[2] == ROLE_PROP32_BURST then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "ExtremAtcEdit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_BURST) then
                Property = LuaRet
            end
            GUI:EditSetTextM(_GUIHandle, "" .. Property)
        end
    end

    if LuaParam[2] == ROLE_PROP32_LUCK_CURSE then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "RoleLucky")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_LUCK_CURSE) then
                Property = LuaRet
            end
            GUI:EditSetTextM(_GUIHandle, "" .. Property)
        end
    end

    if LuaParam[2] == ROLE_PROP32_MOVE_SPEED_PCT then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "MOVE_SPEED_Edit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MOVE_SPEED_PCT) then
                Property = LuaRet
            end
            GUI:EditSetTextM(_GUIHandle, "+" .. Property .. "%")
        end
    end

    if LuaParam[2] == ROLE_PROP32_WEIGHT then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "WEIGHT_Edit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_WEIGHT) then
                Property = LuaRet
            end

            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_WEIGHT) then
                GUI:EditSetTextM(_GUIHandle, "" .. Property .. "/" .. LuaRet)
            end
        end
    end

    if LuaParam[2] == ROLE_PROP32_PK then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "PK_Edit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_PK) then
                GUI:EditSetTextM(_GUIHandle, "" .. LuaRet)
            end
        end
    end

    if LuaParam[2] == ROLE_PROP32_EQUIP_WEIGHT then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "EQUIP_WEIGHT_Edit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_EQUIP_WEIGHT) then
                Property = LuaRet
            end
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_EQUIP_WEIGHT) then
                GUI:EditSetTextM(_GUIHandle, "" .. Property .. "/" .. LuaRet)
            end
        end
    end
    if LuaParam[2] == ROLE_PROP32_ATTACK_SPEED_PCT then
        _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "ATK_SPEED_Edit")
        if _GUIHandle ~= 0 then
            local Property = 0
            if CL:GetPlayerSelfProperty32(ROLE_PROP32_ATTACK_SPEED_PCT) then
                Property = LuaRet
            end
            GUI:EditSetTextM(_GUIHandle, "+" .. Property .. "%")
        end
    end

    CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID)
    if LuaParam[1] == LuaRet then
        if LuaParam[2] == ROLE_PROP32_LEVEL then
            GameMainBar.updateExp(false)
        end
    end

end

function RoleEquiment.propDataChange64()
    if LuaParam[2] == ROLE_PROP64_EXP then
        GameMainBar.updateExp(true)
    end
end

function RoleEquiment.updateExp(flag)
    -- msg("RoleEquiment.updateExp 1")
    if CL:GetPlayerSelfProperty64(ROLE_PROP64_EXP) then
        -- msg("RoleEquiment.updateExp 2")
        local CurrExp = LuaRet
        if CL:GetSelfUpgradeExp() then
            -- msg("RoleEquiment.updateExp 3")
            local UpgradeExp = LuaRet
            -- if flag == true then
            -- msg("RoleEquiment.updateExp 31")
            -- msg("UpgradeExp = "..tostring(UpgradeExp))
            -- msg("CurrExp = "..tostring(CurrExp))
            --     if UpgradeExp < CurrExp then
            -- msg("RoleEquiment.updateExp 32")
            --         return  --玩家获得经验升级后，收到经验变化时间早于等级变化，导致获得当前等级错误
            --     end
            -- end
            --经验为64位大数字，使用接口进行四则运算
            -- msg("RoleEquiment.updateExp 4")
            local CurrExp100 = CL:Multiply(CurrExp, "10000")
            local percent = CL:Divided(CurrExp100, UpgradeExp)
            local fPercent = tonumber(percent) / 10000
            if fPercent > 1 then
                fPercent = 1
            end
            local _GUIHandle = GUI:WndFindChildM(RoleEquiment.WndHandle, "PlayerEXPNew")
            if _GUIHandle ~= 0 then
                -- msg("RoleEquiment.updateExp 5")
                GUI:WndSetHintWidth(_GUIHandle, 250)
                dbg("CurrExp100 = " .. tostring(CurrExp100))
                dbg("percent = " .. tostring(percent))
                dbg("fpercent = " .. tostring(fPercent))
                GUI:ImageSetDrawRect(_GUIHandle, 0, fPercent, 0, 1)
            end
        end
    end
end

function RoleEquiment.wndClose()
    RoleEquiment.Open = false
end

function RoleEquiment.ShowWeapon()
    local _Gender = 1
    if CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then
        _Gender = LuaRet
    end
    local site = LuaParam[4]
    if UI:Lua_GetPlayerSelfEquipData() then
        guid_tb = LuaRet
        local res_number = 0
        local Is_weap = 0
        for i = 1, #guid_tb do
            local item_handle = CL:GetItemTemplateHandleByGUID(guid_tb[i])
            if CL:GetItemTemplatePropByHandle(item_handle, ITEM_PROP_SUBTYPE) then
                if LuaRet == 4 then
                    RDItemCtrlSetGUIDataPropByGUID(RoleEquiment.WndHandle, "Equiment14", guid_tb[i])
                    if CL:GetItemTemplatePropByHandle(item_handle, ITEM_PROP_BIGICON) then
                        res_number = LuaRet
                        res_number = math.floor(tonumber(res_number) / 100000000)
                        dbg("1111\\\\\\\\\\\\res_numeber = " .. res_number)
                        --local offsetX = -37
                        --local offsetY = 112
                        if tonumber(res_number) == 19 then

                            local handle = GetWindow(RoleEquiment.WndHandle, "image0")
                            if handle ~= 0 then
                                GUI:WndSetPosM(handle, 147 + offsetX + 22, 59 + offsetY + 18)
                            end
                        else

                            local handle = GetWindow(RoleEquiment.WndHandle, "image0")
                            if handle ~= 0 then
                                GUI:WndSetPosM(handle, 168 + offsetX, 63 + offsetY)
                            end
                        end
                    end
                elseif LuaRet == 1 then
                    RDItemCtrlSetGUIDataPropByGUID(RoleEquiment.WndHandle, "Equiment13", guid_tb[i])
                    Is_weap = 1
                elseif LuaRet == 15 then
                    RDItemCtrlSetGUIDataPropByGUID(RoleEquiment.WndHandle, "Equiment16", guid_tb[i])
                end
            end
        end
        dbg("////Is_weap = " .. Is_weap)
        if Is_weap == 1 then
            local handle = GetWindow(RoleEquiment.WndHandle, "Equiment13")
            dbg("////res_numeber = " .. res_number)
            --local offsetX = -37
            --local offsetY = 110
            if tonumber(res_number) == 19 then
                if handle ~= 0 then
                    if _Gender == 1 then
                        GUI:ItemCtrlSetBigIconOffset(handle, 276 + offsetX + 5, 213 + offsetY + 5)
                    else
                        GUI:ItemCtrlSetBigIconOffset(handle, 280 + offsetX, 214 + offsetY + 3)
                    end
                end
            else
                if handle ~= 0 then
                    if _Gender == 1 then
                        GUI:ItemCtrlSetBigIconOffset(handle, 288 + offsetX, 209 + offsetY)
                    else
                        GUI:ItemCtrlSetBigIconOffset(handle, 297 + offsetX, 209 + offsetY)
                    end
                end
            end
        end
    end
end

function RoleEquiment.HideWeapon()
    if UI:Lua_GetPlayerSelfEquipData() then
        guid_tb = LuaRet
        local clothesnum = 0
        local weaponsnum = 0
        local shieldnum = 0
        for i = 1, #guid_tb do
            local item_handle = CL:GetItemTemplateHandleByGUID(guid_tb[i])
            if CL:GetItemTemplatePropByHandle(item_handle, ITEM_PROP_SUBTYPE) then
                if LuaRet == 4 then
                    clothesnum = 1
                elseif LuaRet == 1 then
                    weaponsnum = 1
                elseif LuaRet == 15 then
                    shieldnum = 1
                end
            end
        end
        if clothesnum == 0 then
            local handle = GUI:WndFindWindow(RoleEquiment.WndHandle, "Equimentclothes")
            if handle ~= 0 then
                GUI:ItemCtrlClearItemData(handle)
                local _Gender = 1
                if CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then
                    _Gender = LuaRet
                end
                if _Gender == 1 then
                    GUI:ItemCtrlSetDefaultImage(handle, 1890900006)
                else
                    GUI:ItemCtrlSetDefaultImage(handle, 1890900007)
                end
                local handle = GetWindow(RoleEquiment.WndHandle, "image0")
                if handle ~= 0 then
                    dbg("22222\\\\\\\\\\\\res_numeber = " .. clothesnum)
                    --GUI:WndSetPosM(handle, 148, 63)
                    GUI:WndSetPosM(handle, 168 + offsetX, 63 + offsetY)
                end
                local handle = GetWindow(RoleEquiment.WndHandle, "Equimentweapons")
                if handle ~= 0 then
                    if _Gender == 1 then
                        dbg("3333")
                        GUI:ItemCtrlSetBigIconOffset(handle, 266 - 37, 209 + 110 - 23)
                    else
                        dbg("4444")
                        GUI:ItemCtrlSetBigIconOffset(handle, 280 - 37, 207 + 110 - 25)
                    end
                end
            end
        end
        if weaponsnum == 0 then
            local handle = GUI:WndFindWindow(RoleEquiment.WndHandle, "Equimentweapons")
            if handle ~= 0 then
                GUI:ItemCtrlClearItemData(handle)
            end
        end
        if shieldnum == 0 then
            local handle = GUI:WndFindChildM(RoleEquiment.WndHandle, "Equimentshields")
            if handle ~= 0 then
                GUI:ItemCtrlClearItemData(handle)
            end
        end
    end
end

function RoleEquiment.burstharm_updata()
    local _GUIHandle = GUI:WndFindWindow(RoleEquiment.WndHandle, "burstharm")
    if _GUIHandle ~= 0 then
        local itemlist = {}
        if UI:Lua_GetPlayerSelfEquipData() then
            if type(LuaRet) == "number" then
                GUI:EditSetTextM(_GUIHandle, "0")
                return
            end
            itemlist = LuaRet
        end
        if #itemlist ~= 0 then
            for i = 1, #itemlist do
                if CL:GetItemEntityPropByGUID(itemlist[i], 4) then
                    local subtype = LuaRet
                    if subtype == 13 then
                        local Entity = CL:GetItemEntityHandleByGUID(itemlist[i])
                        local burstharm = CL:GetItemEntityCustomVarInt(Entity, "burstharm")
                        GUI:EditSetTextM(_GUIHandle, "" .. burstharm)
                        break
                    else
                        GUI:EditSetTextM(_GUIHandle, "0")
                    end
                end
            end
        end
    end
end

function RoleEquiment.onequipment()
    if not RoleEquiment.Open then
        return
    end
    RoleEquiment.ShowWeapon()
    local site = LuaParam[4]
    if site == SITE_AMULET then
        local _GUIHandle = GetWindow(nil, "RoleGUI,RoleEquiment")
        if _GUIHandle ~= 0 then
            RoleEquiment.burstharm_updata()
        end
    end
    CL:AddDelayTask(" RoleEquiment.SetItemBG()", 1, 1)
end

function RoleEquiment.offequipment()
    if not RoleEquiment.Open then
        return
    end
    RoleEquiment.HideWeapon()
    local site = LuaParam[4]
    if site == SITE_AMULET then
        local _GUIHandle = GetWindow(nil, "RoleGUI,RoleEquiment")
        if _GUIHandle ~= 0 then
            RoleEquiment.burstharm_updata()
        end
    end

    CL:AddDelayTask(" RoleEquiment.SetItemBG()", 1, 1)
end

function RoleEquiment.FashionShowChange(_Handle, _Param)
    local _ShowFashion = GUI:CheckBoxGetCheck(_Handle)
    CL:ShowFashion(_ShowFashion)
    local _ShowWeapFashion = GUI:CheckBoxGetCheck(_Handle)
    CL:ShowWeapFashion(_ShowWeapFashion)
end

RoleEquiment.mozhuangbf = {
    "RoleBg2",
    "timaged1",
    "timaged2",
    "timaged3",
    "timaged4",
    "timaged5",
    "timaged6",
    "timaged7",
    "timaged8",
    "timaged9",
    "timaged10",
    "timaged11",
    "timaged12",
    "timaged13",
    "timaged14",
    "timaged15",
    "timaged16",
    "Equiment38",
    "Equiment39",
    "Equiment40",
    "Equiment41",
    "Equiment42",
    "Equiment43",
    "Equiment44",
    "Equiment45",
    "mozhuangqh",
    "fanhui1"
}

RoleEquiment.shizt = {
    "RoleBg1",
    "Equiment17",
    "Equiment34",
    "ShowFashion",
    "ShowWeapFashion",
    "shizhuangj",
    "fanhui"
}

RoleEquiment.bit = {
    "WingShow",
    "Equiment14",
    "Equiment13",
    "Equiment16",
}
RoleEquiment.shengxiao = {
    "shengxiaon",
    "sxguanbi",
    "imaged1",
    "imaged2",
    "imaged3",
    "imaged4",
    "imaged5",
    "imaged6",
    "imaged7",
    "imaged8",
    "imaged9",
    "imaged10",
    "imaged11",
    "imaged12",
    "imaged13",
    "ricd1",
    "ricd2",
    "ricd3",
    "ricd4",
    "ricd5",
    "ricd6",
    "ricd7",
    "ricd8",
    "ricd9",
    "ricd10",
    "ricd11",
    "ricd12",
    "Equiment24",
    "Equiment25",
    "Equiment26",
    "Equiment27",
    "Equiment28",
    "Equiment29",
    "Equiment30",
    "Equiment31",
    "Equiment32",
    "Equiment33",
    "Equiment36",
    "Equiment35",
}

function RoleEquiment.sxguanbi()
    _Parent = RoleEquiment.WndHandle
    for i = 1, #RoleEquiment.shengxiao do
        _GUIHandle = GUI:WndFindWindow(_Parent, RoleEquiment.shengxiao[i])
        if _GUIHandle ~= 0 then
            GUI:WndSetVisible(_GUIHandle, false)
        end
    end
end

function RoleEquiment.szfh()

    _Parent = RoleEquiment.WndHandle
    for i = 1, #RoleEquiment.shizt do
        _GUIHandle = GUI:WndFindWindow(_Parent, RoleEquiment.shizt[i])
        if _GUIHandle ~= 0 then
            GUI:WndSetVisible(_GUIHandle, false)
        end
    end

    for i = 1, #RoleEquiment.bit do
        _GUIHandle = GUI:WndFindWindow(_Parent, RoleEquiment.bit[i])
        if _GUIHandle ~= 0 then
            GUI:WndSetVisible(_GUIHandle, true)
        end
    end
end

function RoleEquiment.sjxsa()
    _Parent = RoleEquiment.WndHandle
    for i = 1, #RoleEquiment.shizt do
        _GUIHandle = GUI:WndFindWindow(_Parent, RoleEquiment.shizt[i])
        if _GUIHandle ~= 0 then
            GUI:WndSetVisible(_GUIHandle, true)
        end
    end

    for i = 1, #RoleEquiment.bit do
        _GUIHandle = GUI:WndFindWindow(_Parent, RoleEquiment.bit[i])
        if _GUIHandle ~= 0 then
            GUI:WndSetVisible(_GUIHandle, false)
        end
    end
end

function RoleEquiment.sjxsaaa()
    UI:Lua_SubmitForm("符文商人", "main", "");
end

function RoleEquiment.dkshengxiao()
    UI:Lua_SubmitForm("转生", "main", "");
end

function RoleEquiment.wuxing()
    UI:Lua_SubmitForm("五行修炼表单", "show", "");
end
function RoleEquiment.shenji()
    UI:Lua_SubmitForm("技能强化", "main", "");
end

function RoleEquiment.sjza()
    UI:Lua_SubmitForm("时装架", "show", "");
end
function RoleEquiment.baoshi()
    UI:Lua_SubmitForm("宝石系统", "show", "");
end
function RoleEquiment.zhuzao()
    UI:Lua_SubmitForm("冰雪神器", "main", "");
end

function RoleEquiment.JingMai()
    UI:Lua_SubmitForm("经脉进阶表单", "main", "经脉进阶");
end

function RoleEquiment.XinFa()
    UI:Lua_SubmitForm("心法修炼表单", "main", "心法修炼");
end

function RoleEquiment.mzqh()
    UI:Lua_SubmitForm("魔装进阶", "show", "");
end
RoleEquiment.main()
--[[
    处理服务器下发要求客户端显示一个tips的消息
]]
local Handler = {}

local proto = require "scripts/proto/proto"
local logger = require "lobby/lcore/logger"

function Handler.onMsg(msgData, room)
    logger.debug(" room show tips msg, room id", room.id)

    local msgRoomShowTips = proto.decodeMessage("pokerface.MsgRoomShowTips", msgData)

    if msgRoomShowTips.tipCode == proto.pokerface.TipCode.TCNone then
        logger.debug("<<<" .. msgRoomShowTips.tips .. ">>>")
    end
end

return Handler

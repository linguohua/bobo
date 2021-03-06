--[[
    处理服务器下发的一手牌结束的消息
    一手牌结束后分数结算
]]
local Handler = {}

local proto = require "scripts/proto/proto"
local logger = require "lobby/lcore/logger"

function Handler.onMsg(msgData, room)
    logger.debug("llwant hand over msg")
    --TODO:关闭倒计时
    -- room:stopDiscardCountdown()
    -- room:hideDiscardedTips()

    local msgHandOver = proto.decodeMessage("pokerface.MsgHandOver", msgData)

    --把结果保存到 room
    room.msgHandOver = msgHandOver
    local playerCardLists = msgHandOver.playerCardLists
    for _, v in ipairs(playerCardLists) do
        local playerTileList = v
        local chairID = v.chairID
        local player = room:getPlayerByChairID(chairID)

        --填充手牌列表,自身手牌列表重置
        --其他玩家之前并没有手牌列表，因此需要新建一个
        player.cardsOnHand = {}
        player:addHandTiles(playerTileList.cardsOnHand)

        --player.playerTileList = playerTileList
    end

    --TODO:重置操作面板，重置等待玩家等等
    room.roomView:clearWaitingPlayer()
    --隐藏操作按钮
    local myPlayer = room.myPlayer
    myPlayer.playerView:hideOperationButtons()

    --所有人的手牌，都排一下序
    --重新显示各个玩家的手牌，全部明牌显示
    local players = room.players
    for _, p in pairs(players) do
        p.lastTile = p.cardsOnHand[#p.cardsOnHand] --保存最后一张牌，可能是胡牌。。。用于最后结算显示
        p:sortHands()
        --摊开手牌
        p:hand2Exposed()
    end

    Handler.onHandOver(msgHandOver, room)
end

function Handler.onHandOver(msgHandOver, room)
    if msgHandOver.endType ~= proto.prunfast.HandOverType.enumHandOverType_None then
        -- local myself = room.myPlayer
        for _, score in ipairs(msgHandOver.scores.playerScores) do
            local player = room:getPlayerByChairID(score.targetChairID)
            -- if player == myself then
            --     win = score.score >= 0
            -- end
            player.score = score
        end
    end
    --显示手牌输赢结果
    room:loadHandResultView()
end
return Handler

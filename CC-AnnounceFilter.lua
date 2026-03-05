--[[
CC-AnnounceFilter
Filter out the BG/Arena system messages from chat frames.
]]

-- chat filter for queue announcer system messages.
local function BgQueueAnnouncerFilter(_, _, msg)
    if type(msg) ~= "string" then
        return false
    end

    return msg:find("%[BG Queue Announcer%]:")
        or msg:find("%[Arena Queue Announcer%]:")
        or msg:find("%[Arena Queue%]:")
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", BgQueueAnnouncerFilter)

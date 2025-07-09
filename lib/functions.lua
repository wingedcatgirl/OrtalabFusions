function ORTAFUSE.say(message, level)
    message = message or "???"
    level = level or "DEBUG"
    while #level < 5 do
        level = level.." "
    end
    sendMessageToConsole(level, "Fusion Virtues", message)
end
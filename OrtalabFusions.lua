ORTAFUSE = ORTAFUSE or {}
ORTAFUSE.config = SMODS.current_mod.config

local files = {
    lib = {
        { name = "atlases" },
        { name = "configui" },
        { name = "functions" },
    },
    jokers = {
        { name = "clubzombie" },
        { name = "diamonddemon" },
        { name = "heartmimic" },
        { name = "spadeslime" },
    },
}

for folder, list in pairs(files) do
    for _, data in ipairs(list) do
        local load = not data.dummy
        local name = data.name
        if load then
            sendTraceMessage("Loading file: "..folder..'/'..name..'.lua', "Fusion Virtues")
            if not pcall(SMODS.load_file(folder..'/'..name..'.lua')) then
                NFS.write(SMODS.current_mod.path .. '.lovelyignore', '')
                error("Fusion Virtues: File '"..folder.."/"..name..".lua' failed to load! Please make sure the file structure is not nested. The mod will be automatically disabled on restart.")
            end
        else
            sendTraceMessage("Skipping file: "..folder..'/'..name..'.lua', "Fusion Virtues")
        end
    end
end
--
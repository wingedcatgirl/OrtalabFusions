G.FUNCS.ortafuse_optcycle = function(args)
    local refval = args.cycle_config.ref_value
    ORTAFUSE.config[refval].current_option = args.cycle_config.current_option
    ORTAFUSE.config[refval].option_value = args.to_val
end

SMODS.current_mod.config_tab = function()
    return {n = G.UIT.ROOT, config = {r = 0.1, minw = 8, minh = 6, align = "tl", padding = 0.2, colour = G.C.BLACK}, nodes = {
        {n = G.UIT.C, config = {minw=1, minh=1, align = "tl", colour = G.C.CLEAR, padding = 0.15}, nodes = {
        create_toggle({
            label = "Flavor text",
            ref_table = ORTAFUSE.config,
            ref_value = 'flavor_text',
        }),
        }}
    }}
end
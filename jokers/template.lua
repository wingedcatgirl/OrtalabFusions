--FusionJokers.fusions:add_fusion("j_ortalab_⚠️⚠️⚠️", nil, false, "j_ortalab_⚠️⚠️⚠️", nil, false, "j_ortafuse_⚠️⚠️⚠️", 12)

SMODS.Joker {
    key = "newjoker",
    name = "New Joker",
    atlas = 'ortafusejokers',
    pos = {
        x = 4,
        y = 2
    },
    rarity = 'fusion',
    cost = 12,
    unlocked = true,
    discovered = false,
    eternal_compat = true,
    perishable_compat = true,
    blueprint_compat = true,
    config = {
        extra = {
            mult = 5
        }
    },
    loc_vars = function(self, info_queue, card)
        local key = self.key
        --[[ Remove all this if you don't feel like writing optional flavor text
        if SMODS.current_mod.config.flavor_text then
            key = self.key.."_flavor"
        end
        ]]
        return {
            key = key,
            vars = {card.ability.extra.mult}
        }
    end,
    calculate = function(self, card, context)
        -- Calculation goes here
    end
}

-- See localization/en-us.lua to create joker text
FusionJokers.fusions:add_fusion("j_ortalab_generous", nil, false, "j_ortalab_fools_gold", nil, false, "j_ortafuse_diamonddemon", 12)

SMODS.Joker {
    key = "diamonddemon",
    name = "Diamond Demon",
    atlas = 'ortafusejokers',
    pos = {
        x = 1,
        y = 0
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
            suit = "Diamonds",
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
            vars = {
				localize(
					card.ability.extra.suit,
					"suits_plural"
				),
				colours = {
					G.C.SUITS[card.ability.extra.suit],
				},
            }
        }
    end,
    calculate = function(self, card, context)
        -- Calculation goes here
    end
}

-- See localization/en-us.lua to create joker text
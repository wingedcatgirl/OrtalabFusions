FusionJokers.fusions:add_fusion("j_ortalab_chastful", nil, false, "j_ortalab_amber_mosquito", nil, false, "j_ortafuse_heartmimic", 12)

SMODS.Joker {
    key = "heartmimic",
    name = "Heart Mimic",
    atlas = 'jokers',
    pos = {
        x = 0,
        y = 0
    },
    rarity = 'fusion',
    cost = 12,
    unlocked = true,
    discovered = false,
    eternal_compat = true,
    perishable_compat = true,
    blueprint_compat = true,
    demicoloncompat = true,
    config = {
        extra = {
            suit = "Hearts",
            xmult = 2,
            odds = 2
        }
    },
    loc_vars = function(self, info_queue, card)
        local key = self.key
        if ORTAFUSE.config.flavor_text then
            key = self.key.."_flavor"
        end
        return {
            key = key,
            vars = {
				localize(
					card.ability.extra.suit,
					"suits_singular"
				),
                G.GAME.probabilities.normal or 1,
                card.ability.extra.odds,
                card.ability.extra.xmult,
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
        if (context.cardarea == G.play and context.individual and context.other_card:is_suit(card.ability.extra.suit)) or context.forcetrigger then
            --ORTAFUSE.say("Heart played")
            for i=1,#G.hand.cards do
                if G.hand.cards[i]:is_suit(card.ability.extra.suit) and ((pseudorandom(pseudoseed("heart_mimic")) > G.GAME.probabilities.normal/card.ability.extra.odds) or context.forcetrigger) then
                    SMODS.calculate_effect(
                        {
                            xmult = card.ability.extra.xmult,
                            message_card = card,
                            juice_card = G.hand.cards[i]
                        },
                        card
                    )
                end
            end
        end
    end
}
SMODS.Joker{
	key = 'money_shots',
	atlas = 'roffers',
	rarity = 1,
	blueprint_compat = true,
	pos = { x = 2, y = 0 },
	loc_vars = function(self,info_queue,card)
        info_queue[#info_queue+1] = G.P_CENTERS['c_hermit']
        info_queue[#info_queue+1] = G.P_CENTERS['m_lucky']
		return {}
	end,
	calculate = function(self,card,context)
		if context.individual and context.cardarea == G.play and context.other_card.money_shot then -- money_shot bool is added via lovely patch (see lovely/moneyshots_lucky_patch.toml)
            G.E_MANAGER:add_event(Event({
                trigger = after,
                delay = 0.5,
                func = function ()
                    if #G.consumeables.cards < G.consumeables.config.card_limit then
                        SMODS.add_card({set = 'Tarot', key = 'c_hermit'})
                    end
                    return true
                end
            }))
        end
	end
}
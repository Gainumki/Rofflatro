SMODS.Joker{
   key = 'wellmet',
   atlas = 'roffers',
	blueprint_compat = true,
	eternal_compat = true,
	pos = { x = 2, y = 1 }, --change if needed
   rarity = 2,
   cost = 6,
   config = {
      extra = { xmult = 2, hold = 0, check = 0, flavortext = "Well met! Well met! Well met! ", marqueetimer = 0 }
   },
   loc_vars = function(self, info_queue, card)
      return {
         vars = { card.ability.extra.xmult, card.ability.extra.hold },
         main_end = { 
            {
               n = G.UIT.C,
               config = {align = "bm", minh = 0.3},
               nodes = {
                  {
                     n = G.UIT.O,
                     config = {
                        object = DynaText({
                           string = {{ref_table = card.ability.extra, ref_value = "flavortext"}},
                           colours = {G.C.UI.TEXT_INACTIVE},
                           silent = true,
                           bump = true,
                           scale = 0.256 -- default 0.32 -> mult by 0.8
                        })
                     }
                  }
               }
            }
         }
      }
   end,
   calculate = function(self, card, context)
      if context.individual and context.cardarea == G.play and not context.blueprint then
         for k, v in pairs(G.playing_cards) do
            if v.base.times_played > card.ability.extra.hold then
               card.ability.extra.hold = v.base.times_played
            end
         end
         return {
            message = tostring(context.other_card.base.times_played),
            colour = G.C.RED,
         }
      end
      if context.individual and not context.end_of_round and context.cardarea == G.hand then
         if context.other_card.base.times_played == card.ability.extra.hold then
            if context.other_card.debuff then
               return {
                  message = localize('k_debuffed'),
                  colour = G.C.RED,
                  card = context.other_card,
               } else
	       if card.ability.extra.check == 0 then
	          card.ability.extra.check = 1
                  return {
                     x_mult = card.ability.extra.xmult,
                     card = context.other_card,
                     message = 'Well Met!'
                  }
	       end
            end
         end
      end
      if context.after then
      	 card.ability.extra.check = 0
      end
   end,
   update = function(self, card, dt)
       card.ability.extra.marqueetimer = card.ability.extra.marqueetimer + G.real_dt
       if card.ability.extra.marqueetimer > 0.2 then
           card.ability.extra.marqueetimer = 0
           card.ability.extra.flavortext = ROFF.funcs.marquee(card.ability.extra.flavortext)
       end
   end
}

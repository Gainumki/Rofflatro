return {
    descriptions = {
        Joker = {
            j_roff_typeA = {
                name = 'Type A Joker',
                text = {
                    'Gains {X:mult,C:white}X#1#{} Mult if played',
                    'hand is a {C:attention}#3#{}',
                    'Resets when playing a {C:attention}Flush{} or lesser',
                    '{s:0.8}Hand changes every round',
                    '{C:inactive}(Currently {}{X:mult,C:white}X#2#{}{C:inactive} Mult){}',
                    '{s:0.8,C:inactive,E:2}Streamer! Play the #3#! {}{s:0.8,C:inactive,E:1}STREAMER!!!{}'
                }
            },
            j_roff_jackin_it = {
                name = 'Jackin\' It',
                text = {
                    'This Joker gains {C:mult}+#1#{} Mult',
                    'for every scored {C:attention}Jack{}',
                    '{C:inactive}(Currently {}{C:mult}+#2#{} {C:inactive}Mult){}',
                    '{s:0.8,C:inactive,E:2}On stream? How inappropiate!'
                }
            },
            j_roff_money_shots = {
                name = 'Money Shots',
                text = {
                    "Creates {C:attention}The Hermit{} when",
                    "earning money from a",
                    "{C:attention}Lucky Card{}",
                    "{C:inactive}(Must have room)",
                    "{s:0.8,C:inactive,E:1}Hoooooolyyyyyy..."
                }
            },
            j_roff_benus = {
                name = 'Benus',
                text = {
                    "Earn {C:money}$#1#{} if played hand",
                    "contains {C:attention}Three of a Kind{}",
                    "{C:money}-$#2#{} for every hand that",
                    "doesn't contain {C:attention}Three of a Kind{}",
                    "{C:inactive,s:0.8,E:2}What did he just say?!"
                }
            },
            j_roff_primes = {
                name = 'Thanks For The Primes',
                text = {
                    "This Joker gains {C:chips}+#1#{} Chips",
                    "if hand contains {C:attention}#3#{} or more",
                    "scoring {C:attention}2s{}, {C:attention}3s{}, {C:attention}5s{} and/or {C:attention}7s{}",
                    "{C:inactive}(Currently{} {C:chips}+#2#{} {C:inactive}Chips){}",
                    "{C:inactive,s:0.8,E:2}Shoutouts to {}{C:inactive,s:0.8,E:1}bajabussyblaster!"
                }
            },
            j_roff_4k = {
                name = 'Caught In 4K',
                text = {
                    "{C:chips}+#1#{} Chips for each",
                    "{C:attention}retrigger{} on first",
                    "scored {C:attention}face{} card.",
                    "{C:inactive,s:0.8,E:2}Every video is the same."
                }
            },
            j_roff_looksinside = {
                name = 'Looks Inside',
                text = {
                    "After {C:attention}#1#{} rounds {C:inactive}[#2#/#1#]{},",
                    "sell this Joker to create",
                    "{C:attention}Photograph{} and {C:attention}Hanging Chad{}",
                    "{C:inactive}(Must have room)",
                    "{C:inactive,s:0.8,E:2}He can't keep getting away with this!"
                }
            },
            j_roff_wellmet = {
                name = 'Well Met',
                text = {
                    "First card held in hand",
                    "with {C:attention}Favorite{} sticker",
                    "gives {X:mult,C:white}X#1#{} Mult" -- flavor text is done via gui dynatext shenanigans
                }
            }
        },
    Back = 
    {
        b_roff_streamerluck = {
            name = "Streamer Deck",
            text = {
                "{C:attention}Non-common{} Jokers appear",
                "{C:attention}4x{} more often",
                "{E:1,C:inactive}(Is this run seeded?)",
            },
        },
    },
},
    misc = {
        dictionary = {
            k_roff_wellmet_flavor = 'Well Met! Well Met! Well Met! '
        }
    }
}
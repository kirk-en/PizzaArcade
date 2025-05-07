--- STEAMODDED HEADER
--- MOD_NAME: Pizza Arcade
--- MOD_ID: PizzaArcade
--- MOD_AUTHOR: [Kirk Enbysk, Bryce Doerksen]
--- MOD_DESCRIPTION: A vanilla-style Joker expansion that delivers a greasy slice of 90s pizza arcade nostalgia. Expect tokens, tickets, animatronic eeriness, and a possible appearence from a legally distinct rodent. Jokers were all coded on a CRT monitor. Play responsibly—no tokens required.
--- PREFIX: pizza
----------------------------------------------
------------MOD CODE -------------------------

SMODS.Atlas {
  key = "modicon",
  path = "mod_icon.png",
  px = 34,
  py = 34,
}

SMODS.Atlas{
  key = "Jokers",
  path = 'PizzaArcade.png',
  px = 71,
  py = 95,
}

SMODS.Joker{
  key = 'bryce',
  atlas = 'Jokers',
  pos = {x = 0, y = 0},
  unlocked = true,
  discovered = true,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 1,
  cost = 7,
  config = {extra = {mult = 13}},
  loc_txt = {
    name = 'bryce the D!',
    text = {
      '{C:green}+13{} mult',
      'An ok joker for newbies.'
    }
  },
  calculate = function (self,card,context )
    if context.joker_main then
      return {
        mult = card.ability.extra.mult
      }
    end
  end
}

SMODS.Joker{
  key = 'slug',
  atlas = 'Jokers',
  pos = {x = 2, y = 0},
  unlocked = true,
  discovered = true,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  rarity = 2,
  cost = 1,
  config = {extra = {mult = 20}},
  loc_txt = {
    name = 'bryce the D!',
    text = {
      '{C:green}+20{} mult',
      '1 in 5 chance of losing remaining hands this round'
    }
  },
  calculate = function (self,card,context )
    if context.joker_main then
      return {
        mult = card.ability.extra.mult
      }
    end
    if context.after then
      -- if math.random(5) == 1 then  -- 1 in 5 chance
      -- card:destroy()
      G.GAME.hands['Four of a Kind'].mult = 0
      print ('this is hands in round:', G.GAME.hands['Four of a Kind'])
    -- end
  end
end
}

----------------------------------------------
------------MOD CODE END----------------------
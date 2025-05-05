--- STEAMODDED HEADER
--- MOD_NAME: Pizza Arcade
--- MOD_ID: PizzaArcade
--- MOD_AUTHOR: [Kirk, Bryce]
--- MOD_DESCRIPTION: An example mod on how to create Jokers.
--- PREFIX: pizza
----------------------------------------------
------------MOD CODE -------------------------

SMODS.Atlas{
  key = "Jokers",
  path = 'PizzaArcade.png',
  px = 71,
  py = 95,
}

SMODS.Joker{
  key = 'bryce',
  loc_txt = {
    name = 'bryce the D!',
    text = {
      '{C:attention}+12{} mult',
      'An ok joker for newbies.'
    }
  },
  atlas = 'Jokers',
  pos = {x = 0, y = 0}
}

----------------------------------------------
------------MOD CODE END----------------------
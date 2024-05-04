--- STEAMODDED HEADER
--- MOD_NAME: The Everdeck
--- MOD_ID: TheEverdeck
--- MOD_AUTHOR: [DoggyDogWhirl]
--- MOD_DESCRIPTION: This mod changes the normal deck to the Everdeck, a 120-card deck by efofecks.

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.TheEverdeck()
   sendDebugMessage("The Everdeck")
   local this_mod = SMODS.findModByID('TheEverdeck')

   -- I assume using "cards_1" overwrites the existing card textures.
   -- Will it be a problem that I have more cards than usual?
   local sprite_cards_1 = SMODS.Sprite:new('cards_1', this_mod.path, '8BitDeck.png', 71, 95, 'asset_atli')
   local sprite_cards_2 = SMODS.Sprite:new('cards_2', this_mod.path, '8BitDeck.png', 71, 95, 'asset_atli')
   local sprite_ui_1 = SMODS.Sprite:new('everdeck_ui_1', this_mod.path, 'ui_assets.png', 18, 18, 'asset_atli')
   local sprite_ui_2 = SMODS.Sprite:new('everdeck_ui_2', this_mod.path, 'ui_assets.png', 18, 18, 'asset_atli')

   sprite_cards_1:register()
   sprite_cards_2:register()
   sprite_ui_1:register()
   sprite_ui_2:register()


   SMODS.Card.new_suit('Coins', 'cards_1', 'cards_2', { y = 4 }, 'everdeck_ui_1', 'everdeck_ui_2',
       { x = 0, y = 0 }, 'ffa300', 'ffa300')
   SMODS.Card.new_suit('Moons', 'cards_1', 'cards_2', { y = 5 }, 'everdeck_ui_1', 'everdeck_ui_2',
       { x = 1, y = 0 }, '29adff', '29adff')
   SMODS.Card.new_suit('Crowns', 'cards_1', 'cards_2', { y = 6 }, 'everdeck_ui_1', 'everdeck_ui_2',
       { x = 2, y = 0 }, 'fe5f55', 'fe5f55')
   SMODS.Card.new_suit('Stars', 'cards_1', 'cards_2', { y = 7 }, 'everdeck_ui_1', 'everdeck_ui_2',
       { x = 3, y = 0 }, '374649', '374649')

   -- I'd like the 0s and 1s to be on the left
   -- but that would mean changing the existing ranks's positions...
   -- Hold on.. the same is true for the suits' order too!!
   -- crap
   SMODS.Card:new_rank('0', 0, 'cards_1', 'cards_2', { x = 13 }, {
        Hearts   = { y = 0 },
        Clubs    = { y = 1 },
        Diamonds = { y = 2 },
        Spades   = { y = 3 },
        Coins    = { y = 4 },
        Moons    = { y = 5 },
        Crowns   = { y = 6 },
        Stars    = { y = 7 },
   }, {
        next = {'1'}
   } )
   SMODS.Card:new_rank('1', 1, 'cards_1', 'cards_2', { x = 14 }, {
        Hearts   = { y = 0 },
        Clubs    = { y = 1 },
        Diamonds = { y = 2 },
        Spades   = { y = 3 },
        Coins    = { y = 4 },
        Moons    = { y = 5 },
        Crowns   = { y = 6 },
        Stars    = { y = 7 },
   }, {
        next = {'2'}
   } )

----------------------------------------------
------------MOD CODE END----------------------

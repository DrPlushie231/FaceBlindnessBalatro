--- STEAMODDED HEADER
--- MOD_NAME: Face Blindness
--- MOD_ID: FaceBlindness
--- PREFIX: faceblindness
--- MOD_AUTHOR: [DrPlushie231]
--- MOD_DESCRIPTION: Balatro's blindness mod. All cards are hidden and you don't get descriptions.
--- VERSION: 1.0.0
--- DEPENDENCIES: [malverk]
----------------------------------------------
------------MOD CODE -------------------------

-- shamelessly copied from paperback (great mod go check it out)
FB_UTIL = {}

SMODS.load_file("utilities/ui.lua")()
SMODS.load_file("config.lua")

FB_UTIL.config = SMODS.current_mod.config

FB_UTIL.hide_ui = function()
    if FB_UTIL.config.hide_descriptions then
        return true
    end
end

-- malverk code
AltTexture({
  key = 'hidden_jokers',
  set = 'Joker',
  path = 'hiddenjokers.png',
  loc_txt = {"Hidden Jokers"},
  name = 'Hidden Jokers'
})

AltTexture({
  key = 'hidden_tarots',
  set = 'Tarot',
  path = 'hiddentarots.png',
  loc_txt = {"Hidden Tarots"},
  name = 'Hidden Tarots'
})

AltTexture({
  key = 'hidden_spectrals',
  set = 'Spectral',
  path = 'hiddentarots.png',
  loc_txt = {"Hidden Spectrals"},
  name = 'Hidden Spectrals'
})

AltTexture({
  key = 'hidden_planets',
  set = 'Planet',
  path = 'hiddentarots.png',
  loc_txt = {"Hidden Planets"},
  name = 'Hidden Planets'
})

AltTexture({
  key = 'hidden_seals',
  set = 'Seal',
  path = 'hiddenenhancers.png',
  loc_txt = {"Hidden Seals"},
  name = 'Hidden Seals'
})

AltTexture({
  key = 'hidden_vouchers',
  set = 'Voucher',
  path = 'hiddenvouchers.png',
  loc_txt = {"Hidden Vouchers"},
  name = 'Hidden Vouchers'
})

AltTexture({
  key = 'hidden_boosters',
  set = 'Booster',
  path = 'hiddenboosters.png',
  loc_txt = {"Hidden Boosters"},
  name = 'Hidden Boosters'
})


TexturePack({
  key = 'hiddencards',
  textures = {
    'faceblindness_hidden_jokers',
    'faceblindness_hidden_tarots',
    'faceblindness_hidden_spectrals',
    'faceblindness_hidden_planets',
    'faceblindness_hidden_seals',
    'faceblindness_hidden_vouchers',
    'faceblindness_hidden_boosters'
  },
  loc_txt = {
    name = 'Hidden Cards',
    text = {' '}
  }

})

-- mod icon
if SMODS and SMODS.current_mod then
  	SMODS.Atlas({
		key = "modicon",
		path = "icon.png",
		px = 32,
		py = 32,
	})
end
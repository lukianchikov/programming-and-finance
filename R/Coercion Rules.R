cards = c("Blue-Eyes White Dragon", "Exodius", "The Winged Dragon of Ra", "Raigeki", 
           "Slifer the Sky Dragon", "Obelisk the Tormentor", "Black Luster Soldier", 
           "5-Headed Dragon", "Exodia the Forbidden One", "Dragon Master Knight")
atk = c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)
yugioh = c(cards, atk)

monster = c(T, T, T, F, T, T, T, T, T, T)
yugioh = c(yugioh, monster)
typeof(yugioh)
print(yugioh) 

coerce.check = c(atk, monster)
coerce.check
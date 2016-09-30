doubleSmallNumber x = if x > 100
                         then x
                         else x * 2
doubleUs x y = x * 2 + y * 2
doubleMe x = x + x
conanO'Brien = "It's a-me, Conan O'Brien!"
removeNouUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

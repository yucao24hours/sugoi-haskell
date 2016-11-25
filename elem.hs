elem' :: (Eq a) => a -> Bool
elem' a [] = False
elem' a (x:xs)
  | a == x
  | otherwise = a `elem`' xs

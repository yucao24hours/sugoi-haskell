bmiTell :: Double -> String
bmiTell bmi
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal. \
                   \ Pffft, I bet you're ugly!"
  | bmi <= 30.0 = "You're fat! Lose your weight, fatty!"
  | otherwise   = "You're a whale, conguratulations!"

bmiTell' :: Double -> Double -> String
bmiTell' weight height
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal. \
                   \ Pffft, I bet you're ugly!"
  | bmi <= 30.0 = "You're fat! Lose your weight, fatty!"
  | otherwise   = "You're a whale, conguratulations!"
  where bmi = weight / height ^ 2

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where bmi weight height = weight / height ^ 2

calcBmis' :: [(Double, Double)] -> [Double]
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

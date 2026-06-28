-- training guards
hailstone :: Integer -> Integer
hailstone n
  | even n        = n `div` 2
  | otherwise     = 3 * n + 1

fact :: Integer -> Integer
fact 1 = 1
fact n = n * fact (n -1)

-- pattern matching
sumPair :: (Int, Int) -> Int
sumPair (x, y) = x + y

main :: IO ()
main = do
    print $ fact $ 4  -- return 24
    print $ hailstone 16  --return 8
    print $ sumPair (4, 3) --return 7 

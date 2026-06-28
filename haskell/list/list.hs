listC :: [Integer] -> Integer
listC [] = 0
listC (x:xs) =  

main :: IO()
main = do
    print(sum( map(3*) [1..10] ))
    print(listC [1, 2, 4])

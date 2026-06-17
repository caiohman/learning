main :: IO()
main = do
   x <- readFile "hello.hs"
   print(length(lines x))      

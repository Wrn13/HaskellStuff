main :: IO()

main = do
    input <- getLine
    putStrLn (maximum input)

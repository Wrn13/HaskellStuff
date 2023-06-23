import Data.Char
import Data.List
import CreateArray

main :: IO()
getMaxIndexPair :: [Int] -> (Int,Int)
indexArr :: [Int] -> [(Int,Int)]

indexArr inputArr = zip inputArr [0..]

getMaxIndexPair inputArr =head (filter (\(e,_)-> e==maximum inputArr) (zip inputArr [0..]))

main = do
    putStrLn "Enter list of whitespace separated numbers:"
    input <- getLine
    let inputArray = createArray input
    let (maximumValue, maximumIndex) = getMaxIndexPair inputArray
    putStrLn ("The maximum value is: "++ show maximumValue ++ " and the index of the maximum value is: " ++ show maximumIndex)


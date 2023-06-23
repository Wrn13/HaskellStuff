module CreateArray where
import Data.Char
import Data.List

createArray ::  String -> [Int]
createArray input = map read (words input)

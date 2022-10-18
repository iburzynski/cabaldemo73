module Foo (greetUser, getLuckyNumber, testMap) where

import System.Random ( randomRIO )
import qualified Data.Map as M

greetUser :: IO String
greetUser = do
  putStrLn "Enter your first name:"
  first <- getLine
  putStrLn "Enter your last name:"
  last <- getLine
  pure $ "Bonjour, " ++ first ++ " " ++ last ++ "!"

getLuckyNumber :: IO Int
getLuckyNumber = randomRIO (1, 100)

testMap :: M.Map Int Char
testMap = M.fromList $ zip [1 .. 26] ['a' .. 'z']
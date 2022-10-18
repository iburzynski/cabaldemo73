module Main where

import Types
import Foo (greetUser, getLuckyNumber, testMap)

main :: IO ()
main = do
  greeting <- greetUser
  putStrLn greeting
  putStr "Your lucky number is "
  num <- getLuckyNumber
  print num
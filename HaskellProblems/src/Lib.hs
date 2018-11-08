module Lib
    ( myLast
    ) where

myLast :: [a] -> Maybe a
myLast []       =   Nothing
myLast (x:[])   =   Just x
myLast (_:xs)   =   myLast xs


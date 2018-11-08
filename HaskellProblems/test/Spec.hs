{-# LANGUAGE StandaloneDeriving #-}

module Main where

import Test.HUnit
import Test.Framework as TF (defaultMain, testGroup, Test)
import Test.Framework.Providers.HUnit (testCase)
import Test.Framework.Providers.QuickCheck2 (testProperty)

import Lib

main = defaultMain tests

emptyList = [] :: [Int]

tests :: [TF.Test]
tests = [testGroup "Test myLast" [
            testCase  "Test empty list" $ (myLast emptyList) @?= Nothing,
            testCase  "Test single element" $ (myLast [2]) @?= Just 2,
            testCase  "Test multiple elements" $ (myLast [2, 3, 4]) @?= Just 4,
            testCase  "Test char list" $ (myLast ['a', 'b', 'c']) @?= Just 'c'
          ]
        ]
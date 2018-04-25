{-# LANGUAGE TemplateHaskell #-}
module Main where

import           Control.Monad (void)
import           Hedgehog
import qualified Hedgehog.Gen as Gen
import qualified Hedgehog.Range as Range
--import           Ta

prop_reverse :: Property
prop_reverse =
  property $ do
    xs <- forAll $ Gen.list (Range.linear 0 100) Gen.alpha
    reverse (reverse xs) === xs

tests :: IO Bool
tests =
  checkParallel $$(discover)

main :: IO ()
main =
  void tests

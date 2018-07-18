
module Main where

import Test.Hspec

import qualified HigherKind
import qualified ObjectWithSingleFieldNoTagSingleConstructors
import qualified ObjectWithSingleFieldTagSingleConstructors
import qualified TaggedObjectNoTagSingleConstructors
import qualified TaggedObjectTagSingleConstructors
import qualified TwoElemArrayNoTagSingleConstructors
import qualified TwoElemArrayTagSingleConstructors
import qualified Untagged

main = hspec $ do
  ObjectWithSingleFieldTagSingleConstructors.tests
  ObjectWithSingleFieldNoTagSingleConstructors.tests
  TaggedObjectTagSingleConstructors.tests
  TaggedObjectNoTagSingleConstructors.tests
  TwoElemArrayTagSingleConstructors.tests
  TwoElemArrayNoTagSingleConstructors.tests
  Untagged.tests
  HigherKind.tests

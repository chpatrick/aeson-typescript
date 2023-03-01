{-# OPTIONS_GHC -fno-warn-orphans #-}

module NoOmitNothingFields (allTests) where

import Data.Aeson as A
import Data.Aeson.TypeScript.TH
import Data.Aeson.TypeScript.Types
import Data.Proxy
import Test.Hspec
import TestBoilerplate

$(testDeclarations "NoOmitNothingFields" (A.defaultOptions {omitNothingFields = False}))

allTests :: SpecWith ()
allTests = describe "NoOmitNothingFields" $ do
  it "encodes as expected" $ do
    let decls = getTypeScriptDeclarations (Proxy :: Proxy Optional)

    decls `shouldBe` [TSTypeAlternatives {
                         typeName = "Optional"
                         , typeGenericVariables = []
                         , alternativeTypes = ["IOptional"]
                         }
                     , TSInterfaceDeclaration {
                         interfaceName = "IOptional"
                         , interfaceGenericVariables = []
                         , interfaceMembers = [TSField False "optionalInt" "number | null" Nothing]
                         }]

  tests

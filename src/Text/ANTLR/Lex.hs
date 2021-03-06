{-# LANGUAGE FlexibleInstances, InstanceSigs, DeriveDataTypeable
    , ScopedTypeVariables #-}
module Text.ANTLR.Lex
  ( tokenize
  , Token(..)
  , tokenName, tokenValue
  ) where
import qualified Text.ANTLR.Grammar as G

import Text.ANTLR.LR (lr1Parse)
import Text.ANTLR.Parser

import qualified Data.Set.Monad as Set

import Data.Set.Monad
  ( fromList, member, (\\), empty, Set(..), toList
  , isSubsetOf, union, insert)
import Data.Data (Data(..), Typeable(..), toConstr, dataTypeConstrs, dataTypeOf)

import Text.ANTLR.Lex.Tokenizer


module Text.Allstar where
-- Set
import Data.Set (Set)
import qualified Data.Set as Set

import Text.Allstar.Types


-- data types

--depends on: adaptivePredict
--parse ::
parse = undefined


--depends on: llPredict
--            sllPredict
--            startState
--adaptivePredict ::
adaptivePredict = undefined


--depends on: closure
--startState ::
startState = undefined



--depends on: target
--            llPredict
--sllPredict ::
sllPredict = undefined

--depends on: move
--            closure
--            getConflictSetsPerLoc
--            getProdSetsPerState
--target ::
target = undefined
-- no dependencies
-- set of all (q,i,Gamma) s.t. p -a> q and (p,i,Gamma) in State d
--move ::
move = undefined


--depends on: move
--            closure
--            getConflictSetsPerLoc
llPredict = undefined

--no fn dependencies
closure :: Set Configuration -> Configuration -> ParserS (Set Configuration)
closure = undefined

-- no dependencies
-- for each p,Gamma: get set of alts {i} from (p,-,Gamma) in D Confs
--getConflictSetsPerLoc ::
getConflictSetsPerLoc = undefined

-- no dependencies
-- for each p return set of alts i from (p,-,-) in D Confs
--getProdSetsPerState ::
getProdSetsPerState = undefined
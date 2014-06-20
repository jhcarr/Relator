--Relator RuleSet1 Module
--Justin Carr
--1/5/2012
--
--These Haskell modules have been created for Justin's own amusement and as a possible reference for anyone interested in learning some basic Haskell.
--Justin Carr does not accept any responsibility for any damage of any kind caused by use of these modules.

module RuleSet1 where

import Environment
import Relator
--import Monad

-- General form for the rule set:
-- [target persons] [relations] [changes]

-- stepGraph rule list = map rule list

makeFriend :: Relation -> Relation -> Relation
makeFriend r1 r2 = Relation (actor r1) (actor r2) Acquaintance Like

makeFoe :: Relation -> Relation -> Relation
makeFoe r1 r2 = Relation (actor r1) (actor r2) Acquaintance Hate

describe n1 n2 = filter (\r -> (matchActor n1 r) && (matchIntended n2 r))

killCharacter c [] = []
killCharacter c (a:as) = if matchActor c a then (killCharacter c as) else a:(killCharacter c as)

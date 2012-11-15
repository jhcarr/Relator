--Relator RuleSet1 Module
--Justin Carr
--1/5/2012
--
--These Haskell modules have been created for Justin's own amusement and as a possible reference for anyone interested in learning some basic Haskell.
--Justin Carr does not accept any responsibility for any damage of any kind caused by use of these modules.

module RuleSet1 where

import Environment
import Monad

-- General form for the rule set:
-- [target persons] [relations] [changes]

stepGraph rule list = fmap rule list
--Relator Environment Module
--Justin Carr
--9/7/2011

module Environment where

import Relator3
import List

rels = []

addRel :: Relation -> [Relation] -> [Relation]
addRel r l
       | elem r l	= l
       | otherwise	= r:l

getCast :: [Relation] -> [Name]
getCast l = nub (map person1 l ++ map person2 l)

-- Function ideas:

publicStatus :: Name -> [Relation] -> [RStance]
publicStatus n l = map stance $ filter (\r -> n == person2 r ) l

suitors :: Name -> [Relation] -> [Name]
suitors n l = map person1 $ filter (\r -> ((n == person2 r) && (stance r == Love))) l

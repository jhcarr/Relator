--Relator Environment Module
--Justin Carr
--9/7/2011

module Environment where

import Relator3
import List

addRel :: Relation -> [Relation] -> [Relation]
addRel r l
       | elem r l	= l
       | otherwise	= r:l

getCast :: [Relation] -> [Name]
getCast l = nub (map person1 l ++ map person2 l)

-- Function ideas:

matchPerson i n r
	    | i == 1 = n == person1 r
	    | i == 2 = n == person2 r
	    | otherwise = undefined

matchStance s r = s == stance r

matchKind k r = k == kind r

opinions :: Name -> [Relation] -> [Relation]
opinions n = filter (matchPerson 1 n)

publicStatus :: Name -> [Relation] -> [RStance]
publicStatus n l = map stance $ filter (matchPerson 2 n) l

suitors :: Name -> [Relation] -> [Name]
suitors n l = map person1 $ filter (\r -> (matchPerson 2 n r && matchStance Love r)) l

-- Examples
-- (x,y, and z are defined in Relator3)

rels = addRel x (addRel y (addRel z []))
--Relator Environment Module
--Justin Carr
--9/7/2011

module Environment where

import Relator3

cast = []
rels = []

addCast :: [Name] -> Name -> [Name]
addCast l n
	| elem n l	= l
	| otherwise 	= n:l


--Implementing Eq instance in Relator3.hs
--addRel :: [Relation] -> Relation -> [Relation]
--addRel l r
--       | elem r l	= l
--       | otherwise	= r:l

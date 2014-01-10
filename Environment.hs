--Relator Environment Module
--Justin Carr
--9/7/2011
--
--These Haskell modules have been created for Justin's own amusement and as a possible reference for anyone interested in learning some basic Haskell.
--Justin Carr does not accept any responsibility for any damage of any kind caused by use of these modules.

module Environment where

import Relator
import Data.List
--import System.IO 

help = "getCast, opinions, publicStatus, suitors"       

addRel :: Relation -> [Relation] -> [Relation]
addRel r l
       | elem r l	= l
       | otherwise	= r:l

getCast :: [Relation] -> [Name]
getCast l = nub (map actor l ++ map intended l)

-- Function ideas:

matchActor a r = a == actor r

matchIntended i r = i == intended r

matchStance s r = s == stance r

matchKind k r = k == kind r

opinions :: Name -> [Relation] -> [Relation]
opinions n = filter (matchActor n)

publicStatus :: Name -> [Relation] -> [RStance]
publicStatus n l = map stance $ filter (matchIntended n) l

suitors :: Name -> [Relation] -> [Name]
suitors n l = map actor $ filter (\r -> (matchIntended n r && matchStance Love r)) l

-- Examples
-- (x,y, and z are defined in Relator3)

rels = addRel x (addRel y (addRel z []))

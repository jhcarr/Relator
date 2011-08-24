-- Justin Carr
-- Wed, Jul 27, 2011

module Relator where

-- imports

-- data types

type Name = String

data RNature = Stranger | Acquainted | Related
     deriving Show

data RStance = Hates | Dislikes | Ambivalent | Likes | Loves
     deriving Show

data Relation = Relation {
     		person :: Name,
     		kind :: RNature,
		stance :: RStance
		}
instance Show Relation where
	 show s = show (stance s) ++ " " ++ person s 
	      	  	   ++ "--" ++ show (kind s)

type Person = (Name, [Relation])

cast = []

matchRelation :: Name -> Relation -> Bool
matchRelation n r = n == person r

matchName :: Name -> Person -> Bool
matchName n1 (n2,_) = n1 == n2

hasRelation :: Person -> Name -> Bool
hasRelation (_,l) n = elem n $ map person l


-- To Do: Typeclass the following 2 functions:

class Castlist c where
names 	 :: [c] -> [Name]
addNew 	 :: [c] -> Name -> [c]
addExist :: [c] -> Person -> [c]

instance Castlist Person where
names = fst.unzip
addNew [] n = (n,[]):[]
addNew l n
	   | elem n $ names l = l
	   | otherwise = (n,[]):l
addExist [] p = p:[]
--addExist l (n,r)
--	     | elem n $ names l = l
--	     | otherwise = (n,r):l

-- examples

x = "Joe"
y = "Frank"
z = "Mimi"
rel1 = Relation {person = y, kind = Stranger, stance = Likes}
rel2 = Relation {person = z, kind = Acquainted, stance = Loves}

p1 = (x, [rel1, rel2])
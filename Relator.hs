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

-- Simplify extract and map function

elemExtract f l = elem True $ map f l

hasRelation :: Name -> Relation -> Bool
hasRelation n r = n == person r

matchesName :: Name -> Person -> Bool
matchesName n1 (n2,_) = n1 == n2

checkRelation :: Person -> Name -> Bool
checkRelation (_,l) n = elemExtract (hasRelation n) l 

addNewChar :: [Person] -> Name -> [Person]
addNewChar [] n = (n,[]):[]
addNewChar l n
	   | elemExtract (matchesName n) l = l
	   | otherwise = (n,[]):l

addExistChar :: [Person] -> Person -> [Person]
addExistChar l (n,_)
	     | elemExtract (matchesName n) l = 

-- examples

x = "Joe"
y = "Frank"
rel1 = Relation {person = y, kind = Stranger, stance = Likes}
list = [rel1]

p1 = (x, list)
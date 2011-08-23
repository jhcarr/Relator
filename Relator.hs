-- Justin Carr
-- Wed, Jul 27, 2011

module Relator where

-- imports

-- data types

type Name	= String
data RNature	= Stranger | Acquainted | Related
     deriving Show
data RStance	= Hates | Dislikes | Ambivalent | Likes | Loves
     deriving Show
data Relation	= Relation {
     		  person :: Name,
     		  kind :: RNature,
		  stance :: RStance
		  }
instance Show Relation where
	 show s = show (stance s) ++ " " ++ person s 
	      	  	   ++ "--" ++ show (kind s)

type Person	= (Name, [Relation])

cast = []

hasRelation :: Name -> Relation -> Bool
hasRelation n r = n == person r

checkRelation :: Person -> Name -> Bool
checkRelation (_,l) n = elem True $ map (hasRelation n) l 


-- examples

x = "Joe"
y = "Frank"
rel1 = Relation {person = y, kind = Stranger, stance = Likes}
list = [rel1]

z = (x, list)
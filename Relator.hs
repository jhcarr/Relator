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

hasRelation :: Person -> Name -> Bool
hasRelation (_,l) n = elem n $ map person l

updPerson :: Person -> Name -> RStance -> Person
updPerson p@(_,[]) _ _ = p
updPerson (n1,r) n2 s = [ if person x==n2 then upd x ]

upd :: Relation -> RStance -> Relation 
upd r s = Relation {person = person r, kind = kind r, stance = s} 

insNew [] n = (n,[]):[]
insNew l n
       | elem n $ fst (unzip l) = l
       | otherwise = (n,[]):l

insExist [] p = p:[]
insExist l (n,r)
	 | elem n $ fst (unzip l) = l
	 | otherwise = (n,r):l

-- examples

x = "Joe"
y = "Frank"
z = "Mimi"
rel1 = Relation {person = y, kind = Stranger, stance = Likes}
rel2 = Relation {person = z, kind = Acquainted, stance = Loves}

p1 = (x, [rel1, rel2])
-- Justin Carr
-- Wed, Jul 27, 2011

module Relator3 where

-- data types

type Name = String

data RNature = Stranger | Acquaintance | Relative
     deriving (Show, Eq)

data RStance = Hate | Dislike | Ambivalent | Like | Love
     deriving (Show, Eq)

data Relation = Relation {
     		person1 :: Name,
		person2 :: Name,
     		kind :: RNature,
		stance :: RStance
		}
instance Show Relation where
	 show s = show (person1 s) ++ " ---> " ++ show (person2 s) ++ "\n"
	      	      	     	      	 ++ "      Nature: " ++ show (kind s) ++ "\n"
					 ++ "      Stance: " ++ show (stance s) ++ "\n"
instance Eq Relation where
	 r1 == r2 = (person1 r1 == person1 r2) &&
	       	    (person2 r1 == person2 r2) &&
		    (kind r1 == kind r2)       &&
		    (stance r1 == stance r2)
	  
-- examples

x = Relation {
    person1 = "Joe",
    person2 = "Mimi",
    kind = Stranger,
    stance = Ambivalent
    }
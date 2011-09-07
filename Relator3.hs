-- Justin Carr
-- Wed, Jul 27, 2011

module Relator3 where

-- data types

type Name = String

data RNature = Stranger | Acquaintance | Relative
     deriving Show

data RStance = Hate | Dislike | Ambivalent | Like | Love
     deriving Show

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

-- To Do: add Eq instance
	  

-- examples

x = Relation {
    person1 = "Joe",
    person2 = "Mimi",
    kind = Stranger,
    stance = Ambivalent
    }
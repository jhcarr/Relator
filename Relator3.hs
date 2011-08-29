-- Justin Carr
-- Wed, Jul 27, 2011

module Relator where

-- imports

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
	 show s
	      | debug = show (person1 s) ++ " ---> " ++ show (person2 s) ++ "\n"
	      	      	     	      	 ++ "      Nature: " ++ show (kind s) ++ "\n"
					 ++ "      Stance: " ++ show (stance s) ++ "\n"
	      | otherwise = show (person1 s) ++ " is a " ++ show (kind s) 
	      	       		      	 ++ " to " ++ show (person2 s) 
				   	 ++ " and feels " ++ show (stance s) ++ " for this person. \n"

cast = []
rels = []
debug = True


-- examples

--Relator Environment Module
--Justin Carr
--9/7/2011
--
--These Haskell modules have been created for Justin's own amusement and as a possible reference for anyone interested in learning some basic Haskell.
--Justin Carr does not accept any responsibility for any damage of any kind caused by use of these modules.

module Relator where

-- data types

type Name = String

data RNature = Stranger | Acquaintance | Relative | Friend | SO
     deriving (Show, Eq)

data RStance = Hate | Dislike | Ambivalent | Like | Love
     deriving (Show, Eq)

data Relation = Relation {
     		actor :: Name,
		intended :: Name,
     		kind :: RNature,
		stance :: RStance
		}
instance Show Relation where
	 show s = show (actor s) ++ " ---> " ++ show (intended s) ++ "\n"
	      	      	     	      	 ++ "      Nature: " ++ show (kind s) ++ "\n"
					 ++ "      Stance: " ++ show (stance s) ++ "\n"
instance Eq Relation where
	 r1 == r2 = (actor r1 == actor r2) &&
	       	    (intended r1 == intended r2) &&
		    (kind r1 == kind r2)       &&
		    (stance r1 == stance r2)
	  
-- examples

x = Relation {
    actor = "Joe",
    intended = "Mimi",
    kind = Stranger,
    stance = Ambivalent
    }
y = Relation {
    actor = "Mimi",
    intended = "Joe",
    kind = Stranger,
    stance = Ambivalent
    }
z = Relation {
    actor = "Bill",
    intended = "Mimi",
    kind = Acquaintance,
    stance = Love
    }

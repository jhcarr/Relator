-- Justin Carr
-- Wed, Aug 25, 2011

module Relator2 where

-- imports

-- data types

type Name = String

data RNature = Stranger | Acquainted | Related
     deriving Show

data RStance = Hates | Dislikes | Ambivalent | Likes | Loves
     deriving Show

data Person = Person {
     	      name :: Name
	      hates :: [Name]
	      dislikes :: [Name]
	      ambivalent :: [Name]
	      likes :: [Name]
	      loves :: [Name]
     	      }

class RChar r where
name :: r -> Name

cast = []

-- examples

x = "Joe"
y = "Frank"
z = "Mimi"

p1 = Person {
     name = x
     likes = [y,z]
     }
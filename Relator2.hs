-- Justin Carr
-- Wed, Aug 25, 2011

module Relator2 where

-- imports

-- data types

type Name = String

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

-- Getters
gHates :: r -> [Name]
gDislikes :: r -> [Name]
gAmbivs :: r -> [Name]
gLikes :: r -> [Name]
gLoves :: r -> [Name]

-- Setters
sHates :: r -> [Name] -> r
sDislikes :: r -> [Name] -> r
sAmbivs :: r -> [Name] -> r
sLikes :: r -> [Name] -> r
sLoves :: r -> [Name] -> r



cast = []

-- examples

x = "Joe"
y = "Frank"
z = "Mimi"

p1 = Person {
     name = x
     likes = [y,z]
     }
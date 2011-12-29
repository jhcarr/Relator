--Relator Environment Module
--Justin Carr
--9/7/2011
--
--These Haskell modules have been created for Justin's own amusement and as a possible reference for anyone interested in learning some basic Haskell.
--Justin Carr does not accept any responsibility for any damage of any kind caused by use of these modules.

module Relator2 where

-- imports

-- data types

type Name = String

data Person = Person {
     	      name :: Name,
	      hates :: [Name],
	      dislikes :: [Name],
	      ambivalent :: [Name],
	      likes :: [Name],
	      loves :: [Name]
     	      }

class RChar r where
charName    :: r -> Name

-- Getters
gHates		:: r -> [Name]
gDislikes 	:: r -> [Name]
gAmbivs 	:: r -> [Name]
gLikes 		:: r -> [Name]
gLoves 		:: r -> [Name]

-- Setters
sHates		:: r -> Name -> r
--sDislikes 	:: r -> Name -> r
--sAmbivs 	:: r -> Name -> r
--sLikes 		:: r -> Name -> r
--sLoves 		:: r -> Name -> r

instance RChar Person where
charName = name

gHates 	   = hates
gDislikes  = dislikes
gAmbivs    = ambivalent
gLikes 	   = likes
gLoves 	   = loves

sHates     =


cast = []

-- examples

x = "Joe"
y = "Frank"
z = "Mimi"

p1 = Person {
     name = x,
     likes = [y,z]
     }
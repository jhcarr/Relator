#Relator

A DSL for modeling changing social networks in Haskell

##What does it do?

Given a starting graph of characters (nodes) and relationships (edges)
representing the social network of characters in a television show,
Relator will predict how the television show ends (by deriving a new graph of
character relationships).

##How does it work?

Relator applies a set of user-defined rules to the starting graph to
derive the new state of the graph.

##What's Inside

1. Boiler plate modules, providing graph features
2. Example "Rule Sets"

##Why social network graphs in Haskell?

In my CS 582 Functional Languages class, my classmates and I were
assigned the task of creating a DSL to model anything we liked. As a
joke, I suggested making a DSL to model the changing interpersonal
relationships in a soap opera. After a laugh, my professor suggested I
flesh out the idea and give it a shot. Even though my friends and I
ultimately decided to work on a different project, the idea stuck with
me and I've always wanted to see whether or not it would actually
work.

module Data.List.Primitive where

-- In Agda 2.2.10 and below, there's no FFI binding for the stdlib
-- List type, so we have to roll our own. This will change.

data #List (X : Set) : Set where
  [] : #List X
  _∷_ : X → #List X → #List X
{-# COMPILED_DATA #List [] [] (:) #-}

module Data.Maybe.Primitive where
{-# IMPORT Data.Maybe #-}

-- In Agda 2.2.10 and below, there's no FFI binding for the stdlib
-- Maybe type, so we have to roll our own. This will change.

data #Maybe (X : Set) : Set where
  just : X → #Maybe X
  nothing : #Maybe X
{-# COMPILED_DATA #Maybe Data.Maybe.Maybe Data.Maybe.Just Data.Maybe.Nothing #-}


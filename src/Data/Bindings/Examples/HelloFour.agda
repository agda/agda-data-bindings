open import IO using ( run ; putStrLn )
open import Data.String using ( _++_ )
open import Data.Natural using ( # ; _+_ ; toString )

module Data.Bindings.Examples.HelloFour where

main = run (putStrLn ("Hello, " ++ toString (#(2) + #(2)) ++ "."))
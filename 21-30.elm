import List
import Html exposing (text)

--21. Insert an element at a given position into a list. Treat the first position as index 1. 
insertAt : Int -> a -> List a -> List a
insertAt n a list = 
    List.take (n-1) list ++ (a :: List.drop (n-1) list)
    
--22. Create a list containing all integers within a given range, inclusively, allow for reverse order
range: Int -> Int -> List Int
range s e = 
    if s > e then
        s :: range (s-1) e
    else if s < e then
        s :: range (s+1) e
    else
        [e]    

-- main = let a = range 8 4 in text (toString a)

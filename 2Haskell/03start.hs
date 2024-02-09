{- 
List Comprehension 
Filter, transform and combine Lists
math { x | x ∈ N}
{ 2x | x ∈ N, x <= 100}
-}

l1 = take 10 [1,2..]
l2 = [ x | x <- [1..10]]
l3 = [ 2 * x | x <- [1..10]]
l4 = [ 2 * x | x <- [1..10], x < 5]
l5 = [ 2 * x | x <- [1..10], 2*x > 5]
l6 = [ 2 * x | x <- [1..10], x `mod` 3 == 1]
l7 = [ x | x <- [10..30], x /= 15, x /= 17, x /= 21 ]
l8 = [ x + y | x <- [1,2,3], y <- [10, 20, 30]]
l8' = [ x - y | x <- [1,2,3], y <- [10, 20, 30]]
l8'' = [ x * y | x <- [1,2,3], y <- [10, 20, 30]]
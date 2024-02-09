{- Lists Ranges -}

l1 = [1..20]
l2 = ['a'..'z']
l3 = [2,4..20]
l4 = [3,6..20]

l5 = [20,19..1]

l6 = [13,26..13*24]
l6' = take 24 [13,26..]

l7 = take 10 ( cycle[1,2,3] )
l8 = take 10 ( cycle "A B C " )

l9 = take 10 (repeat 5)
l10 = replicate 5 10

f1 = [0.1, 0.3 .. 2.05] --izbegavaj float
p :: a
p = p

test :: (Num b, Num a, Eq a) => a -> b -> b
test x y =
    if x == 0
      then 0
      else y

main :: IO()
main = do
  print (test 0 p)

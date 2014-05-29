fRec :: Int -> Int
fRec n
  | n < 3 = n
  | otherwise = f1 + 2 * f2 + 3 * f3
  where
    f1 = fRec $ n - 1
    f2 = fRec $ n - 2
    f3 = fRec $ n - 3

fIter :: Int -> Int
fIter n = f n 2 1 0
  where
    f :: Int -> Int -> Int -> Int -> Int
    f n a b c
      | n == 2 = a
      | n < 2 = n
      | otherwise = f (n - 1) (a + 2*b + 3*c) a b

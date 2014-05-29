pascal :: Int -> Int -> Int
pascal row col
  | col == 1 = 1
  | col == row = 1
  | col > row = error "Number of columns must not exceed rows"
  | otherwise = pascal (row - 1) (col - 1) + pascal (row - 1) col

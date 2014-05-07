cbrt :: Float -> Float
cbrt x = cbrtIter 1 x

cbrtIter :: Float -> Float -> Float
cbrtIter guess x =
  if done
  then guess
  else cbrtIter next x
  where
    next = (x / guess^2 + 2*guess) / 3
    done = abs (guess - next) < guess / 1000

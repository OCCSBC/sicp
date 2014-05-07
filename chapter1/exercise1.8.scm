(define (cube x) (* x x x))

(define (is-good-enough guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (improve y x)
  (/
   (+
    (/ x (* y y))
    (* 2 y))
   3))

(define (cbrt-iter guess x)
  (if (is-good-enough guess x) guess
      (cbrt-iter (improve guess x) x)))

(define (cbrt x)
  (cbrt-iter 1.0 x))

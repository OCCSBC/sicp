; recursive
(define (f-recursive n)
  (if (< n 3) n
      (+
       (* 1 (f-recursive (- n 1)))
       (* 2 (f-recursive (- n 2)))
       (* 3 (f-recursive (- n 3))))))


; iterative
(define (f-iter a b c count)
  (if (< count 1) c
      (f-iter (+ (* 1 a) (* 2 b) (* 3 c)) a b (- count 1))))

(define (f n)
  (f-iter 2 1 0 n))

(f-recursive 0)
(f 0)
(f-recursive 1)
(f 1)
(f-recursive 2)
(f 2)
(f-recursive 3)
(f 3)
(f-recursive 4)
(f 4)
(f-recursive 10)
(f 10)
(f-recursive 11)
(f 11)
(f 31)





;; Ex 1.10

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

; (A 1 10) => 1024
; (A 2 4) => 65536
; (A 3 3) => 65536

; f(n) = 2n
(define (f n) (A 0 n))
(map f (list 1 2 3 4 5))
; g(n) = n^2
(define (g n) (A 1 n))
(map g (list 1 2 3 4 5))
; h(n) = 2^h(n-1)
(define (h n) (A 2 n))
(map h (list 1 2 3 4 5))
; k(n) = 5n^2
(define (k n) (* 5 n n))
(map k (list 1 2 3 4 5))

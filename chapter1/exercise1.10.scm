(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10)
(A 0 (A 1 9))
(A 0 (A 0 (A 1 8)))
; = 2 * 2^9
; = 1024
; 2^y

(A 2 4)
(A 1 (A 2 3))
(A 1 (A 1 (A 2 2)))
(A 1 (A 1 (A 1 (A 2 1))))
(A 1 (A 1 (A 1 2)))
; 2^(2^(2^2))
(A 1 (A 1 (A 0 (A 1 1))))
(A 1 (A 1 (A 0 2)))
(A 1 (A 1 4))
; I'm just going to shortcut the recursion here because I know (A 1 4) = 2^4 = 16
(A 1 16)
; = 2^16
; = 65536
; 2^(2^(2^2))
; 2^^y
; one level higher than exponentiation, if we think of exponentiation as one level higher than multiplication
; see http://en.wikipedia.org/wiki/Knuth%27s_up-arrow_notation
; so basically, x determines the up-arrow degree

(A 3 3)
(A 2 (A 3 2))
(A 2 (A 2 (A 3 1)))
(A 2 (A 2 2))
; 2^^(2^^2)
(A 2 4)
(A 1 16)
; = 65536
; 2^^(2^^2)
; 2^^^y

;; just to be fancy and see if I could do it
(define (generic-series operator base sum term a next b)
  (if (> a b)
      base
      (operator (term a)
         (generic-series operator base sum term (next a) next b))))

(define (sum term a next b)
  (generic-series + 0 0 term a next b))

(define (product term a next b)
  (generic-series * 1 0 term a next b))

(define (inc x) (+ x 1))
(define (identity x) x)

(define (factorial n) 
  (product identity 1 inc n))

(quote factorial-1-2-3-4-5)
(map factorial (list 1 2 3 4 5))

;; ex 1.31

(define (num-term i)
  (cond ((= i 1) 2)
        ((even? i) (+ i 2))
        (#t (num-term (- i 1)))))

(define (denom-term i)
  (cond ((= i 1) 3)
        ((odd? i) (+ i 2))
        (#t (denom-term (- i 1)))))

(map num-term (list 1 2 3 4 5 6 7))
(map denom-term (list 1 2 3 4 5 6 7))

(define (pi-approx n)
  (* 4.0 (/ 
        (product num-term 1 inc n)
        (product denom-term 1 inc n))))

(quote pi-approx-n-100)
(pi-approx 100)
(quote pi-approx-n-10000)
(pi-approx 10000)
(quote pi-approx-n-50000)
(pi-approx 50000)

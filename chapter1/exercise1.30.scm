(define (sum term a next b)
  (define (iter a result)
    (if (= a b)
	(+ result (term b))
	(iter (next a) (+ (term a) result))))
  (iter a 0))

(define (identity x) x)

(define (increment x) (+ x 1))

(sum identity 1 increment 10)
;Value: 55






(define tolerance 0.00001)

(define (close-enough? v1 v2)
  (< (abs (- v1 v2)) tolerance))

(define (fixed-point f first-guess)
  (define (print answer)
    (newline)
    (display "answer is ")
    (display answer))
  (define (try guess)
    (newline)
    (display "guess is ")
    (display guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
	  (print next)
	  (try next))))
  (try first-guess))

(define x^x-is-1000
  (fixed-point (lambda (x) (/ (log 1000) (log x))) (+ 10)))

(define (odd? x)
  (cond ((= (remainder x 2) 1) true) (else false)))

(define (even? x)
  (cond ((= (remainder x 2) 0) true) (else false)))

(define (coeff c n)
  (cond ((= c 0) 1)
	((= c n) 1)
	((odd? c) 4)
	((even? c) 2)))

(define (sumSimpson term a next b c n)
  (if (> a b)
      0
      (+ (* (term a) (coeff c n))
      (sumSimpson term (next a) next b (+ c 1) n))))

(define (integralSimpson f a b n)
  (let ((h (/ (- b a) n)))
    (define (add-dx x) (+ x h))
    (* (sumSimpson f a add-dx b 0 n) (/ h 3))))

(define (cube x) (* x x x))

(integralSimpson cube 0.0 1.0 100)
;Value: .24666666666666687

(integralSimpson cube 0.0 1.0 1000)
;Value: .24966666666666754

(integralSimpson cube 0.0 1.0 10000)
;Value: .2499999999999344








 


























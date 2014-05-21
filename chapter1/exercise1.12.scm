; ------> m
;|  1
;|  1  1
;|  1  2  1
;V  1  3  3  1
;n  1  4  6  4  1
;   1  5  10 10 5  1
;   1  6  15 20 15 6  1

(define (pascal n m)
  (cond ((< m 1) 0)
	((= m 1) 1)
	((= m n) 1)
	((> m n) 0)
	(else (+ (pascal (- n 1) (- m 1)) (pascal (- n 1) m)))))


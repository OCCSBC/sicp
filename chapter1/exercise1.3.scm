(define (min a b c)
  (cond ((and (<= a b) (<= a c)) a)
	((and (<= b c) (<= b a)) b)
	((and (<= c a) (<= c b)) c)))

(define (sq a) (* a a))

(define (sqsum a b c)
  (cond ((= a (min a b c)) (+ (sq b) (sq c)))
	((= b (min a b c)) (+ (sq c) (sq a)))
	((= c (min a b c)) (+ (sq a) (sq b)))))

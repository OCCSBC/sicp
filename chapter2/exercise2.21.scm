(define (square a) (* a a))

(define (square-list1 items)
  (if (null? items)
      (list)
      (cons (square (car items)) (square-list1 (cdr items)))))

(define (square-list2 items)
  (map (lambda (a)(* a a)) items))

(square-list1 (list 1 2 3 4))
(square-list2 (list 1 2 3 4))

          
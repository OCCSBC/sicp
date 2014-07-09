;exercise 2.18
(define (append-list list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append-list (cdr list1) list2))))

(define (append-item list1 item)
  (append-list list1 (list item)))

(define (insert-first list1 item)
  (append-list (list item) list1))


;recursive
(define (reverse-list-r list1)
  (if (null? (cdr list1))
      list1
      (append-item (reverse-list-r (cdr list1)) (car list1))))

(reverse-list-r (list 1 2 3 4 5))


;iterative
(define (reverse-itr list1 list2)
  (if (null? list1)
      list2
      (reverse-itr (cdr list1) (insert-first list2 (car list1)))))
  
(define (reverse-list-i list1)
  (reverse-itr list1 (list)))

(reverse-list-i (list 10 20 30 40 50))

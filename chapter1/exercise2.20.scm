;exercise 2.20
(define (append-list list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append-list (cdr list1) list2))))

(define (append-car list1 item)
  (append-list list1 (list (car item))))

(define (same-parity-itr list1 list2)
  (cond ((null? list1) list2)
        ((null? (cdr list1)) (append-car list2 list1))
        (else (same-parity-itr (cdr (cdr list1)) (append-car list2 list1)))))

(define (same-parity . w)
  (same-parity-itr w (list)))

(same-parity 1 2 3 4 5 6)
(same-parity 1 2 3 4 5 6 7)
(same-parity 1 2)
(same-parity 1)
(same-parity)


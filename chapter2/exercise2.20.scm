;exercise 2.20
(define (append-list list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append-list (cdr list1) list2))))

(define (append-car list1 item)
  (append-list list1 (list (car item))))

(define (is-same-parity a b)
  (= (remainder a 2) (remainder b 2)))

(define (same-parity-itr item0 list1 list2)
  (cond ((null? list1) list2)
        ((is-same-parity item0 (car list1)) (same-parity-itr item0 (cdr list1) (append-car list2 list1)))
        (else (same-parity-itr item0 (cdr list1) list2))))
 
(define (same-parity . w)
  (cond ((null? w) w)
        (else (same-parity-itr (car w) w (list)))))

(same-parity 1 2 3 4 5 6)
(same-parity 1 2 3 4 5 6 7)
(same-parity 1 2)
(same-parity 1 2 3 4 5 7 8 9)
(same-parity 1)
(same-parity 2 3 4 5 6)
(same-parity 2 4 5 6 7)
(same-parity)

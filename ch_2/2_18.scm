; (define (reversing list1)
;     (define (recurse list2 finallist)
;       (if (null? list2) finallist
;         (recurse (cdr list2) (cons  (car list2) finallist))
;         )
;
;       )
;  (recurse list1 (list ))
;   )

(define (reversing list1)
(if (null? list1) (list)
    (append (reversing (cdr list1)) ( list (car list1)))
  )
  )
(reversing (list 1 2 3 4))

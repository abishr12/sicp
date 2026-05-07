(define (lastpair list1)
    (define (recurse l list2)
      (if (null? list2) (list l)
        (recurse (car list2) (cdr list2))
        )
      )
    (recurse (car list1) (cdr list1))
  )


(lastpair (list 1 2 3 4))

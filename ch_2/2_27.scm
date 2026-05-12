
(define (reversing list1)
    (define (recurse list2 finallist)
      (if (null? list2) finallist
        (recurse (cdr list2) (cons  (car list2) finallist))
        )

      )
 (recurse list1 (list ))
  )
(define (deep-reverse list1)
  (define (recurse list2 finallist)
    (cond ((null? list2) finallist)
          ((pair? (car list2)) (recurse (cdr list2) (cons (deep-reverse (car list2)) finallist)))
          (else (recurse (cdr list2) (cons (car list2) finallist)))))
  (recurse list1 (list)))


(define x (list (list 1 2) (list 3 4)))
(reversing x)
(deep-reverse x)

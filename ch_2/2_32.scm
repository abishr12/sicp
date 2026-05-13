(define (subsets s)
  (if (null? s)
      (list(list))
      (let ((rest (subsets (cdr s))))
        (append rest (map (lambda (t)
                            (cons (car s) t)
                            )  rest)))))


(subsets '(1 2 3))

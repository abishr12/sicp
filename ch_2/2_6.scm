
(define (+ m n)
  (define (recuse f x total n)
    (if (= total n) x
      (recuse f (f x) total (+ n 1))
      )
    )
  lambda (f) (
              lambda (x) (recuse f x total 0)
              )
  )

(define (* a b)
  (cond ((= b 0) 0)
        ((even? b) (* (* 2 a) (/ b 2)))
        (else (+ a (* a (- b 1))))))

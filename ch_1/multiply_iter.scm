(define (even? n)
    (= (remainder n 2) 0)
  )

; (define (* a b)
;   (cond ((= b 0) 0)
;         ((even? b) (* (* 2 a) (/ b 2)))
;         (else (+ a (* a (- b 1))))))

(define (multiply_iter a b c)

  (cond ((= b 0) c)
        ((even? b) (multiply_iter (* 2 a) (/ b 2) c))
        (else ( multiply_iter a (- b 1) (+ a c)))
  )
)

(define (multiply a b)
(multiply_iter a b 0)
  )
(multiply 3 4)

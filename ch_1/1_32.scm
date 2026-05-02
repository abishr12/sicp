; (define (accumulate combiner null-value term a next b)
; (if (> a b)
;     null-value
;     (combiner (term a) (accumulate combiner null-value term (next a) next b)))
;     )

(define (accumulate combiner null-value term a next b)
  (define (iter a result)
(if (> a b)
    result
    (iter (next a) (combiner result (term a)))
    )
  )

(iter a null-value)
)

; (define (product term a next b)
;   (if (> a b)
;     1
;     (* (term a) (product term (next a) next b))
;     )
;   )

(define (product term a  next b)
(accumulate * 1 term a next b)
  )

(define (factorial a)
  (define (identity x) x)
  (define (next x) (+ x 1))
  (product identity 1 next a)
  )


(factorial 4) 
(factorial 6) 


(define (sum term a  next b)
(accumulate + 0 term a next b)
  )


(define (sum-cubes a b)
(define (inc n) (+ n 1))
(define (cube x) (* x x x))
(sum cube a inc b)
  )

(sum-cubes 1 10)

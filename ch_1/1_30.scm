
(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) (sum term (next a) next b))
    )
  )

(define (sum term a next b)
    (define (iter a result)
                
      (if (> a b)
        result
        (iter (next a) (+ result (term a)))
        )
      )
    (iter a  0)
  )

(define (coeff k n)
  (cond ((= k 0) 1)
        ((= k n) 1)
        (( = (remainder k 2) 1) 4)
        (else 2)
        )
  )

(define (calc-h b a n)
  ( /  (- b a) n)
 )

(define (cube x)
  (* x x x)
  )

(define (simpson-rule f a b n)
  (define h 
  ( /  (- b a) n)
)
  (define (next k) (+ k 1))
  (define (term k) ( * (coeff k n) (f (+ a (* k h)))))
  (* (/ h 3) (sum term 0 next n))
  )

 (simpson-rule cube 0 1 100)
 (simpson-rule cube 0 1 1000)

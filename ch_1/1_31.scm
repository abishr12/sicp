
(define (product term a next b)
  (if (> a b)
    1
    (* (term a) (product term (next a) next b))
    )
  )

(define (factorial a)
  (define (identity x) x)
  (define (next x) (+ x 1))
  (product identity 1 next a)
  )


(factorial 4) 
(factorial 6) 

(define (wallis n)

  (define (numerate k) (+ (* 2 (quotient k 2)) 2))
  (define (denominate k) (+ (* 2 (quotient (+ k 1) 2)) 1))
  (define (next k) (+ k 1)  )

  (* 4 (/ (product numerate 1 next n) (product denominate 1 next n) ))
  )

(exact->inexact (wallis 100))
(exact->inexact (wallis 1000))



(define (product-iter term a next b)
    (define (iter a result)
                
      (if (> a b)
        result
        (iter (next a) (* result (term a)))
        )
      )
    (iter a  1)
  )


(define (factorial-iter a)
  (define (identity x) x)
  (define (next x) (+ x 1))
  (product-iter identity 1 next a)
  )

(factorial-iter 4)

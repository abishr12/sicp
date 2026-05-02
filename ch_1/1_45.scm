(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (average-damp f)
  (lambda (x) (/ (+ x (f x)) 2)))



(define dx 0.000001)

(define (compose f g) 
  (lambda (x) (f(g x)))
)

(define (repeated f n)
  (if (= n 1) 
    f 
  (compose (repeated f (- n 1) ) f)
    )
  )

( define (dampening n)
(lambda (x) ((repeated average-damp (quotient n 2)) x))
 )


(define (nth-root x n)
  (fixed-point (dampening n (lambda (y) (/ x (expt y (- n 1)))) )
               1.0))

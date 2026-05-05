
(define (make-rat n d)
  (define a (if (> 0 d) (* -1 n) n))
  (define b (if (> 0 d) (* -1 d) d))
 (let ((g (gcd a b) ))
   (cons (/ a g) (/ b g))
   )
  )


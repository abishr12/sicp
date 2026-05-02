(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
  
    
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))


(define (iterative-improve good-enough? improve)
  (define (loop guess)
    (if (good-enough? guess)
        guess
        (loop (improve guess))))
  loop)

(define (sqrt x)
  ((iterative-improve
      (lambda (guess) (< (abs (- (square guess) x)) 0.001))
      (lambda (guess) (average guess (/ x guess))))
   1.0))
(sqrt 4.0)

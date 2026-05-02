
(define (cont-frac n d k)
  (define (recurse i)
    (if (= i k)
      (/ (n i ) (d i))
(/ (n i) (+ (d i) (recurse (+ i 1))))
        ))
  (recurse 1))


(define (tan-cf x k)
  (cont-frac (lambda (i) (if (= i 1) x (- (* x x))))
             (lambda (i) (- (* 2 i) 1))
             k))

(define (cont-frac n d k)
  (define (recurse i)
    (if (= i k)
      (/ (n i ) (d i))
(/ (n i) (+ (d i) (recurse (+ i 1))))
        ))
  (recurse 1))


(define (cont-frac-iter n d i acc)
  (if (= i 0)
      acc
      (cont-frac-iter n d (- i 1) (/ (n i) (+ (d i) acc)))))

(cont-frac-iter (lambda (i) 1.0)
           (lambda (i) 1.0)
        100 0 )





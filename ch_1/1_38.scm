
(define (cont-frac n d k)
  (define (recurse i)
    (if (= i k)
      (/ (n i ) (d i))
(/ (n i) (+ (d i) (recurse (+ i 1))))
        ))
  (recurse 1))


(define (euler-d i)
  (if (= (remainder (- i 2) 3) 0)
    (* 2 (/ (+ i 1) 3))  
    1)
  )

(define (approx-e k)
  (+ 2 (cont-frac (lambda (i) 1.0)
                       euler-d
                       k
                       ))
  )

(approx-e 10)

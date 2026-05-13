(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))
(define (even-fibs n)  (define (next k)  (if (> k n)  (list)  (let ((f (fib k)))  (if (even? f)  (cons f (next (+ k 1)))  (next (+ k 1))))))  (next 0)) 


(
 even-fibs 6
 )

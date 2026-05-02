(define (smallest-divisor n)
  (find-divisor n 2)
  )

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (let ((half (expmod base (/ exp 2) m)))
           (cond ((and (= (remainder (square half) m) 1)
                       (not (= half 1))
                       (not (= half (- m 1)))) 0)
                 (else (remainder (square half) m)))))
        (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a)
    )
  (try-it (+ 1 (random (- n 1))))
  )

(define (miller-rabin-test n)
  (define (try-it a)
    (define result (expmod a (- n 1) n))
    (cond ((= result 1) true)
          (else false)))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
         (cond ((= times 0) true)
            ((fermat-test n) (fast-prime? n (- times 1)))
            (else false)
               )
         )

(define (next-divisor n)
  (cond ((= n 2) 3)
        (else (+ n 2))    
        )
  )
(define (find-divisor n test-divisor)
  (cond ((> (* test-divisor test-divisor) n) n) 
        (( = (remainder n test-divisor) 0) test-divisor)
        ( else (find-divisor n (next-divisor test-divisor))))
  )
; (define (find-divisor n test-divisor)
;   (cond ((> (* test-divisor test-divisor) n) n) 
;         (( = (remainder n test-divisor) 0) test-divisor)
;         ( else (find-divisor n (+ test-divisor 1))))
;   )

; (smallest-divisor 99)
; (smallest-divisor 199)
; (smallest-divisor 1999)


(define (prime? n)
  (= n (smallest-divisor n))
  )


(define (timed-prime-test n )
  (newline)
  (display n )
  (start-prime-test n (runtime) )
  )

(define (start-prime-test n start-time)
  (if (fast-prime? n 10)
    (report-prime (- (runtime) start-time))
    )
  )

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time)
  )

(define (search-for-primes n count)
  (cond ((= count 3) (display "done"))
        ((prime? n) (begin
                      (timed-prime-test n)
                      (search-for-primes (+ n 1) (+ count 1))))
        (else (search-for-primes (+ n 1) count))))

(define (carmichael-test n)
  (define (test-all a)
    (cond ((= a n) #t)  ; tested all a < n, all passed
          ((= (expmod a n n) a) (test-all (+ a 1)))  ; this a passes, try next
          (else #f)))  ; found an a that fails
  (test-all 1))

(carmichael-test 561)
(carmichael-test 1105)
(carmichael-test 1729)
(carmichael-test 2465)
; (search-for-primes 1000000000 0)
; (search-for-primes 10000000000 0)
; (search-for-primes 100000000000 0)
; (search-for-primes 1000000000000 0)

(carmichael-test 7)
(carmichael-test 13)
(carmichael-test 17)
(carmichael-test 561)
(carmichael-test 1729)


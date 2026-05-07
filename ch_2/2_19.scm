(define (no-more? list1)
  (null? list1)
  )

(define (first-denomination list1)
  (car list1)
  )

(define (except-first-denomination list1)
    (cdr list1)
  )
(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination coin-values))
            (cc (- amount
                   (first-denomination coin-values))
                coin-values)))))


(cc 100 (list 1 5 10 25 50))
(cc 100 (list 50 25 10 5 1))

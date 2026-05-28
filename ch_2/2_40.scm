(define (prime-sum-pairs n)
  (map make-pair-sum
       (filter prime-sum?
               (flatmap
                (unique-pairs n)
                (enumerate-interval 1 n)))))

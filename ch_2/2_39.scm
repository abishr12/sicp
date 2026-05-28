(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))

(define (fold-right op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (fold-right op initial (cdr sequence)))))

(define (reversing seq)
    (fold-left (lambda (x y) 
                    (cons y x)
                  ) (list) seq)
  )

(define (reversin seq)
    (fold-right (lambda (x y)
                    (append y (list x))
                  ) ( list) seq)
  )
 reversing( list 1 2 3)
 )

(
 reversin (list 1 2 3)
 )

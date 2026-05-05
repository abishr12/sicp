(define (make-interval a b) (cons a b))
(define (upper-bound p) (cdr p))
(define (lower-bound p) (car p))

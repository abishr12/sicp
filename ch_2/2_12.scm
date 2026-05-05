
(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

(define (make-center-percent c p)
  (define num (* ( / p 100) c))
  (make-interval ( - c  num) (+ c  num))
  )

(define (percent i)
    (* (/ (width i) (center i)) 100)
  )


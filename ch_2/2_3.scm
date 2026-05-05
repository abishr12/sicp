
(define (make-point x y)
    (cons x y)
  )
(define (x-point point)
    (car point)
)

(define (y-point point)
    (cdr point)
)


(define (make-segment p1 p2)
    (cons p1 p2)
  )

(define (start-segment segment)
    (car segment)
)

(define (end-segment segment)
    (cdr segment)
)

(define (midpoint-segment segment)
  (make-point (/ (+ (x-point (start-segment segment)) (x-point (end-segment segment))) 2)
              (/ (+ (y-point (start-segment segment)) (y-point (end-segment segment))) 2)))


(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-rectangle p1 p2)
  (cons p1 p2)
  )

(define (height rectangle)
  (abs ( - (x-point (car rectangle)) (x-point (cdr rectangle)) ))
  )

(define (len rectangle)
  (abs ( - (y-point (car rectangle)) (y-point (cdr rectangle)) ))
  )

(define (area-rectangle rectangle)
(* (height rectangle) (len rectangle))
  )


(define (perim-rectangle rectangle)
(* (+ (height rectangle) (len rectangle)) 2)
  )


(define (make-rectangle s1 s2)
  (cons s1 s2)
  )

(define (height rectangle)
  (abs (- (y-point (start-segment (car rectangle))) 
          (y-point (end-segment (car rectangle))))))

(define (len rectangle)
  (abs (- (x-point (start-segment (cdr rectangle))) 
          (x-point (end-segment (cdr rectangle))))))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (maps p sequence)
(accumulate (lambda (x y) (cons (p x) y)) (list) sequence)
  )

(maps square '(1 2 3 4))

(define (appends seq1 seq2)
(accumulate cons seq2 seq1)
  )
(appends '(1 2 3 4) '(4 5 6 7))


(define (lengths sequence)
(accumulate (lambda (_ y) (+ y 1)) 0 sequence)
  )

(lengths '(1 2 3 4))


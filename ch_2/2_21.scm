(define (square-list l)
    (if (null? l) (list)
        (cons (square (car l)) (square-list (cdr l)))
      )
  )

(define (map proc items)  (if (null? items)  (list)  (cons (proc (car items))  (map proc (cdr items))))) 

( define(square-list l)
    (map square l)
  )


(square-list (list 1 2 3 4)) 


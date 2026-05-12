(define (square-tree t)
(cond ((null? t) (list))
    ((not (pair? t)) (* t t))
    (else (cons (square-tree (car t)) (square-tree (cdr t))))
)

  )

(define (square-tree t)
(map (lambda (s)
(if (pair? s) (square-tree s)
(* s s)
  )
       ) t)
  )
(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)) ) 


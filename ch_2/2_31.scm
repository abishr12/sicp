
(define (square-tree t)
(cond ((null? t) (list))
    ((not (pair? t)) (* t t))
    (else (cons (square-tree (car t)) (square-tree (cdr t))))
)

  )

(define (tree-map proc t)
(cond ((null? t) (list))
    ((not (pair? t)) (proc t))
    (else (cons (tree-map proc (car t)) (tree-map proc (cdr t))))
)

  )


(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)) ) 
(tree-map square (list 1 (list 2 (list 3 4) 5) (list 6 7)) ) 

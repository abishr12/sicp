(define (make-mobile left right)  (list left right)) 
(define (make-branch length structure)  (list length structure)) 

(define (left-branch b)
  (car b)
  )

(define (right-branch b)
  (cadr b)
  )


(define (branch-length b)
    (cadr b)
  )


(define (branch-structure b)
    (cdr b)
  )


(define (total-weight b)
  (define (branch-weight b)
    (cond ((number? (branch-structure b)) (branch-structure b))
          (else (total-weight (branch-structure b)))))
  (define l (left-branch b))
  (define r (right-branch b))
  (+ (branch-weight l) (branch-weight r)))


define (balanced? t)
  (define (branch-torque b)
    (* (branch-length b) (total-weight b)))
  (define l (left-branch t))
  (define r (right-branch t))
  (and (= (branch-torque l) (branch-torque r))
       (or (number? (branch-structure l)) (balanced? (branch-structure l)))
       (or (number? (branch-structure r)) (balanced? (branch-structure r)))))




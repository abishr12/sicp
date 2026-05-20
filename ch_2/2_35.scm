(define (count-leaves-n x)  (cond ((null? x) 0)  ((not (pair? x)) 1)  (else (+ (count-leaves (car x))  (count-leaves (cdr x)))))) 

(define (accumulate op initial sequence)  (if (null? sequence)  initial  (op (car sequence)  (accumulate op initial (cdr sequence)))))

(define (count-leaves t)
  (if (not (pair? t))
      1
      (accumulate + 0 (map count-leaves t))))

; A single leaf
(count-leaves 1)
; expected: 1

; A simple flat list
(count-leaves (list 1 2 3))
; expected: 3

; A nested list
(count-leaves (list 1 (list 2 3)))
; expected: 3

; The book's example tree: (cons (list 1 2) (list 3 4))
(count-leaves (cons (list 1 2) (list 3 4)))
; expected: 4

; Deeper nesting
(count-leaves (list (list 1 2) (list 3 (list 4 5))))
; expected: 5

(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cdr (cdr s)))
)


(define (sign num)
  (cond 
  ((< num 0) -1)
  ((= num 0) 0)
  ((> num 0) 1)
  )
)


(define (square x) (* x x))

(define (pow x y)
  (cond
    ((= y 0) 1)
    ((= y 1) x)
    ((= x 0) 0)
    ((= x 1) 1)
    ((even? y) (square (pow x (/ y 2)))) 
    ((odd? y)(* x (square (pow x (/ (- y 1) 2)))))
)
)


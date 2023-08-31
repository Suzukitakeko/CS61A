(define (filter-lst fn lst)
  (if (null? lst)
      '()
      (if (fn (car lst))
          (cons (car lst) (filter-lst fn (cdr lst)))
          (filter-lst fn (cdr lst)))
  )
)

;;; Tests
(define (even? x)
  (= (modulo x 2) 0))
(filter-lst even? '(0 1 1 2 3 5 8))
; expect (0 2 8)


(define (helper lst item)
  (cond 
    ((null? lst) #f)
    ((= item (car lst)) #t)
    
    (else (helper (cdr lst) item))
  )
)

(define (interleave first second)
  (cond
    ((null? first) second)
    ((null? second) first)
    ((helper first (car second)) (interleave first (cdr second)))
    (else (interleave (cons (car second) first) (cdr second)))
  )
)

(interleave (list 1 3 5) (list 2 4 6))
; expect (1 2 3 4 5 6)

(interleave (list 1 3 5) nil)
; expect (1 3 5)

(interleave (list 1 3 5) (list 2 4))
; expect (1 2 3 4 5)


(define (accumulate combiner start n term)
  (if (> n 1)
      (combiner (term n) (accumulate combiner start (- n 1) term))
      (if (= n 1)
          (combiner start (term 1))


      )
  
  )
)



(define (no-repeats lst)
  (if (null? lst)
      '()
      (cons (car lst) (filter-lst (lambda (x) (not (= (car lst) x))) (no-repeats (cdr lst))))
  
  )

)


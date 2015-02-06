;; Exercise 1.11: A function f is defined by the rule that f(n) = n if n < 3 and f(n) = f (n - 1) + 2f (n - 2) + 3f (n - 3) if n >= 3. Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process.

;; Recursive

(define (recursive-f n)
    (cond ((< n 3) n)
        (else (+ (recursive-f (- n 1))
                 (* 2 (recursive-f (- n 2)))
                 (* 3 (recursive-f (- n 3)))))))


;; Iterative

(define (iterative-f n)
    (cond ((< n 3) n)
    (else (iterative-f-helper 0 1 2 3 n))))

(define (iterative-f-helper previous-value-minus-3 previous-value-minus-2 previous-value-minus-1 counter n)
    (cond ((= counter n) (next-value previous-value-minus-3 previous-value-minus-2 previous-value-minus-1))
    (else (iterative-f-helper previous-value-minus-2 previous-value-minus-1 (next-value previous-value-minus-3 previous-value-minus-2 previous-value-minus-1) (+ 1 counter) n))))

(define (next-value previous-value-minus-3 previous-value-minus-2 previous-value-minus-1)
    (+ previous-value-minus-1
       (* 2 previous-value-minus-2)
       (* 3 previous-value-minus-3)))



;; (recursive-f -3)
;; (recursive-f 1)
;; (recursive-f 2)
;; (recursive-f 3)                                 
;; (recursive-f 4)
;; (recursive-f 5)
;; (recursive-f 6)
;; (recursive-f 700)

;; (iterative-f -3)
;; (iterative-f 1)
;; (iterative-f 2)
;; (iterative-f 3)                                 
;; (iterative-f 4)
;; (iterative-f 5)
;; (iterative-f 6)
;; (iterative-f 700)

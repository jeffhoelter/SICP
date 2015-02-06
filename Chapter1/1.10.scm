(define (A x y)
    (cond ((= y 0) 0)
          ((= x 0) (* 2 y))
          ((= y 1) 2)
          (else (A (- x 1) (A x (- y 1))))))


(define (f n) (A 0 n))
;; (f n) computes 2n

(define (g n) (A 1 n))
;; (g n) computes 2 ^ n

(define (h n) (A 2 n))


(define (k n) (* 5 n n))
;; (k n) computes 5n ^ 2.



(A 1 n)
(A 0 (A 1 (- n 1)))

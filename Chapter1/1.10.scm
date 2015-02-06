(define (A x y)
    (cond ((= y 0) 0)
          ((= x 0) (* 2 y))
          ((= y 1) 2)
          (else (A (- x 1) (A x (- y 1))))))


(define (f n) (A 0 n))
;; (f n) computes 2n

(define (g n) (A 1 n))
;; (g 0) computes 0
;; (g > 0) computes 2 ^ n

(define (h n) (A 2 n))
;; (h 0) computes 0
;; (h 1) computes 2
;; (h > 1) computes 2 ^ (h (n - 1))

(define (k n) (* 5 n n))
;; (k n) computes 5n ^ 2.

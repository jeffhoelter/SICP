;; ex 1.3

(define (sum-of-squares x y)
    (+ (square x) (square y)))

(define (sum-square-two-largest a b c)
    (cond ((and (>= a b) (>= b c)) (sum-of-squares a b))
          ((and (>= a b) (< b c)) (sum-of-squares a c))
          (else (sum-of-squares b c))))

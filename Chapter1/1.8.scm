
(define (good-enough?-alt guess old-guess)
      (< (abs (- guess old-guess)) 0.000000001))

(define (newt x y)
    (/ (+ (/ x (square y))
             (* 2 y))
          3))

(define (improve guess x)
       (newt x guess))

(define (cubert-iter guess old-guess x)
      (if (good-enough?-alt guess old-guess)
        guess
        (cubert-iter (improve guess x) guess x)))

(define (cubert x)
    (cubert-iter 1.0 x x))


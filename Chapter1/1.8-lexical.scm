;; Same cubert but with internal definitions and lexical scoping.

(define (cubert x)
    (define (good-enough?-alt guess old-guess)
          (< (abs (- guess old-guess)) 0.000000001))

    (define (newt y)
        (/ (+ (/ x (square y))
                 (* 2 y))
              3))

    (define (improve guess)
           (newt guess))

    (define (cubert-iter guess old-guess)
          (if (good-enough?-alt guess old-guess)
            guess
            (cubert-iter (improve guess) guess)))
    
    (cubert-iter 1.0 2.0))

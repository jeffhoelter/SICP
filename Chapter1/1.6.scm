(define (new-if predicate then-clause else-clause)
          (cond (predicate then-clause)
                         (else else-clause)))

(define (good-enough? guess x)
       (< (abs (- (square guess) x)) 0.001))

(define (average x y)
       (/ (+ x y) 2))
 
(define (improve guess x)
       (average guess (/ x guess)))

(define (sqrt-iter-old guess x)
      (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (sqrt-iter guess x)
      (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (sqrt x)
      (sqrt-iter 1.0 x))


;; Because Scheme is an applicative-order, it wants to evaluate the full expression before it starts evaluating the result. Therefore it indefinitely expands the new-if consequent AND alternative, Because the alternative is recursive, it never completes until actual values are used. Therefore this expression never completes. This is why if needs to be a special form, so it can delay evaluation until necessary.


;; This works in Haskell because Haskell is does normal-order evaluation/lazy evaluation. As a bonus Haskell also handles the (1/0) expression cleanly as well.

try :: Float -> Float -> Float   
try a b
    | a == 0 = 1
    | otherwise = b

*Main> try 0 (1 / 0)
1.0
*Main> try 1 (1 / 0)
Infinity

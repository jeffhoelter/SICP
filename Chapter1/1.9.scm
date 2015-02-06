(define (inc a)
    (+ a 1))

(define (dec a)
    (- a 1))


(define (+ a b)
    (if (= a 0) b (inc (+ (dec a) b))))


(+ 4 5)
(inc (+ (dec 4) 5)
(inc (inc (+ (dec 3) 5)
(inc (inc (inc (+ (dec 2) 5)
(inc (inc (inc (inc (+ (dec 1) 5)
(inc (inc (inc (inc (+ 0 5)
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9


;; This process is a linear recursive process because it builds up a chain of deferred operations (inc) and then contraction occurs as the operations are finally performed.

(define (+ a b)
    (if (= a 0) b (+ (dec a) (inc b))))


(+ 4 5)
(+ (dec 4) (inc 5))
(+ (dec 3) (inc 6))
(+ (dec 2) (inc 7))
(+ (dec 1) (inc 8)) ;; (+ 0 9)
9


;; This process is a linear iterative process as it maintains a fixed state it needs each time through and does not grow and shrink. It also maintains a fixed rule that describes how the process moves from state to state (and a test for how it ends).








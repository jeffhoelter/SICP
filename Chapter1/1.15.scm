(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))
    (define (sine angle)
      (if (not (> (abs angle) 0.1))
         angle
         (p (sine (/ angle 3.0)))))


(sine 12.15)
(p (sine 4.05))
(p (p (sine 1.35))
(p (p (p (sine 0.45)))
(p (p (p (p (sine 0.15))))
(p (p (p (p (p (sine 0.05)))))


;; a) There are 5 calls to p for (sine 12.15)

;; b) While this procedure is recursive, it only makes a single call to itself so it is fairly straightforward. Additional calls to p only occur with multiples of 3 (due to the division by 3 before the recursive call to p) therefore both the space and number of steps is O(log n).












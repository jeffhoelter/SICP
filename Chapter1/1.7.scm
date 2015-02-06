
(define (good-enough? guess x)
       (< (abs (- (square guess) x)) 0.001))


;; An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration to the next and to stop when the change is a very small fraction of the guess. 
(define (good-enough?-alt guess old-guess)
      (< (abs (- guess old-guess)) 0.001))


(define (average x y)
       (/ (+ x y) 2))
 
(define (improve guess x)
       (average guess (/ x guess)))

(define (sqrt-iter guess old-guess x)
      (if (good-enough?-alt guess old-guess)
        guess
        (sqrt-iter (improve guess x) guess x)))

(define (sqrt x)
      (sqrt-iter 1.0 x x))



;; Because of the limited precision of good-enough?, the answer produced for small numbers is not very accurate - basically it quits before it does enough evaluations to be close to the right answer.

;; Furthermore, because of the limited precision of the very large floating point numbers used in improve, average, etc, the precision lost when the numbers get so big and they can never have enough tolerance to reach our desired tolerance of .001. 

;; Examples of failure:
> (square (sqrt .001))
.0017011851721075596

> (square (sqrt 10000000))
9999999.999999998

> (square (sqrt 1000000000))
1000000000.0000161

;; After implementing good-enough?-alt the results are better, especially for numbers under 1.

(square (sqrt .001))                      
.0010000003699243661
> (square (sqrt .001))
.0010000003699243661
> (square (sqrt 10000000))
9999999.999999998
> (square (sqrt 1000000000))
999999999.9999999
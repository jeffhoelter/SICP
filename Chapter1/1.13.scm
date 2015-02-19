
Fib(n)
 | 0 if n=0
 | 1 if n=1
 | otherwise: Fib(n - 1) + Fib(n - 2)




;; Exercise 1.13: Prove that Fib(n) is the closest integer to 'n/ 5, where ' = (1 + p5)/2. Hint: Let √ = (1 ° p5)/2. Use induction and the definition of the Fibonacci numbers (see Section 1.2.2) to prove that Fib(n) = ('n ° √n)/p5.

(define phi
   (/ (+ 1 (sqrt 5) 2)))

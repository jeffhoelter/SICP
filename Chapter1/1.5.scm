;; Exercise 1.5: Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:
(define (p) (p))
(define (test x y)
    (if (= x 0) 0 y))

;; Then he evaluates the expression
(test 0 (p))

;; What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What behavior will he observe with an interpreter that uses normal-order evaluation? Explain your answer. (Assume that the evaluation rule for the special form if is the same whether the interpreter is using normal or applicative order: The predicate expression is evaluated first, and the result determines whether to evaluate the consequent or the alternative expression.)

;; If an interpreter that uses applicative-order is used, this expression will never terminate because immediation it will evaluate the arguments immediately when the procedure is applied. There it will indefintely use the definition of (p) to substitute its value. Only when it gets to primitive values would it start perform the evaluation, but that never happens because the substitution continues indefinitely. On the other hand, if the interpreter uses normal-order evaluation, it wouldn't substitute the actual value of (p) until it was needed, and in the case of this expression, x = 0 so the result is 0 and the second parameter (y, used in the alternative) is never needed.



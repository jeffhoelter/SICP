;; ex 1.4

(define (a-plus-abs-b a b)
     ((if (> b 0) + -) a b))

;; This behaviour of this procedure is it first checks to see whether b is greater than zero. If b is greater
;; than zero the consequent is the + operator, so a and b are added together. If b is less than zero, the 
;; alternative is the - operator, which results in a minus b (and since b is negative, it is like adding a and |b|).
;; The intersting thing here is that the functions + and - functions can themselves be the result of an if statement.

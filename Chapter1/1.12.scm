
;; depth and position are both indexed starting with 1
;; this does not include any error checking whatsoever

(define (pascal depth position)
    (cond ((= depth 1) 1)
          ((= depth 2) 1)
          ((> depth 2)
              (cond ((= position 1) 1)
                    ((= position depth) 1)
                    (else (+ (pascal (- depth 1) position)
                             (pascal (- depth 1) (- position 1))))))))

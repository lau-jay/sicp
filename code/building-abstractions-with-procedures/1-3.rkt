#lang sicp
;;求3个数里最大的两个数之和

(define (sum a b) (+ a b))

(define (max_two_sum a b c)
  (cond ((and (<= a b) (<= a c)) (sum b c))
        ((and (<= b a) (<= b c)) (sum a c))
        (else (sum a b))
        ))

(max_two_sum 1 4  5)
(max_two_sum 0 -1 0)

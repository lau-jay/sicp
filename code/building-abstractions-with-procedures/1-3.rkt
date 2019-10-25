#lang sicp
;;求3个数里最大的两个数的平方和

(define (sum a b) (+ a b))

(define (square x) (* x x))

(define (max_two_sum a b c)
  (cond ((and (<= a b) (<= a c)) (sum (square b) (square c)))
        ((and (<= b a) (<= b c)) (sum (square a) (square c)))
        (else (sum (square a) (square b)))
        ))

(max_two_sum 1 4  5)
(max_two_sum 0 -1 0)

#lang sicp
(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (square x) (* x x))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))



(define (sqrt x)
  (sqrt-iter 1.0 x))
(sqrt 9)

;;替换之后执行后会死循环
;; new-if是函数，跟之前一样，应用序求值，会求值导致死循环。
;; 而if应该是两个参数是互斥的，一个执行一个就不执行，不应该两个都执行。

